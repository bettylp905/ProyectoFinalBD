package uam.mx.com.example;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ControladorQueries {
    
    private ConexionBD conexion;

    public ControladorQueries(String ip, String port, String db, String user, String password) {
        this.conexion = new ConexionBD(ip, port, db, user, password);
        this.conexion.conectar();
    }
    
    public void exeQuery(String sqlSentence) {
        Statement sentencia = null;
        ResultSet resultado = null;

        try {
            sentencia = conexion.getConexion().createStatement();
            String sql = sqlSentence;
            resultado = sentencia.executeQuery(sql);

            while (resultado.next()) {
                int id = resultado.getInt("id");
                String nombre = resultado.getString("nombre");
                String apellido = resultado.getString("apellido");
                
                System.out.println(id + " - " + nombre + " - " + apellido);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultado != null) {
                    resultado.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
            try {
                if (sentencia != null) {
                    sentencia.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
            conexion.desconectar();
        }
    }
}
