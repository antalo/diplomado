
package BaseDatos;

import java.sql.ResultSet;
import java.sql.Statement;

public class persona {
    public String cedula,nombre,apellido,direccion,telefono,email,sexo;
    public persona(){
        
    }
    public boolean buscar(String cedula) throws Exception{
    Statement consulta=null;
    ResultSet rs=null;
    Conectar con =new Conectar();
    consulta = con.conn.createStatement();
    rs= consulta.executeQuery("select * from persona where cedula='"+cedula+"'");
    if(rs.next()){ //si existe el registro
        this.nombre=rs.getString("nombre");
        this.apellido=rs.getString("apellido");
        this.direccion=rs.getString("direccion");
        this.telefono=rs.getString("telefono");
        this.email=rs.getString("email");
        this.sexo=rs.getString("sexo");
        
        return true;
    }else{
        return false;
    }
    }
    public void nuevo(String cedula,String nombre,String apellido,
            String direccion,String telefono,String email, String sexo ) throws Exception{
        Statement consulta=null;
        Conectar con =new Conectar();
        consulta = con.conn.createStatement();
        String sql="insert into persona values('"+cedula+"','"+nombre+"','"
                +apellido+"','"+direccion+"','"+telefono+"','"+email+"','"+sexo+"')";
        
        consulta.executeUpdate(sql);
    }
    public void modificar(String cedula,String nombre,String apellido,
        String direccion,String telefono,String email, String sexo ) throws Exception{
        
        Statement consulta=null;
        Conectar con =new Conectar();
        consulta = con.conn.createStatement();
        String sql="update persona set nombre='"+nombre+"',apellido='"+apellido+"',direccion='"+direccion+"',telefono='"+telefono+"',email='"+email+"',sexo='"+sexo+"'";
        
        consulta.executeUpdate(sql);

    }
    
}
