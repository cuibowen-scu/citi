package edu.scdx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by cbw on 2017/8/14.
 */
@Controller
@RequestMapping("/jump")
public class JumpController {
    @RequestMapping("/jumpToHome.do")
    public String jumpToHome(Model model, HttpSession session){
        return "main";
    }
}
