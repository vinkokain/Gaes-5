package controlador;

import java.util.List;
import modelo.Producto;

public interface ProductoCrud {
    public List listar();
    public Producto list(int idPro);
    public boolean add(Producto pro);
    public boolean edit(Producto pro, Integer cat);
    public boolean eliminar(int idPro);    
}
