package controlador;

import dao.CategoriaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Categoria;

@WebServlet(name="CategoriaControlador", urlPatterns = "/CategoriaControlador")
public class CategoriaControlador extends HttpServlet {
    String listar = "vistas/listar.jsp";
    String add = "vistas/add.jsp";
    String edit = "vistas/edit.jsp";
    Categoria c = new Categoria();
    CategoriaDao dao = new CategoriaDao();
            
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CategoriaControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CategoriaControlador at " + request.getContextPath() + "</h1>");
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
            int id = Integer.parseInt(request.getParameter("txtid"));
            String nombre = request.getParameter("txtnombre");
            c.setId(id);
            c.setNombre(nombre);
            dao.add(c);
            acceso = listar;
        }  else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("editarid", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int idtxt = Integer.parseInt(request.getParameter("txtid"));
            String nombretxt = request.getParameter("txtnombre");
            c.setId(idtxt);
            c.setNombre(nombretxt);
            dao.edit(c);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            c.setId(id);
            dao.eliminar(id);
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
