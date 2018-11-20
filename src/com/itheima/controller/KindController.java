package com.itheima.controller;

import com.itheima.dao.KindDao;
import com.itheima.po.Kind;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class KindController {
    //注册用户
    @RequestMapping(value = "/addKind")
    public String addInformation(Kind kind) throws Exception {
        KindDao mybatisTest = new KindDao();
        mybatisTest.addKind(kind);
        return "findallKind";
    }
    @RequestMapping(value = "/deleteKind")
    public String deleteInformation(Integer id) throws Exception {
        KindDao mybatisTest = new KindDao();
        mybatisTest.deleteKind(id);
        return "/findallKind";
    }
    //更新
    @RequestMapping(value = "/updateKind")
    public String updateUser(Model modle, Kind kind) throws Exception {
        KindDao mybatisTest = new KindDao();
        mybatisTest.updateKind(kind);
        return "/findallKind";

    }
    @RequestMapping(value = "/findallKind")
    public String findalluser(Model model, Integer msg) throws Exception {
        KindDao mybatisTest = new KindDao();
        List<Kind> kinds = mybatisTest.findallKind();
        model.addAttribute("kinds", kinds);
        return "allkind.jsp";

    }
    @RequestMapping(value = "/kupdate")
    public String dupdate(HttpServletRequest request, Model modle, Integer id, String plantkind) throws Exception {
        modle.addAttribute("g", request.getParameter("kind_id"));
        return "updatekind.jsp";
    }
    @RequestMapping(value = "/findKindByName")
    public String findKindByName(Model model,String plantkind)throws Exception{
        KindDao mybatisTest = new KindDao();
        List<Kind> kinds =  mybatisTest.findKindByName(plantkind);
        model.addAttribute("kinds",kinds);
        return "findkindbyname.jsp";

    }
}
