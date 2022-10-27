package controlador;

import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;


@WebServlet(name = "UsuarioControlador", urlPatterns = {"/UsuarioControlador"})
public class UsuarioControlador extends HttpServlet {
     String listar = "vistas/listarUsuario.jsp";
     String add = "vistas/addUsuario.jsp";
     String edit = "vistas/addUsuario.jsp";
     Usuario u = new Usuario();
     UsuarioDao dao= new UsuarioDao();
             
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuarioControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuarioControlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
            
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            int docUsuario = Integer.parseInt(request.getParameter("usuId"));
            String tipoDocumento = request.getParameter("usuTipDoc");
            String nombre = request.getParameter("usuNombre");
            String apellido = request.getParameter("usuApellido");
            String telefono1 = request.getParameter("usuTel1");
            String telefono2 = request.getParameter("usuTel2");
            String correo = request.getParameter("usuCorreo");
            String sexo = request.getParameter("usuSexo");
            String rolUsuario = request.getParameter("rolUsuario");
            String claveUsuario = request.getParameter("usuClave");
            
            u.setDocUsu(docUsuario);
            u.setTipoDocUsu(tipoDocumento);
            u.setNombreUsu(nombre);
            u.setApellidoUsu(apellido);
            u.setTelUnoUsu(telefono1);
            u.setTelDosUsu(telefono2);
            u.setCorreoUsu(correo);
            u.setSexoUsu(sexo);
            u.setRolUsu(rolUsuario);
            u.setClaveUsu(claveUsuario);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("editarid", request.getParameter("docUsu"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int docUsuario = Integer.parseInt(request.getParameter("usuId"));
            String tipoDocumento = request.getParameter("usuTipDoc");
            String nombre = request.getParameter("usuNombre");
            String apellido = request.getParameter("usuApellido");
            String telefono1 = request.getParameter("usuTel1");
            String telefono2 = request.getParameter("usuTel2");
            String correo = request.getParameter("usuCorreo");
            String sexo = request.getParameter("usuSexo");
            String rolUsuario = request.getParameter("rolUsuario");
            String claveUsuario = request.getParameter("usuClave");
            
            u.setDocUsu(docUsuario);
            u.setTipoDocUsu(tipoDocumento);
            u.setNombreUsu(nombre);
            u.setApellidoUsu(apellido);
            u.setTelUnoUsu(telefono1);
            u.setTelDosUsu(telefono2);
            u.setCorreoUsu(correo);
            u.setSexoUsu(sexo);
            u.setRolUsu(rolUsuario);
            u.setClaveUsu(claveUsuario);
            dao.edit(u);
            acceso = listar;
        }   
                
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
           }
        
         
            
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
