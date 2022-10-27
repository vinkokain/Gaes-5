package dao;

import controlador.VentaCrud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Venta;

public class VentaDao implements VentaCrud{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Venta v = new Venta();
    
    @Override
    public List listar() {
        ArrayList<Venta>list=new ArrayList<>();
        String SQL_SELECT = "SELECT * FROM ventas";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
                Venta ven = new Venta();
                ven.setId(rs.getInt("idVenta"));//TRAIGO NOMBRE COLUMNA idproducto DE LA TBL PRODUCTOS
                ven.setDocUsu(rs.getInt("docUsuario"));
                ven.setIdP(rs.getInt("idproducto"));
                ven.setNombreP(rs.getString("nombreProducto"));
                ven.setCant(rs.getInt("cantidad"));
                ven.setFechaV(rs.getString("fechaVenta"));
                ven.setPrecioProV(rs.getInt("precioProdcuto"));
                ven.setPrecT(rs.getInt("precioTotal"));
                list.add(ven);
            }
        } catch (Exception e) {
            System.out.println("Error Listar Productos" + e.getMessage());
        }
        return list;  
    }

    @Override
    public Venta list(int id) {
        //REALIZO UN CONSULTA POR ID DE LA VENTA
        String SQL_SELECT_ID="SELECT * FROM ventas WHERE idVenta="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT_ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                v.setId(rs.getInt("idVenta"));
                v.setDocUsu(rs.getInt("docUsuario"));
                v.setIdP(rs.getInt("idproducto"));
                v.setNombreP(rs.getString("nombreProducto"));
                v.setCant(rs.getInt("cantidad"));
                v.setFechaV(rs.getString("fechaVenta"));
                v.setPrecioProV(rs.getInt("precioProdcuto"));
                v.setPrecT(rs.getInt("precioTotal"));                
            }
        } catch (Exception e) {
            //System.out.println("Error Listar ID Paciente" + e.getMessage());
        }
        return v;
    }

    @Override
    public boolean add(Venta ven) {
        //METODO REGISTAR o AGREGAR VENTAS
        //"INSERT INTO producto (idproducto, nombre, descripcion, marca, precio, cant, idcategoria ) VALUES ('" + pro.getIdPro()+ "', '" + pro.getNombrePro()+ "', '" + pro.getDescripcionPro()+ "', '" + pro.getMarcaPro()+ "', '" + pro.getPrecioPro()+ "', '" + pro.getCantPro()+ "', '" + pro.getIdCategoriaPro()+ "')";
        //INSERT INTO ventas (idVenta, docUsuario, docCliente, idproducto, nombreProducto, cantidad, fechaVenta, precioProdcuto, precioTotal) VALUES ();
        String SQL_INSERT = "INSERT INTO ventas (docUsuario, idproducto, nombreProducto, cantidad, fechaVenta, precioProdcuto, precioTotal) VALUES ('"+ven.getDocUsu()+"', '"+ven.getIdP()+"', '"+ven.getNombreP()+"', '"+ven.getCant()+"', '"+ ven.getFechaV()+"', '"+ ven.getPrecioProV()+"', '"+ven.getPrecT()+"')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQL_INSERT);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error Registrar venta" + e.getMessage());
        }
        return false;
        //FIN METODO REGISTRAR O AGREGAR CATEGORIAS          
    }

    @Override
    public boolean edit(Venta pro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
