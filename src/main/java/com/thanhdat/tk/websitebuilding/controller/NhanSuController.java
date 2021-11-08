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
import org.springframework.web.servlet.view.RedirectView;

import com.thanhdat.tk.websitebuilding.entity.NhanSu;
import com.thanhdat.tk.websitebuilding.entity.NhanSu;
import com.thanhdat.tk.websitebuilding.repository.NhanSuRepository;
import com.thanhdat.tk.websitebuilding.service.NhanSuService;
import com.thanhdat.tk.websitebuilding.service.NhanSuService;
import com.thanhdat.tk.websitebuilding.validator.PhotoUpload;

@Controller
public class NhanSuController {

	@Autowired
	private NhanSuService nhanSuService;
	@Autowired
	private NhanSuRepository nhansuRepo;

	public static String uploadDirectory = System.getProperty("user.dir") + "/user-photos";

	@GetMapping("/nhansu/list")
	public String listAllMenu(Model model) {
		List<NhanSu> listNhanSu = new ArrayList<>();
		listNhanSu = nhansuRepo.findAll();
		model.addAttribute("listNhanSu", listNhanSu);
		return "nhansulist";
	}

	@PostMapping("/nhansu/save")
	public RedirectView createNhanSu(@RequestParam(value = "idNhanSu", defaultValue = "0") int idNhanSu,
			@RequestParam(value = "name") String name,
			@RequestParam("email") String email, @RequestParam("phone") String phone,
			@RequestParam("dateOfBirth") Date dateOfBirth,
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			@RequestParam(value = "position") String position) throws IOException {
		NhanSu nhanSu;
		if (idNhanSu != 0) {
			nhanSu = nhanSuService.getById(idNhanSu);
		} else {
			nhanSu = new NhanSu();
		}

		nhanSu.setName(name);
		nhanSu.setEmail(email);
		nhanSu.setDateOfBirth(dateOfBirth);
		nhanSu.setPhone(phone);
		nhanSu.setPosition(position);
		String uploadDir = "user-photos/";
		String originNameFile = photo.getOriginalFilename();
		if (originNameFile != null && !originNameFile.equals("")) {
			String photoName = StringUtils.cleanPath(originNameFile);
			nhanSu.setPhoto(photoName);
			PhotoUpload.savePhoto(uploadDir, photoName, photo);
		}

		nhansuRepo.save(nhanSu);
		return new RedirectView("/nhansu/list", true);
	}

	@GetMapping("/personnel-save")
	public String formDuan(Model model) {
		NhanSu nhansu = new NhanSu();
		List<NhanSu> listNhanSu = nhansuRepo.findAll();
		for (NhanSu d : listNhanSu) {
			nhansu.setIdNhanSu(d.getIdNhanSu());
		}
		nhansu.setNhansuList(listNhanSu);
		model.addAttribute("nhansu", nhansu);
		return "nhansuform";
	}

	@GetMapping(value = "nhansu/delete/{idNhanSu}")
	public RedirectView deleteMenuById(@PathVariable("idNhanSu") Integer idNhanSu) {
		if (nhansuRepo.findById(idNhanSu) != null) {
			nhansuRepo.deleteById(idNhanSu);
		}
		return new RedirectView("/nhansu/list", true);
	}

	@GetMapping(value = "/nhansu/{id}/edit")
	public String edit(@PathVariable("id") int idNhanSu, Model model) {
		NhanSu nhanSu = nhansuRepo.getOne(idNhanSu);
		model.addAttribute("nhansu", nhanSu);
		// truyền tên ảnh
		return "nhansuform";
	}
}
