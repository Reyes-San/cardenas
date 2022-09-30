
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Persona;
import Modelo.Plato;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PlatoDAO implements CRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Plato p=new Plato();
    
    
    @Override
    public List listar() {
        ArrayList<Plato>list=new ArrayList<>();
        String sql="select * from plato";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Plato pla=new Plato();
                pla.setid_plato(rs.getInt("id_plato"));
                pla.setprecio(rs.getInt("precio"));
                pla.setnombre(rs.getString("nombre"));
                list.add(pla);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Plato listPlato(int id) {
        String sql="select * from persona where id_plato="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setid_plato(rs.getInt("id_plato"));
                p.setprecio(rs.getInt("precio"));
                p.setnombre(rs.getString("nombre"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean addPlato(Plato pla) {
       //String sql="insert into persona(dni, nombres)values('"+per.getDni()+"','"+per.getNom()+"')";
        try {
            con=cn.getConnection();
            //ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean editPlato(Plato pla) {
        //String sql="update persona set dni='"+per.getDni()+"',nombres='"+per.getNom()+"'where id="+per.getId();
        try {
            con=cn.getConnection();
            //ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminarPlato(int id) {
        String sql="delete from plato where id_plato="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public Persona list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listarPlato() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
