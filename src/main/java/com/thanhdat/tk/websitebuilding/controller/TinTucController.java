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

import com.thanhdat.tk.websitebuilding.entity.TinTuc;
import com.thanhdat.tk.websitebuilding.repository.TinTucRepository;
import com.thanhdat.tk.websitebuilding.repository.TinTucRepository;
import com.thanhdat.tk.websitebuilding.service.TinTucService;
import com.thanhdat.tk.websitebuilding.service.TinTucService;
import com.thanhdat.tk.websitebuilding.validator.PhotoUpload;

@Controller
public class TinTucController {

	@Autowired
	private TinTucService tinTucSer;
	@Autowired
	private TinTucRepository tintucRepo;

	public static String uploadDirectory = System.getProperty("user.dir") + "/user-photos";

	@GetMapping("/tintuc/list")
	public String listAllNews(Model model) {
		List<TinTuc> listTinTuc = new ArrayList<>();
		listTinTuc = tintucRepo.findAll();
		model.addAttribute("listTinTuc", listTinTuc);
		return "tintuclist";
	}


	@PostMapping("/tintuc/save")
	public RedirectView createTinTuc(@RequestParam(value = "idTinTuc", defaultValue = "0") int idTinTuc,
			@RequestParam(value = "title") String title, @RequestParam("description") String description,
			@RequestParam("date") Date date, @RequestParam(value = "photo", required = false) MultipartFile photo) throws IOException {
		TinTuc tinTuc;
		if (idTinTuc != 0 && tintucRepo.existsById(idTinTuc)) {
			tinTuc = tinTucSer.getById(idTinTuc);
		} else {
			tinTuc = new TinTuc();
		}

		tinTuc.setTitle(title);
		tinTuc.setDescription(description);
		tinTuc.setDate(date);
		String uploadDir = "user-photos/";
		String originNameFile = photo.getOriginalFilename();
		if (originNameFile != null && !originNameFile.equals("")) {
			String photoName = StringUtils.cleanPath(originNameFile);
			tinTuc.setPhoto(photoName);
			PhotoUpload.savePhoto(uploadDir, photoName, photo);
		}	
		tintucRepo.save(tinTuc);
		return new RedirectView("/tintuc/list", true);
	}

	@GetMapping("/news-save")
	public String formTinTuc(Model model) {
		TinTuc tintuc = new TinTuc();
		model.addAttribute("tintuc", tintuc);
		return "tintucform";
	}

	@GetMapping(value = "tintuc/delete/{idTinTuc}")
	public RedirectView deleteTinTucById(@PathVariable("idTinTuc") Integer idTinTuc) {
		if (tintucRepo.findById(idTinTuc) != null) {
			tintucRepo.deleteById(idTinTuc);
		}
		return new RedirectView("/tintuc/list", true);
	}

	@GetMapping(value = "/tintuc/{id}/edit")
	public String edit(@PathVariable("id") int idTinTuc, Model model) {
		TinTuc tinTuc = tintucRepo.getOne(idTinTuc);
			model.addAttribute("tintuc", tinTuc);
		return "tintucform";
	}

}
