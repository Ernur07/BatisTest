/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.batistest.mappers;

import com.mycompany.batistest.domain.Slovo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 *
 * @author Acer
 */
public interface SlovoMapper {
    @Select("SELECT id AS id, descr as descr FROM slovo WHERE id=#{id}")
    public Slovo getSlovoById(Integer id);
    
    @Update("UPDATE slovo SET descr=#{descr} WHERE id =#{id}")
    void updateSlovo(@Param("descr")String descr, @Param("id")Integer id);
}
