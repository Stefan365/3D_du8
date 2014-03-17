/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package users;

/**
 *
 * @author User
 */
public class Pom {
    private static int pocitadlo = 0;
    
    public static int idGenerator(){
        pocitadlo += 1;
        return pocitadlo;
    };
    
}
