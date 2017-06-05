/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.batistest.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.mycompany.batistest.domain.Slovo;
import com.mycompany.batistest.mappers.SlovoMapper;

public class SlovoService
{



 public Slovo getSlovoById(Integer userId) {
  SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
  try{
  SlovoMapper userMapper = sqlSession.getMapper(SlovoMapper.class);
  return userMapper.getSlovoById(userId);
  }finally{
   sqlSession.close();
  }
 }
    
 
    public void updateSlovo(String slovo, Integer id){
       SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
       try{
            SlovoMapper userMapper = sqlSession.getMapper(SlovoMapper.class);
            userMapper.updateSlovo(slovo, id);
       }finally{
           sqlSession.commit();
   sqlSession.close();
  } 
  }

}