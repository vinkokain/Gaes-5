package dao;

import controlador.CategoriaCrud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Categoria;

public class CategoriaDao implements CategoriaCrud{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Categoria c = new Categoria();
    
    @Override
    public List listar() {
        ArrayList<Categoria>list=new ArrayList<>();
        //String SQL_SELECT="SELECT * FROM categorias";
        String SQL_SELECT = "SELECT idcategoria, nombrecat FROM categoria";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categoria cat = new Categoria();
                cat.setId(rs.getInt("idcategoria"));
                cat.setNombre(rs.getString("nombrecat"));
                list.add(cat);
            }
        } catch (Exception e) {
            System.out.println("Error Listar categorias" + e.getMessage());
        }
        return list;        
    }

    @Override
    public Categoria list(int id) {
        //REALIZO UNA CONSULTA POR ID DE  CATEGORIA
        String SQL_SELECT_ID="SELECT * FROM categoria WHERE idcategoria="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT_ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setId(rs.getInt("idcategoria"));
                c.setNombre(rs.getString("nombrecat"));   
            }
        } catch (Exception e) {
            System.out.println("Error Listar ID categoria" + e.getMessage());
        }
        return c;
    }

    @Override
    public boolean add(Categoria cat) {
        //METODO REGISTAR o AGREGAR CATEGORIAS
        String SQL_INSERT = "INSERT INTO categoria (idcategoria, nombrecat) VALUES ('" + cat.getId()+ "','" + cat.getNombre()+ "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_INSERT);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error Registrar Categorias" + e.getMessage());
        }
        return false;
        //FIN METODO REGISTRAR O AGREGAR CATEGORIAS
    }

    @Override
    public boolean edit(Categoria cat) {
        String SQL_UPDATE = "UPDATE categoria SET nombrecat='"+cat.getNombre()+"' WHERE idcategoria ="+cat.getId();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.executeUpdate();
        } catch (Exception e) {
            //System.out.println("Error Actualizar Pacientes" + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM categoria WHERE idcategoria="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;        
    }
    
}
