package com.itheima.controller;

import com.itheima.dao.InformationDao;
import com.itheima.po.Information;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class InformationController {
    //注册用户
    @RequestMapping(value = "/addInformation")
    public String addInformation(Information information) throws Exception {
        InformationDao mybatisTest = new InformationDao();
        mybatisTest.addInformation(information);
        return "/findAllIAK";
    }
    @RequestMapping(value = "/bsaddInformation")
    public String bsaddInformation(Information information) throws Exception {
        InformationDao mybatisTest = new InformationDao();
        mybatisTest.bsaddInformation(information);
        return "/findallInformation";
    }
    @RequestMapping(value = "/deleteInformation")
    public String deleteInformation(Integer id) throws Exception {
        InformationDao mybatisTest = new InformationDao();
        mybatisTest.deleteInformation(id);
        return "/findallInformation";
    }
    //更新
    @RequestMapping(value = "/updateInformation")
    public String updateUser(Model modle, Information information) throws Exception {
        InformationDao mybatisTest = new InformationDao();
        mybatisTest.updateInformation(information);
        return "/findallInformation";

    }
    @RequestMapping(value = "/findallInformation")
    public String findalluser(Model model, Integer msg) throws Exception {
        InformationDao mybatisTest = new InformationDao();
        List<Information> informations = mybatisTest.findallinformation();
        model.addAttribute("informations", informations);
        return "allinformation.jsp";

    }
    @RequestMapping(value = "/aupdate")
    public String update(HttpServletRequest request, HttpSession session, Model modle, Integer id, String name) throws Exception {
        modle.addAttribute("k", request.getParameter("uname"));
        return "updateinformation.jsp";
    }
    @RequestMapping(value = "/findInformationByName")
    public String findUserByName(Model model,String uname)throws Exception{
        InformationDao mybatisTest = new InformationDao();
        List<Information> informations =  mybatisTest.findInformationByName(uname);
        model.addAttribute("informations",informations);
        return "findinformationbyname.jsp";

    }
    @RequestMapping("/findAllIAK")
    public String findAllIAK(Information information, Model model)throws Exception{
        InformationDao mybatisTest = new InformationDao();
        List<Information> informations = mybatisTest.findAllIAK(information);
        model.addAttribute("informations",informations);
        return "dd.jsp";
    }
}
