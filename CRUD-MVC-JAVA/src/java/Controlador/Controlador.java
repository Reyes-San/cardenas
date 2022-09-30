
package Controlador;
import Config.Conexion;
import Modelo.Boleta;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;

import Modelo.Plato;
import ModeloDAO.PlatoDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    String edit="vistas/edit.jsp";
    Persona per=new Persona();
    PersonaDAO per_dao=new PersonaDAO();
    
    
    String listarPlatos="vistas/listar_platos.jsp";
    String addPlato="vistas/add_plato.jsp";
    String edit_platos="vistas/edit_platos.jsp";
    Plato pla=new Plato();
    PlatoDAO pla_dao=new PlatoDAO();
    
    String agregarBoleta="vistas/agregar_boleta.jsp";
    String editarBoleta="vistas/editar_boleta.jsp";
    String listarBoletas="vistas/listar_boletas.jsp";
    Boleta bol=new Boleta();
    
    String listarMesa="vistas/listar_mesas.jsp";
    
    String verCarta="vistas/ver_consumo.jsp";
    String seleccionarPlato="vistas/editar_boleta.jsp";
    String crearConsumo="vistas/ver_consumo.jsp";
    String errorPedido="vistas/error_pedido.jsp";
    String aprobadoPedido="vistas/aprobado_pedido.jsp";
    
    
    int id;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String dni=request.getParameter("txtDni");
            String nom=request.getParameter("txtNom");
            per.setDni(dni);
            per.setNom(nom);
            per_dao.add(per);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtid"));
            String dni=request.getParameter("txtDni");
            String nom=request.getParameter("txtNom");
            per.setId(id);
            per.setDni(dni);
            per.setNom(nom);
            per_dao.edit(per);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            per.setId(id);
            per_dao.eliminar(id);
            acceso=listar;
        }
        //PLATOS
        else if(action.equalsIgnoreCase("addPlato")){
            acceso=addPlato;
        }
        else if(action.equalsIgnoreCase("listarPlatos")){
            acceso=listarPlatos;
        }
        else if(action.equalsIgnoreCase("eliminar_plato")){
            id=Integer.parseInt(request.getParameter("id"));
            pla.setid_plato(id);
            pla_dao.eliminarPlato(id);
            acceso=listarPlatos;
        }
        else if(action.equalsIgnoreCase("AgregarPlato"))
        {
            String dni=request.getParameter("txtDni");
            String nom=request.getParameter("txtNom");
            per.setDni(dni);
            per.setNom(nom);
            per_dao.add(per);
            acceso=listar;
        }
        //boletas start
        else if(action.equalsIgnoreCase("listarBoletas")){
            acceso=listarBoletas;
        }
        else if(action.equalsIgnoreCase("eliminarBoleta")){
            id=Integer.parseInt(request.getParameter("id"));
            bol.eliminarBoleta(id);
            acceso=listarBoletas;
        }
        else if(action.equalsIgnoreCase("editarBoleta")){
            request.setAttribute("id",request.getParameter("id"));
            acceso=editarBoleta;
        }
        else if(action.equalsIgnoreCase("actualizarBoleta")){
            id=Integer.parseInt(request.getParameter("txtid"));
            int id_mesa=Integer.parseInt(request.getParameter("txtIdMesa"));
            int id_carta=Integer.parseInt(request.getParameter("txtIdCarta"));
            bol = new Boleta(id, id_mesa, id_carta);
            bol.editarBoleta(bol);
            
            acceso=listarBoletas;
        }
        else if(action.equalsIgnoreCase("AgregarBoleta1")){
            acceso=agregarBoleta;
        }
        else if(action.equalsIgnoreCase("AgregarBoleta")){
            int id_mesa=Integer.parseInt(request.getParameter("txtIdMesa"));
            int id_carta=Integer.parseInt(request.getParameter("txtIdCarta"));
            bol = new Boleta(id, id_mesa, id_carta);
            bol.agregarBoleta(bol);
            acceso=listarBoletas;
        }
        else if(action.equalsIgnoreCase("listarMesa")){
            acceso=listarMesa;
        }
        else if(action.equalsIgnoreCase("verCarta")){
            request.setAttribute("id",request.getParameter("id"));
            acceso=verCarta;
        }
        else if(action.equalsIgnoreCase("realizar pedido")){
            int id = Integer.parseInt(request.getParameter("id"));
            int plato1 = Integer.parseInt(request.getParameter("txtIdPlato1"));
            int cantidad1 = Integer.parseInt(request.getParameter("txtIdCantidad1"));
            int plato2 = Integer.parseInt(request.getParameter("txtIdPlato2"));
            int cantidad2 = Integer.parseInt(request.getParameter("txtIdCantidad2"));
            int plato3 = Integer.parseInt(request.getParameter("txtIdPlato3"));
            int cantidad3 = Integer.parseInt(request.getParameter("txtIdCantidad3"));
            int plato4 = Integer.parseInt(request.getParameter("txtIdPlato4"));
            int cantidad4 = Integer.parseInt(request.getParameter("txtIdCantidad4"));
            int plato5 = Integer.parseInt(request.getParameter("txtIdPlato5"));
            int cantidad5 = Integer.parseInt(request.getParameter("txtIdCantidad5"));
            
            Conexion cn=new Conexion();
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            
            boolean cond0=false;
            boolean cond1=false;
            boolean cond2=false;
            boolean cond3=false;
            boolean cond4=false;
            boolean cond5=false;
            
            if(plato1>0 && cantidad1>0 )
            {
                cond0=true;
                cond1=true;
            }
            if(plato2>0 && cantidad2>0)
            {
                cond0=true;
                cond2=true;
            }
            if(plato3>0 && cantidad3>0)
            {
                cond0=true;
                cond3=true;
            }
            if(plato4>0 && cantidad4>0)
            {
                cond0=true;
                cond4=true;
            }
            if(plato5>0 && cantidad5>0)
            {
                cond0=true;
                cond5=true;
            }
            
            if(cond0==true )
            {
                String sql="INSERT INTO boleta VALUES (null,"+id+","+id+")";
                try {
                    con=cn.getConnection();
                    ps=con.prepareStatement(sql);
                    ps.executeUpdate();
                } catch (Exception e) {
                }

                int id_boleta=0;

                String sql2="select id_boleta from boleta ORDER BY id_boleta DESC LIMIT 1 ";
                try {
                    con=cn.getConnection();
                    ps=con.prepareStatement(sql2);
                    rs=ps.executeQuery();
                    while(rs.next()){
                        id_boleta = rs.getInt("id_boleta");
                    }
                } 
                catch (Exception e) 
                {
                }

                if(cond1==true)
                {
                    String sql3="INSERT INTO consumo VALUES ("+id_boleta+","+plato1+","+cantidad1+")";
                    try {
                        con=cn.getConnection();
                        ps=con.prepareStatement(sql3);
                        ps.executeUpdate();
                    } catch (Exception e) {
                    }
                }
                if(cond2==true)
                {
                    String sql3="INSERT INTO consumo VALUES ("+id_boleta+","+plato2+","+cantidad2+")";
                    try {
                        con=cn.getConnection();
                        ps=con.prepareStatement(sql3);
                        ps.executeUpdate();
                    } catch (Exception e) {
                    }
                }
                if(cond3==true)
                {
                    String sql3="INSERT INTO consumo VALUES ("+id_boleta+","+plato3+","+cantidad3+")";
                    try {
                        con=cn.getConnection();
                        ps=con.prepareStatement(sql3);
                        ps.executeUpdate();
                    } catch (Exception e) {
                    }
                }
                if(cond4==true)
                {
                    String sql3="INSERT INTO consumo VALUES ("+id_boleta+","+plato4+","+cantidad4+")";
                    try {
                        con=cn.getConnection();
                        ps=con.prepareStatement(sql3);
                        ps.executeUpdate();
                    } catch (Exception e) {
                    }
                }
                if(cond5==true)
                {
                    String sql3="INSERT INTO consumo VALUES ("+id_boleta+","+plato5+","+cantidad5+")";
                    try {
                        con=cn.getConnection();
                        ps=con.prepareStatement(sql3);
                        ps.executeUpdate();
                    } catch (Exception e) {
                    }
                }
                
            }
            else
            {
                
            }
            
            
            
            if(cond0==true)
            {
                
                request.setAttribute("id",request.getParameter("id"));
                acceso=aprobadoPedido;
            }
            else
            {
                request.setAttribute("id",request.getParameter("id"));
                acceso=errorPedido;
            }
            
        }
        //boleta end
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
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
