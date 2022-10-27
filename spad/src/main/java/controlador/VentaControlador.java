package controlador;

import dao.VentaDao;
import modelo.Venta;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="VentaControlador", urlPatterns = "/VentaControlador")
public class VentaControlador extends HttpServlet {
    String listar = "vistas/listarVenta.jsp";
    String add = "vistas/addVenta.jsp";
    String edit = "vistas/editVenta.jsp";
    Venta v= new Venta();
    VentaDao dao = new VentaDao();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VentaControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VentaControlador at " + request.getContextPath() + "</h1>");
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
            int idUsu = Integer.parseInt(request.getParameter("cajaIdUsuario"));
            int idPro = Integer.parseInt(request.getParameter("cajaIdProdcuto"));
            String producto = request.getParameter("cajaProducto");
            int cant = Integer.parseInt(request.getParameter("cajaCant"));
            String fecha = request.getParameter("CajaFecha");
            int precio = Integer.parseInt(request.getParameter("cajaPrecio"));
            int total = Integer.parseInt(request.getParameter("CajaTotal"));
            v.setDocUsu(idUsu);
            v.setIdP(idPro);
            v.setNombreP(producto);
            v.setCant(cant);
            v.setFechaV(fecha);
            v.setPrecioProV(precio);
            v.setPrecT(total);
            dao.add(v);
            acceso = listar;
        }  else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("editarid", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int idUsu = Integer.parseInt(request.getParameter("cajaIdUsuario"));
            int idPro = Integer.parseInt(request.getParameter("cajaidProducto"));
            String producto = request.getParameter("cajaProducto");
            int cant = Integer.parseInt(request.getParameter("cajaCant"));
            String fecha = request.getParameter("CajaFecha");
            int precio = Integer.parseInt(request.getParameter("cajaPrecio"));
            int total = Integer.parseInt(request.getParameter("CajaTotal"));
            //v.setIdPro(id);
            v.setDocUsu(idUsu);
            v.setIdP(idPro);
            v.setNombreP(producto);
            v.setCant(cant);
            v.setFechaV(fecha);
            v.setPrecioProV(precio);
            v.setPrecT(total);
            dao.edit(v);
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
