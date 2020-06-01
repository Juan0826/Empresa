using Empresa.Clases;
using Empresa.ControladorDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empresa.PaginasWeb
{
    public partial class EliminarTrabajador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarTabla();
        }
        
        //evento para buscar
        protected void Btn_BuscarEli_Click(object sender, EventArgs e)
        {
            int identificacion = Convert.ToInt32(this.identificadorbuscar.Text);
            
            List<Trabajador> listaBuscarTrabajador = AccesoTrabajador.ListarBuscarTrabajador(identificacion);

            foreach (Trabajador trabajador in listaBuscarTrabajador) {
                this.oculto.Text= Convert.ToString(trabajador.Trabajador_Id);
                this.nombre_Completo.Text = trabajador.Nombres +" "+ trabajador.Apellidos;
                this.identificacion.Text = Convert.ToString(trabajador.Identificacion);
            }
        }

        protected void btn_Eliminar_Click(object sender, EventArgs e)
        {
            bool respuesta = AccesoTrabajador.EliminarTrabajador(Convert.ToInt32(oculto.Text));

            if (respuesta)
            {
                LlenarTabla();
                LimpiarCampos();
            }
        }

        protected void LlenarTabla()
        {
            List<Trabajador> ListaTrabajador = AccesoTrabajador.ListarTrabajadores();

            this.gdvListaTrabajdoresEliminar.DataSource = ListaTrabajador;
            this.gdvListaTrabajdoresEliminar.DataBind();
        }

        protected void LimpiarCampos()
        {
            this.identificacion.Text = "";
            this.nombre_Completo.Text = "";
            this.oculto.Text = "";
        }
    }
}