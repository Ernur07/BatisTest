/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.batistest.domain;

/**
 *
 * @author Acer
 */
public class Slovo {
    
    private Integer id;
    private String descr;
    
    @Override
    public String toString(){
        return descr;
    }

    public Integer getSlovoId() {
        return id;
    }

    public void setSlovoId(Integer slovoId) {
        this.id = slovoId;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }
    
    
    
    
}
