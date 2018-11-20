package com.itheima.dao;
import com.itheima.po.Kind;
import com.itheima.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class KindDao {
    // 添加
    public void addKind(Kind kind) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.insert("com.itheima.mapper.KindMapper.addKind", kind);
        sqlSession.commit();
        sqlSession.close();
    }
    //删除信息
    public void deleteKind(Integer id) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.delete("com.itheima.mapper.KindMapper.deleteKind", id);
        sqlSession.commit();
        sqlSession.close();
    }
    //更新
    public void updateKind(Kind kind) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.update("com.itheima.mapper.KindMapper.updateKind", kind);
        sqlSession.commit();
        sqlSession.close();
    }
    public List<Kind> findallKind() throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<Kind> kinds = sqlSession.selectList("com.itheima.mapper.KindMapper.findallKind");
        sqlSession.close();
        return kinds;
    }
    public List<Kind> findKindByName(String plantkind) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<Kind> kinds = sqlSession.selectList("com.itheima.mapper.KindMapper.findKindByName", plantkind);
        sqlSession.close();
        return kinds;
    }
}
