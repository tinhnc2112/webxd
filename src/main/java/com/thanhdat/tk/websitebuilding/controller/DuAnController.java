package com.thanhdat.tk.websitebuilding.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.thanhdat.tk.websitebuilding.entity.DuAn;
import com.thanhdat.tk.websitebuilding.repository.DuAnRepository;
import com.thanhdat.tk.websitebuilding.service.DuAnService;
import com.thanhdat.tk.websitebuilding.validator.PhotoUpload;

@Controller
public class DuAnController {

	@Autowired
	private DuAnService duAnService;
	@Autowired
	private DuAnRepository duanRepo;

	public static String uploadDirectory = System.getProperty("user.dir") + "/user-photos";

	@GetMapping("/duan/list")
	public String listAllMenu(Model model) {
		List<DuAn> listDuAn = new ArrayList<>();
		listDuAn = duanRepo.findAll();
		model.addAttribute("listDuAn", listDuAn);
		return "duanlist";
	}

	@PostMapping("/duan/save")
	public RedirectView createDuAn(@RequestParam(value = "idDuAn", defaultValue = "0") int idDuAn,
			@RequestParam(value = "name") String name, @RequestParam("address") String address,
			@RequestParam("endDate") Date endDate, @RequestParam(value = "photo", required = false) MultipartFile photo,
			@RequestParam(value = "description") String description) throws IOException {
		DuAn duAn;
		if (idDuAn != 0 && duanRepo.existsById(idDuAn)) {
			duAn = duAnService.getById(idDuAn);
		} else {
			duAn = new DuAn();
		}

		duAn.setName(name);
		duAn.setAddress(address);
		duAn.setEndDate(endDate);
		duAn.setDescription(description);
		String uploadDir = "user-photos/";
		String originNameFile = photo.getOriginalFilename();
		if (originNameFile != null && !originNameFile.equals("")) {
			String photoName = StringUtils.cleanPath(originNameFile);
			duAn.setPhoto(photoName);
			PhotoUpload.savePhoto(uploadDir, photoName, photo);
		}
		duanRepo.save(duAn);
		return new RedirectView("/duan/list", true);
	}

	@GetMapping("/save")
	public String formDuan(Model model) {
		DuAn duan = new DuAn();
		model.addAttribute("duan", duan);
		return "duanform";
	}

	@GetMapping(value = "duan/delete/{idDuAn}")
	public RedirectView deleteMenuById(@PathVariable("idDuAn") Integer idDuAn) {
		if (duanRepo.findById(idDuAn) != null) {
			duanRepo.deleteById(idDuAn);
		}
		return new RedirectView("/duan/list", true);
	}

	@GetMapping(value = "/duan/{id}/edit")
	public String edit(@PathVariable("id") int idDuAn, Model model) {
		DuAn duAn = duanRepo.getOne(idDuAn);
		model.addAttribute("duan", duAn);
		// truyền tên ảnh )
		return "duanform";
	}
}
