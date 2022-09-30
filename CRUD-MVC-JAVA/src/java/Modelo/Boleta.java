
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Boleta {
    int id_boleta;
    int id_mesa;
    int id_carta;

    public Boleta() {
    }
    
    

    public Boleta(int id_boleta, int id_mesa, int id_carta) {
        this.id_boleta = id_boleta;
        this.id_mesa = id_mesa;
        this.id_carta = id_carta;
    }

    public int getId_boleta() {
        return id_boleta;
    }

    public void setId_boleta(int id_boleta) {
        this.id_boleta = id_boleta;
    }

    public int getId_mesa() {
        return id_mesa;
    }

    public void setId_mesa(int id_mesa) {
        this.id_mesa = id_mesa;
    }

    public int getId_carta() {
        return id_carta;
    }

    public void setId_carta(int id_carta) {
        this.id_carta = id_carta;
    }
    
    
    
    public  List list_all_boleta()
    {
        Conexion cn=new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        ArrayList<Boleta> list=new ArrayList<>();
        String sql="select * from boleta";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Boleta boleta =new Boleta(rs.getInt("id_boleta"), rs.getInt("id_mesa"), rs.getInt("id_carta"));
                list.add(boleta);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public boolean eliminarBoleta(int id) {
        
        Conexion cn=new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        String sql="delete from boleta where id_boleta="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    public boolean editarBoleta(Boleta  bol) {
        
        Conexion cn=new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        String sql="update boleta set id_mesa='"+bol.getId_mesa()+"',id_carta='"+bol.getId_carta()+"'where id_boleta="+bol.getId_boleta();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    public Boleta searchBoleta(int id) {
        
        Conexion cn=new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        
        Boleta boleta=new Boleta();
        String sql="select * from boleta where id_boleta="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                boleta = new Boleta(rs.getInt("id_boleta"), rs.getInt("id_mesa"), rs.getInt("id_carta"));
                
            }
        } catch (Exception e) {
        }
        return boleta;
    }
    
    public boolean agregarBoleta(Boleta bol) {
        
        Conexion cn=new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        String sql="INSERT INTO boleta VALUES (null,"+bol.getId_carta()+","+bol.getId_mesa()+")";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
}
