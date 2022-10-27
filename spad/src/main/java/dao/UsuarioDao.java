package dao;

import controlador.UsuarioCrud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;


public class UsuarioDao implements UsuarioCrud{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();

   
    @Override
    public List listar() {
        ArrayList<Usuario>list=new ArrayList<>();
        String SQL_SELECT = "select docUsuario,\n" +
"TipoDoc, nombre, apellido, telefono, telefono2, correo, sexo, rolUsuario\n" +
"from usuarios";
        try {
            con = cn.getConnection();
            ps =  con.prepareStatement(SQL_SELECT);
            rs =  ps.executeQuery();
            while (rs.next()) {
                Usuario usu = new Usuario();
                usu.setDocUsu(rs.getInt("docUsuario"));//TRAIGO NOMBRE COLUMNA idproducto DE LA TBL USUARIOS*/
                usu.setTipoDocUsu(rs.getString("tipoDoc"));
                usu.setNombreUsu(rs.getString("nombre"));
                usu.setApellidoUsu(rs.getString("apellido"));
                usu.setTelUnoUsu(rs.getString("telefono"));
                usu.setTelDosUsu(rs.getString("telefono2"));
                usu.setCorreoUsu(rs.getString("correo"));
                usu.setSexoUsu(rs.getString("sexo"));
                usu.setRolUsu(rs.getString("rolUsuario"));
        
                list.add(usu);
            }
        } catch (Exception e) {
            System.out.println("Error Listar Usuarios" + e.getMessage());
        }
        return list;          
    }

    
    @Override
    public Usuario list(int docUsu) {
        //REALIZO UN CONSULTA POR ID DEL PACIENTE
        String SQL_SELECT_ID="SELECT * FROM usuarios WHERE docUsuario="+docUsu;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT_ID);
            rs = ps.executeQuery();
            //idproducto, nombre,  SON LOS ATRIBUTOS DE LA TABLA SQL
            while (rs.next()) {
                u.setDocUsu(rs.getInt("docUsuario"));//TRAIGO NOMBRE COLUMNA idproducto DE LA TBL USUARIOS*/
                u.setTipoDocUsu(rs.getString("tipoDoc"));
                u.setNombreUsu(rs.getString("nombre"));
                u.setApellidoUsu(rs.getString("apellido"));
                u.setTelUnoUsu(rs.getString("telefono"));
                u.setTelDosUsu(rs.getString("telefono2"));
                u.setCorreoUsu(rs.getString("correo"));
                u.setSexoUsu(rs.getString("sexo"));
                u.setRolUsu(rs.getString("rolUsuario"));
                u.setClaveUsu(rs.getString("clave"));   
            }
        } catch (Exception e) {
            System.out.println("Error Listar ID usuarios " + e.getMessage());
        }
        return u;        
    }
    
    @Override
    public boolean add(Usuario u) {
        //METODO REGISTAR o AGREGAR Usuarios
        String SQL_INSERT = "INSERT INTO usuarios (docUsuario, tipoDoc, nombre, apellido, telefono, telefono2, correo, sexo, rolUsuario, clave) VALUES ('" + u.getDocUsu()+ "', '" + u.getTipoDocUsu()+ "', '" + u.getNombreUsu()+ "', '" + u.getApellidoUsu()+ "', '" + u.getTelUnoUsu()+ "', '" + u.getTelDosUsu()+ "', '"+ u.getCorreoUsu()+"', '"+ u.getSexoUsu()+"', '"+ u.getRolUsu()+"', '"+ u.getClaveUsu()+"')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_INSERT);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error Registrar Usuario" + e.getMessage());
        }
        return false;
        //FIN METODO REGISTRAR O AGREGAR USUARIOS       
    }
    
    
     @Override
    public boolean edit(Usuario usu) {
        String SQL_UPDATE = "UPDATE usuarios SET tipoDoc='"+usu.getTipoDocUsu()+"' nombre='"+usu.getNombreUsu()+"', apellido='"+usu.getApellidoUsu()+"', telefono='"+usu.getTelUnoUsu()+"', telefono2='"+usu.getTelDosUsu()+"', correo='"+usu.getCorreoUsu()+"', sexo='"+usu.getSexoUsu()+"', rolUsuario='"+usu.getRolUsu()+"', clave='"+usu.getClaveUsu()+"' WHERE docUsuario ="+usu.getDocUsu();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.executeUpdate();
        } catch (Exception e) {
            //System.out.println("Error Actualizar Usuario" + e.getMessage());
        }
        return false;
    }
    
    
}
