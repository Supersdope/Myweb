package com.itheima.dao;

import com.itheima.po.User;
import com.itheima.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

public class UserDao {

    //注册用户 添加
    public void addUser(User user) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.insert("com.itheima.mapper.UserMapper.addUser", user);
        sqlSession.commit();
        sqlSession.close();
    }
    public User login(User user) {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.selectOne("com.itheima.mapper.UserMapper.login", user);
        sqlSession.commit();
        sqlSession.close();
        return user;
    }
    public void bsaddUser(User user) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.insert("com.itheima.mapper.UserMapper.bsaddUser", user);
        sqlSession.commit();
        sqlSession.close();
    }

    //删除用户
    public void deleteUser(Integer id) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.delete("com.itheima.mapper.UserMapper.deleteUser", id);
        sqlSession.commit();
        sqlSession.close();
    }
    //更新
    public void updateUser(User user) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        sqlSession.update("com.itheima.mapper.UserMapper.updateUser", user);
        sqlSession.commit();
        sqlSession.close();
    }
    public List<User> findalluser() throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        // 4、SqlSession执行映射文件中定义的SQL，并返回映射结果
        List<User> users = sqlSession.selectList("com.itheima.mapper.UserMapper.findalluser");
        // 5、关闭SqlSession
        sqlSession.close();
        return users;
    }
    public List<User> findall() throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<User> users = sqlSession.selectList("com.itheima.mapper.UserMapper.findall");
        sqlSession.close();
        return users;
    }
    public List<User> findUserByName(String name) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSession();
        List<User> users = sqlSession.selectList("com.itheima.mapper.UserMapper.findUserByName", name);
        sqlSession.close();
        return users;
    }


}

