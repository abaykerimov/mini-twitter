package com.example.testproject.controller;

import com.example.testproject.domain.Role;
import com.example.testproject.domain.User;
import com.example.testproject.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class RegisterController {

    @Autowired
    private UserRepo userRepo;
    
    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @PostMapping("/register")
    public String addUser(User user, Model model) {
        User userFromDb = userRepo.findByUsername(user.getUsername());
        if (userFromDb != null) {
            model.addAttribute("message", "User exists");
            return "register";
        }
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);
        return "redirect:/login";
    }
}
