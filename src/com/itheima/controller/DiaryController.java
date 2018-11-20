package com.itheima.controller;
import com.itheima.dao.DiaryDao;
import com.itheima.po.Diary;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class DiaryController {
    @RequestMapping(value ="/add")
    public String add(HttpServletRequest request, Model modle, String name) throws Exception {
        modle.addAttribute("l", request.getParameter("name"));
        return "add.jsp";
    }
    @RequestMapping(value = "/findnameAndday")
    public String findnameAndday(Model model, Diary diary)throws Exception{
        DiaryDao mybatisTest = new DiaryDao();
        List<Diary> diarys =  mybatisTest.findnameAndday(diary);
        model.addAttribute("diarys",diarys);
        return "prection.jsp";

    }
    @RequestMapping(value ="/addDiary")
    public String addInformation(Diary diary) throws Exception {
        DiaryDao mybatisTest = new DiaryDao();
        System.out.println(diary.getNdiary());
        mybatisTest.addDiary(diary);
        return "prection.jsp";
    }
    @RequestMapping(value = "/alldiary")
    public String findalluser(Model model, Integer msg) throws Exception {
        DiaryDao mybatisTest = new DiaryDao();
        List<Diary> diarys = mybatisTest.allaiary();
        model.addAttribute("diarys", diarys);
        return "alldiary.jsp";

    }
}