package com.thanhdat.tk.websitebuilding.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.thanhdat.tk.websitebuilding.entity.DuAn;
import com.thanhdat.tk.websitebuilding.entity.User;
import com.thanhdat.tk.websitebuilding.repository.DuAnRepository;
import com.thanhdat.tk.websitebuilding.service.SecurityService;
import com.thanhdat.tk.websitebuilding.service.UserService;
import com.thanhdat.tk.websitebuilding.validator.PhotoUpload;
import com.thanhdat.tk.websitebuilding.validator.UserValidator;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private SecurityService securityService;
    @Autowired
    private UserValidator userValidator;
    @Autowired
    private DuAnRepository duAnRepo;
    

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "registration";
    }

    @GetMapping({"/admin"})
    public String admin(Model model) {
        return "admin";
    }

    @PostMapping("/registration")
    public RedirectView registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return new RedirectView("/registration", true);
        }
        userService.save(userForm);
        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());
        return new RedirectView("/admin", true);
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

}
