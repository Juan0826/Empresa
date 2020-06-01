using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Empresa.Clases
{
    public class Trabajador
    {
        public int Trabajador_Id { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public int Identificacion { get; set; }
        public int Identificador_Id { get; set; }
        public decimal Salario { get; set; }
        public int Calculo { get; set; }

        public Trabajador(int codigoTrabajador, string nombres, string apellidos, int identificacion, int codigoIdentificacion, decimal salario, int Calculo)
        {
            this.Trabajador_Id = codigoTrabajador;
            this.Nombres = nombres;
            this.Apellidos = apellidos;
            this.Identificacion = identificacion;
            this.Identificador_Id = codigoIdentificacion;
            this.Salario = salario;
            this.Calculo = Calculo;
        }

        public Trabajador()
        {

        }
    }
}