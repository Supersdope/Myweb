package com.itheima.dao;

import com.itheima.po.Diary;
import com.itheima.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

public class DiaryDao {

    /*添加日记*/
    public void addDiary(Diary diary) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.insert("com.itheima.mapper.DiaryMapper.addDiary", diary);
        sqlSession.commit();
        sqlSession.close();
    }
   /* 根据用户名和日期查找日记*/
   public List<Diary> findnameAndday(Diary diary) throws Exception {
       SqlSession sqlSession = MybatisUtils.getSession();
       List<Diary> diarys = sqlSession.selectList("com.itheima.mapper.DiaryMapper.findnameAndday", diary);
       sqlSession.close();
       return diarys;
   }
    public List<Diary> allaiary() throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<Diary> diarys = sqlSession.selectList("com.itheima.mapper.DiaryMapper.alldiary");
        sqlSession.close();
        return diarys;
    }

}
