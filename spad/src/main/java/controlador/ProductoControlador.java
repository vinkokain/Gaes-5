package controlador;

import dao.ProductoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Producto;

@WebServlet(name="ProductoControlador", urlPatterns = "/ProductoControlador")
public class ProductoControlador extends HttpServlet {
    String listar = "vistas/listarProducto.jsp";
    String add = "vistas/addProducto.jsp";
    String edit = "vistas/editProducto.jsp";
    Producto p = new Producto();
    ProductoDao dao = new ProductoDao();
            
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductoControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductoControlador at " + request.getContextPath() + "</h1>");
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
            //int id = Integer.parseInt(request.getParameter("cajaId"));
            String nombre = request.getParameter("cajaNombre");
            String desct = request.getParameter("cajaDescripcion");
            String marca = request.getParameter("cajaMarca");
            int precio = Integer.parseInt(request.getParameter("cajaPrecio"));
            int cant = Integer.parseInt(request.getParameter("CajaCant"));
            int categor = Integer.parseInt(request.getParameter("cajaCategoria"));
           // p.setIdPro(id);
            p.setNombrePro(nombre);
            p.setDescripcionPro(desct);
            p.setMarcaPro(marca);
            p.setPrecioPro(precio);
            p.setCantPro(cant);
            p.setIdCategoriaPro(categor);
            dao.add(p);
            acceso = listar;
        } 
        
        else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("editarid", request.getParameter("idPro"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int id = Integer.parseInt(request.getParameter("txtid"));
            String Producto = request.getParameter("txtProducto");
            String Descripcion = request.getParameter("txtDescripcion");
            String Marca = request.getParameter("txtMarca");
            int Precio = Integer.parseInt(request.getParameter("txtPrecio"));
            int Cant = Integer.parseInt(request.getParameter("txtCant"));
            int Categoria = Integer.parseInt(request.getParameter("txtCategoria"));
            
            p.setIdPro(id);
            p.setNombrePro(Producto);
            p.setDescripcionPro(Descripcion);
            p.setMarcaPro(Marca);
            p.setPrecioPro(Precio);
            p.setCantPro(Cant);
            p.setIdCategoriaPro(Categoria);
            dao.edit(p);
            acceso = listar;
        }
        
        
        
        else if (action.equalsIgnoreCase("eliminar")) {
            int idPro = Integer.parseInt(request.getParameter("idPro"));
            p.setIdPro(idPro);
            dao.eliminar(idPro);
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
