package com.itheima.controller;
import java.util.List;
import com.itheima.dao.UserDao;
import com.itheima.po.User;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class UserController {
    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request,Model modle, User user,HttpSession session){
        UserDao mybatisTest = new UserDao();
          User a=mybatisTest.login(user);
        if( a!=null){
            session.setAttribute("a","��ӭ�� "+user.getName());
            session.setAttribute("s","0");
            session.setAttribute("w",user.getName());
            return "sindex.jsp";
        }else{
            modle.addAttribute("a","�û�����������������µ�½��");
            return "login.jsp";  }

    }

    //ע���û�
    @RequestMapping(value = "/addUser")
    public String addUser(User user) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.addUser(user);
        return "login.jsp";
    }
    //��̨����û�
    @RequestMapping(value = "/bsaddUser")
    public String bsaddUser(User user) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.bsaddUser(user);
        return "/findall";
    }
    //ɾ���û�
    @RequestMapping(value = "/deleteUser")
    public String deleteUser(Integer id) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.deleteUser(id);
        return "/findalluser";
    }
    //�����û�
    @RequestMapping(value = "/updateUser")
    public String updateUser(Model modle,User user,String name) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.updateUser(user);
        return "/findalluser";

}
    @RequestMapping(value = "/update")
    public String update(HttpServletRequest request,HttpSession session,Model modle, Integer id,String name) throws Exception {
        modle.addAttribute("p", request.getParameter("name"));
        return "updateuser.jsp";
    }
    //�û�������
    @RequestMapping(value = "/findUserByName")
    public String findUserByName(Model model,String name)throws Exception{
        UserDao mybatisTest = new UserDao();
        List<User> users =  mybatisTest.findUserByName(name);
        model.addAttribute("users",users);
        return "finduserbyname.jsp";

    }
    //��������
    @RequestMapping(value = "/findalluser")
    public String findalluser(Model model, Integer msg) throws Exception {
        UserDao mybatisTest = new UserDao();
        List<User> users = mybatisTest.findalluser();
        model.addAttribute("users", users);
        return "alluser.jsp";

    }
    @RequestMapping(value = "/findall")
    public String findall(Model model, Integer msg) throws Exception {
        UserDao mybatisTest = new UserDao();
        List<User> users = mybatisTest.findall();
        model.addAttribute("users", users);
        return "diary.jsp";

    }

    @RequestMapping(value = "/logout")
    public String logout(Model modle, Integer id,HttpSession session) throws Exception {
        session.invalidate();
        return "index.jsp";
}
    @RequestMapping(value = "/plant")
    public String plant(Model modle, Integer id) throws Exception {
        return "plant.jsp";
    }
    @RequestMapping(value = "/prection")
    public String prection(Model modle, Integer id) throws Exception {
        return "prection.jsp";
    }

    @RequestMapping(value = "/information")
    public String information(Model modle, Integer id) throws Exception {
        return "information.jsp";
    }
    @RequestMapping(value = "/a")
    public String a(Model modle, Integer id,User user) throws Exception {
        return "a.jsp";
    }
    @RequestMapping(value = "/kind1")
    public String kind1(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","������");
        session.setAttribute("c","id1");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind2")
    public String kind2(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","�ɰ���");
        session.setAttribute("c","id2");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind3")
    public String kind3(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","ɳ��");
        session.setAttribute("c","id3");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind4")
    public String kind4(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","С��ľ");
        session.setAttribute("c","id4");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind5")
    public String kind5(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","������");
        session.setAttribute("c","id5");
        return "information.jsp";
    }

}