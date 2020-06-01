using Empresa.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Empresa.ControladorDatos
{
    public class AccesoTrabajador
    {
        public static bool InsertarTrabajador(Trabajador trabajador)
        {
            bool Estado = false;

            using (SqlConnection ObjConexion = new SqlConnection(Conexion.Cadena_Conexion))
            {
                ObjConexion.Open();
                SqlCommand ObjComando = new SqlCommand();
                SqlTransaction ObjTransaction = null;
                ObjComando.Connection = ObjConexion;
                ObjComando.CommandType = CommandType.Text;
                ObjComando.CommandText = @"INSERT INTO [dbo].[trabajador] ([Nombres],[Apellidos],[Identificacion]
                    ,[Tipo_Identificador_Id],[Salario],Calculo) 
                    VALUES (@Nombres,@Apellidos,@Identificacion,@Tipo_Identificador_Id,@Salario,@Calculo)";

                ObjComando.Parameters.AddWithValue("@Nombres", trabajador.Nombres);
                ObjComando.Parameters.AddWithValue("@Apellidos",trabajador.Apellidos);
                ObjComando.Parameters.AddWithValue("@Identificacion", trabajador.Identificacion);
                ObjComando.Parameters.AddWithValue("@Tipo_Identificador_Id", trabajador.Identificador_Id);
                ObjComando.Parameters.AddWithValue("@Salario", trabajador.Salario);
                ObjComando.Parameters.AddWithValue("@Calculo", trabajador.Calculo);

                ObjTransaction = ObjConexion.BeginTransaction(IsolationLevel.RepeatableRead);
                ObjComando.Transaction = ObjTransaction;

                try
                {
                    int r = ObjComando.ExecuteNonQuery();
                    if(r == 1)
                    {
                        ObjTransaction.Commit();
                        Estado = true;
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
            return Estado;
        }

        //listar trabajador
        public static List<Trabajador> ListarTrabajadores()
        {
            List<Trabajador> ListaTrabajador = new List<Trabajador>();

            using (SqlConnection ObjConexion = new SqlConnection(Conexion.Cadena_Conexion))
            {
                ObjConexion.Open();
                SqlCommand ObjComando = new SqlCommand();
                ObjComando.Connection = ObjConexion;
                ObjComando.CommandType = CommandType.Text;
                ObjComando.CommandText = @"SELECT [Trabajador_Id],[Nombres],[Apellidos],[Identificacion],[Tipo_Identificador_Id],[Salario],Calculo FROM [dbo].[trabajador]";

                var r = ObjComando.ExecuteReader();

                while (r.Read())
                {
                    ListaTrabajador.Add(new Trabajador(r.GetInt32(0), r.GetString(1), r.GetString(2), r.GetInt32(3), r.GetInt32(4), r.GetDecimal(5), r.GetInt32(6)));
                }
            }
            return ListaTrabajador;
        }

        public static List<Trabajador> ListarBuscarTrabajador(int identificacion) {
            
            List<Trabajador> ListaBuscarTrabajador = new List<Trabajador>();

            using (SqlConnection ObjConexion = new SqlConnection(Conexion.Cadena_Conexion)) 
            {
                ObjConexion.Open();
                SqlCommand ObjComando = new SqlCommand();
                ObjComando.Connection = ObjConexion;
                ObjComando.CommandType = CommandType.Text;
                ObjComando.CommandText = @"SELECT [Trabajador_Id],
                                                    [Nombres],
                                                    [Apellidos],
                                                    [Identificacion],
                                                    [Tipo_Identificador_Id],    
                                                    [Salario],
                                                    Calculo
                                        FROM [dbo].[trabajador] 
                                        WHERE [Identificacion] = @Identificacion";

                ObjComando.Parameters.AddWithValue("@Identificacion", identificacion);

                var r = ObjComando.ExecuteReader();

                while (r.Read())
                {
                    ListaBuscarTrabajador.Add(new Trabajador(r.GetInt32(0), r.GetString(1), r.GetString(2), r.GetInt32(3), r.GetInt32(4), r.GetDecimal(5), r.GetInt32(6)));
                }
            }

            return ListaBuscarTrabajador;
        }

        //eliminar trabajador
        public static bool EliminarTrabajador(int codigoTrabajador)
        {
            bool Estado = false;

            using (SqlConnection ObjConexion = new SqlConnection(Conexion.Cadena_Conexion))
            {
                ObjConexion.Open();
                SqlCommand ObjComando = new SqlCommand();
                SqlTransaction ObjTransaction = null;
                ObjComando.Connection = ObjConexion;
                ObjComando.CommandType = CommandType.Text;
                ObjComando.CommandText = @"DELETE FROM [dbo].[trabajador]
                                            WHERE [Trabajador_Id] = @Codigo";

                ObjComando.Parameters.AddWithValue("@Codigo", codigoTrabajador);

                ObjTransaction = ObjConexion.BeginTransaction(IsolationLevel.RepeatableRead);
                ObjComando.Transaction = ObjTransaction;

                try
                {
                    int r = ObjComando.ExecuteNonQuery();
                    if (r == 1)
                    {
                        ObjTransaction.Commit();
                        Estado = true;
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
            return Estado;
        }


        public static bool ActualizarTrabajador(int CodigoTrabajador,Trabajador trabajador)
        {

            bool Estado = false;

            using (SqlConnection ObjConexion = new SqlConnection(Conexion.Cadena_Conexion))
            {
                ObjConexion.Open();
                SqlCommand ObjComando = new SqlCommand();
                SqlTransaction ObjTransaction = null;
                ObjComando.Connection = ObjConexion;
                ObjComando.CommandType = CommandType.Text;
                ObjComando.CommandText = @"UPDATE [dbo].[trabajador]
                                           SET [Nombres] = @Nombres
                                              ,[Apellidos] = @Apellidos
                                              ,[Salario] = @Salario
                                         WHERE [Trabajador_Id] = @Codigo";

                ObjComando.Parameters.AddWithValue("@Nombres", trabajador.Nombres);
                ObjComando.Parameters.AddWithValue("@Apellidos", trabajador.Apellidos);
                ObjComando.Parameters.AddWithValue("@Salario", trabajador.Salario);
                ObjComando.Parameters.AddWithValue("@Codigo", CodigoTrabajador);

                ObjTransaction = ObjConexion.BeginTransaction(IsolationLevel.RepeatableRead);
                ObjComando.Transaction = ObjTransaction;

                try
                {
                    int r = ObjComando.ExecuteNonQuery();
                    if (r == 1)
                    {
                        ObjTransaction.Commit();
                        Estado = true;
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
            return Estado;
        }


    }
}