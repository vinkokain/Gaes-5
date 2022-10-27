package controlador;

import java.util.List;
import modelo.Venta;

public interface VentaCrud {
    public List listar();
    public Venta list(int id);
    public boolean add(Venta pro);
    public boolean edit(Venta pro);
    public boolean eliminar(int id);     
}
