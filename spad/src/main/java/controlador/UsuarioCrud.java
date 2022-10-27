package controlador;

import java.util.List;
import modelo.Usuario;


public interface UsuarioCrud {
    public List listar();
    public Usuario list(int docUsu);
    public boolean add(Usuario usu);
    public boolean edit(Usuario usu);
}
