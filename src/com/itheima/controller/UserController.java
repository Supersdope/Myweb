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
            session.setAttribute("a","欢迎你 "+user.getName());
            session.setAttribute("s","0");
            session.setAttribute("w",user.getName());
            return "sindex.jsp";
        }else{
            modle.addAttribute("a","用户名或密码错误，请重新登陆！");
            return "login.jsp";  }

    }

    //注册用户
    @RequestMapping(value = "/addUser")
    public String addUser(User user) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.addUser(user);
        return "login.jsp";
    }
    //后台添加用户
    @RequestMapping(value = "/bsaddUser")
    public String bsaddUser(User user) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.bsaddUser(user);
        return "/findall";
    }
    //删除用户
    @RequestMapping(value = "/deleteUser")
    public String deleteUser(Integer id) throws Exception {
        UserDao mybatisTest = new UserDao();
        mybatisTest.deleteUser(id);
        return "/findalluser";
    }
    //更新用户
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
    //用户名查找
    @RequestMapping(value = "/findUserByName")
    public String findUserByName(Model model,String name)throws Exception{
        UserDao mybatisTest = new UserDao();
        List<User> users =  mybatisTest.findUserByName(name);
        model.addAttribute("users",users);
        return "finduserbyname.jsp";

    }
    //查找所有
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
        session.setAttribute("b","白杨树");
        session.setAttribute("c","id1");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind2")
    public String kind2(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","松柏树");
        session.setAttribute("c","id2");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind3")
    public String kind3(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","沙柳");
        session.setAttribute("c","id3");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind4")
    public String kind4(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","小灌木");
        session.setAttribute("c","id4");
        return "information.jsp";
    }
    @RequestMapping(value = "/kind5")
    public String kind5(Model modle, Integer id,HttpSession session) throws Exception {
        session.setAttribute("b","俊俊树");
        session.setAttribute("c","id5");
        return "information.jsp";
    }

}