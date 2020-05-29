using Empresa.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Empresa.ControladorDatos
{
    public class AccesoTipoIdentificacion
    {
        //
        public static List<TipoIdentificacion> ListarTiposIdentificacion()
        {
            List<TipoIdentificacion> ListaTipos = new List<TipoIdentificacion>();

            using (SqlConnection ObjConexion = new SqlConnection(Conexion.Cadena_Conexion))
            {
                ObjConexion.Open();
                SqlCommand ObjComando = new SqlCommand();
                ObjComando.Connection = ObjConexion;
                ObjComando.CommandType = CommandType.Text;
                ObjComando.CommandText = "SELECT Tipo_Identificacion_Id,Nombre FROM tipo_identificacion";

                var r = ObjComando.ExecuteReader();

                while (r.Read())
                {
                    ListaTipos.Add(new TipoIdentificacion(r.GetInt32(0),r.GetString(1)));
                }
            }
            return ListaTipos;
        }
    }
}