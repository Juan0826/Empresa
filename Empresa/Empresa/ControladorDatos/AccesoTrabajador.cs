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
                    ,[Tipo_Identificador_Id],[Salario]) 
                    VALUES (@Nombres,@Apellidos,@Identificacion,@Tipo_Identificador_Id,@Salario)";

                ObjComando.Parameters.AddWithValue("@Nombres", trabajador.Nombres);
                ObjComando.Parameters.AddWithValue("@Apellidos",trabajador.Apellidos);
                ObjComando.Parameters.AddWithValue("@Identificacion", trabajador.Identificacion);
                ObjComando.Parameters.AddWithValue("@Tipo_Identificador_Id", trabajador.Identificador_Id);
                ObjComando.Parameters.AddWithValue("@Salario", trabajador.Salario);

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


    }
}