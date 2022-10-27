package dao;

import controlador.ProductoCrud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import modelo.Categoria;
import modelo.Producto;

public class ProductoDao implements ProductoCrud{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p = new Producto();
    
    @Override
    public List listar() {
        ArrayList<Producto>list=new ArrayList<>();
        String SQL_SELECT = "SELECT p.*, c.nombrecat FROM spad.producto p inner join spad.categoria c on c.idcategoria = p.idcategoria";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pro = new Producto();
                pro.setIdPro(rs.getInt("idproducto"));//TRAIGO NOMBRE COLUMNA idproducto DE LA TBL PRODUCTOS
                pro.setNombrePro(rs.getString("nombre"));
                pro.setDescripcionPro(rs.getString("descripcion"));
                pro.setMarcaPro(rs.getString("marca"));
                pro.setPrecioPro(rs.getInt("precio"));
                pro.setCantPro(rs.getInt("cant"));
                pro.setIdCategoriaPro(rs.getInt("idcategoria"));
                pro.setCategoriaProNombre(rs.getString("nombrecat"));
                list.add(pro);
            }
        } catch (Exception e) {
            System.out.println("Error Listar Productos" + e.getMessage());
        }
        return list;          
    }

    @Override
    public Producto list(int idPro) {
        //REALIZO UN CONSULTA POR ID DEL PACIENTE
        String SQL_SELECT_ID="SELECT * FROM producto WHERE idproducto="+idPro;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT_ID);
            rs = ps.executeQuery();
            //idproducto, nombre,  SON LOS ATRIBUTOS DE LA TABLA SQL
            while (rs.next()) {
                p.setIdPro(rs.getInt("idproducto"));
                p.setNombrePro(rs.getString("nombre"));   
                p.setDescripcionPro(rs.getString("descripcion"));   
                p.setMarcaPro(rs.getString("marca"));   
                p.setPrecioPro(rs.getInt("precio"));   
                p.setCantPro(rs.getInt("cant"));   
                p.setIdCategoriaPro(rs.getInt("idcategoria"));   
            }
        } catch (Exception e) {
            System.out.println("Error Listar ID Productos " + e.getMessage());
        }
        return p;        
    }
   
     
        
    
    @Override
    public boolean add(Producto pro) {
        //METODO REGISTAR o AGREGAR PRODUCTOS
        String SQL_INSERT = "INSERT INTO producto (nombre, descripcion, marca, precio, cant, idcategoria ) VALUES ('" + pro.getNombrePro()+ "', '" + pro.getDescripcionPro()+ "', '" + pro.getMarcaPro()+ "', '" + pro.getPrecioPro()+ "', '" + pro.getCantPro()+ "', '" + pro.getIdCategoriaPro()+ "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_INSERT);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error Registrar Productos" + e.getMessage());
        }
        return false;
        //FIN METODO REGISTRAR O AGREGAR PRODUCTOS       
    }

    @Override
    public boolean edit(Producto pro, Integer cat) {
         String SQL_UPDATE = "UPDATE producto SET nombre='"+pro.getNombrePro()+"', descripcion='"+pro.getDescripcionPro()+"', marca='"+pro.getMarcaPro()+"', precio='"+pro.getPrecioPro()+"', cant='"+pro.getCantPro()+"', idcategoria='"+pro.getIdCategoriaPro()+"' WHERE idproducto="+pro.getIdPro();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.executeUpdate();
        } catch (Exception e) {
            //System.out.println("Error Actualizar productos" + e.getMessage());
        }
        return false;      
    }

    @Override
    public boolean eliminar(int idPro) {
        String SQL_DELETE = "DELETE FROM producto WHERE idproducto="+idPro;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_DELETE);
            ps.executeUpdate();
        } catch (Exception e) {
                    }
        return false;             
    }

    public void edit(Producto p) {
        String SQL_UPDATE = "UPDATE producto SET nombre='"+p.getNombrePro()
                +"', descripcion='"+p.getDescripcionPro()+"', marca='"+p.getMarcaPro()
                +"', precio='"+p.getPrecioPro()+"', cant='"+p.getCantPro()+"', idcategoria='"
                +p.getIdCategoriaPro()+"' WHERE idproducto="+p.getIdPro();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.executeUpdate();
        } catch (Exception e) {
            //System.out.println("Error Actualizar productos" + e.getMessage());
        }

    }
    
}
