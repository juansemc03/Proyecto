/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

/**
 *
 * @author Sebastian
 */
public class clsLogin {
    public boolean validarLogin(Models.clsLogin obclsLogin){
     try{
         
         if(obclsLogin.getStEmail(). equals("ceballosmunoz698@gmail.com") &&
                 obclsLogin.getStPassword(). equals("123456"))
             return true;
         else
             return false;
     
     }catch(Exception ex){
     
         throw ex;
     }
    }
}
