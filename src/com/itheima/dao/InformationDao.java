package com.itheima.dao;
import com.itheima.po.Information;
import com.itheima.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class InformationDao {
    //注册用户 添加
    public void addInformation(Information information) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.insert("com.itheima.mapper.InformationMapper.addInformation", information);
        sqlSession.commit();
        sqlSession.close();
    }
    public void bsaddInformation(Information information) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.insert("com.itheima.mapper.InformationMapper.bsaddInformation", information);
        sqlSession.commit();
        sqlSession.close();
    }
    //删除信息
    public void deleteInformation(Integer id) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.delete("com.itheima.mapper.InformationMapper.deleteInformation", id);
        sqlSession.commit();
        sqlSession.close();
    }
    //更新
    public void updateInformation(Information information) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.update("com.itheima.mapper.InformationMapper.updateInformation", information);
        sqlSession.commit();
        sqlSession.close();
    }
    public List<Information> findallinformation() throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<Information> informations = sqlSession.selectList("com.itheima.mapper.InformationMapper.findallinformation");
        sqlSession.close();
        return informations;
    }
    public List<Information> findInformationByName(String uname) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<Information> informations = sqlSession.selectList("com.itheima.mapper.InformationMapper.findInformationByName", uname);
        sqlSession.close();
        return informations;
    }

    public List<Information> findAllIAK(Information information) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<Information> informations = sqlSession.selectList("com.itheima.mapper.InformationMapper.findAllIAK", information);
        sqlSession.close();
        return informations;
    }

}
