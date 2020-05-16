using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Empresa
{
    public static class Conexion
    {
        public static String Cadena_Conexion = ConfigurationManager.ConnectionStrings["EmpresaConnectionString"].ConnectionString;
    }
}