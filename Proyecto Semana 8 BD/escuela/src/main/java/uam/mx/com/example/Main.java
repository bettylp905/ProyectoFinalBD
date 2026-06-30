package uam.mx.com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
    public static void main(String[] args) {
        Connection conexion = null;

        Statement sentencia = null;
        ResultSet resultado = null;

        try {
            conexion = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/escuela",
                "root",
                "WonderWoman_2006");
            sentencia = conexion.createStatement();
            // Construimos la consulta SQL paso a paso
            String sql = "SELECT estudiantes.id, estudiantes.nombre, estudiantes.apellido " +
                         "FROM estudiantes " +
                         "JOIN inscripciones ON estudiantes.id = inscripciones.id_estudiante " +
                         "JOIN cursos ON inscripciones.id_curso = cursos.id " +
                         "WHERE cursos.nombre = 'Algebra'";
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
            try {
                if (conexion != null) {
                    conexion.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
    }
}
