package uam.mx.com.example;

import java.sql.PreparedStatement;
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
                try {
                    if (conexion != null) {
                        conexion.getConexion().close();
                    }
                } catch (SQLException e) {
                    System.err.println(e.getMessage());
                }
            }
        }

        public void getEstudiantesByCurso(String curso) {
            try {
                this.conexion.conectar();
                String query = "SELECT e.nombre, e.apellido, c.nombre as 'nombre del curso' FROM estudiantes e INNER JOIN inscripciones i ON e.id = i.id_estudiante INNER JOIN cursos c ON c.id = i.id_curso WHERE c.nombre = ?";
                PreparedStatement preparedQuery = this.conexion.getConexion().prepareStatement(query);
                preparedQuery.setString(1, curso);
                ResultSet resultado = preparedQuery.executeQuery();

                while (resultado.next()) {
                    String nombre = resultado.getString("nombre");
                    String apellido = resultado.getString("apellido");
                    String nombreCurso = resultado.getString("nombre del curso");
                    System.out.println(nombre + " " + apellido + " - Curso: " + nombreCurso);
                }

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        public void getProfesorByName(String nombre, String apellido) {
            try {
                this.conexion.conectar();
                String query = "SELECT p.nombre, p.apellido, c.nombre as 'nombre del curso' FROM profesores p INNER JOIN cursos c ON c.id_profesor = p.id WHERE p.nombre=? AND p.apellido=?";
                PreparedStatement preparedQuery = this.conexion.getConexion().prepareStatement(query);
                preparedQuery.setString(1, nombre);
                preparedQuery.setString(2, apellido);

                ResultSet resultado = preparedQuery.executeQuery();

                while (resultado.next()) {
                    String nombre1 = resultado.getString("nombre");
                    String apellido1 = resultado.getString("apellido");
                    String nombreCurso = resultado.getString("nombre del curso");
                    System.out.println(nombre1 + " " + apellido1 + " - Curso: " + nombreCurso);
                }

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

