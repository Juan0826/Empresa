using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Empresa.Clases
{
    public class TipoIdentificacion
    {
        public int Identificacion_Id { get; set; }
        public string Nombre { get; set; }

        public TipoIdentificacion(int codigoIdentificacion,string nombre)
        {
            this.Identificacion_Id = codigoIdentificacion;
            this.Nombre = nombre;
        }
        public TipoIdentificacion()
        {

        }
    }
}