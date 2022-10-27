package controlador;

import java.util.List;
import modelo.Categoria;

public interface CategoriaCrud {
    public List listar();
    public Categoria list(int id);
    public boolean add(Categoria cat);
    public boolean edit(Categoria cat);
    public boolean eliminar(int id);
}
