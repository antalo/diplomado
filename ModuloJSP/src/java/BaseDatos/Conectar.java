/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Marcel
 */
public class Conectar {
    public Connection conn=null;
    public Conectar() throws Exception{
       try {
           Class.forName("com.mysql.jdbc.Driver").newInstance();	
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/diplomado?user=root&password=");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conectar.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
}
