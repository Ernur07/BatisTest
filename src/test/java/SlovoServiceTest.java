/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import com.mycompany.batistest.domain.Slovo;
import com.mycompany.batistest.service.SlovoService;

public class SlovoServiceTest 
{
 private static SlovoService userService;

 @BeforeClass
    public static void setup() 
 {
  userService = new SlovoService();
 }

 @AfterClass
    public static void teardown() 
 {
  userService = null;
 }

    @Test
 public void testGetUserById() 
 {
  Slovo user = userService.getSlovoById(1);
  Assert.assertNotNull(user);
  System.out.println("+");
 }

}
