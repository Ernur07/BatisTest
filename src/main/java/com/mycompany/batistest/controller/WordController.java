/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.batistest.controller;

import com.mycompany.batistest.domain.Slovo;
import com.mycompany.batistest.service.SlovoService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Acer
 */
@Controller
public class WordController {
    private SlovoService userService = new SlovoService();
    
    @RequestMapping(value="/index.htm",method=RequestMethod.GET)
    public String showForm(){
        return "index";
    }
    
    
    @RequestMapping(value="/index.htm", method = RequestMethod.POST)
    public @ResponseBody String changeWord(@RequestBody AjaxMessage name){
        Integer id = Integer.parseInt(name.getId());
        
        if(id==1){
            userService.updateSlovo(name.getName(), 1);   
        }
        Slovo user = userService.getSlovoById(1);
        return "{\"msg\":\""+user.getDescr()+"\"}";
    }  
}
