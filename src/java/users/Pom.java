package users;

/**
 *
 * @author Stefan Veres
 */
public class Pom {
    private static int pocitadlo = 0;
    
    public static int idGenerator(){
        pocitadlo += 1;
        return pocitadlo;
    };
    
}
