package com.itheima.controller;
import com.itheima.po.Administrator;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class AdministratorController {
    @RequestMapping(value = "/Administrator")
    public String Administrator(HttpServletRequest request, Model modle,Administrator administrator , HttpSession session) {
       if(administrator.getAname().equals("admin")&&administrator.getApassword().equals("admin")){
           modle.addAttribute("q",administrator.getAname());
           session.setAttribute("s","0");
           return "homepage.jsp";
       }
        return "login.jsp";
    }
}