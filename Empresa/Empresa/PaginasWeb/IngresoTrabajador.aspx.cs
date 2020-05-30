using Empresa.Clases;
using Empresa.ControladorDatos;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empresa.PaginasWeb
{
    public partial class IngresoTrabajador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarListas();
            LlenarTabla();
        }

        protected void LlenarListas()
        {
            List<TipoIdentificacion> ListaTipos = AccesoTipoIdentificacion.ListarTiposIdentificacion();

            this.tipoidentificacion.Items.Clear();
            this.tipoidentificacion.DataSource = ListaTipos;
            this.tipoidentificacion.DataTextField = "Nombre";
            this.tipoidentificacion.DataValueField = "Identificacion_Id";
            this.tipoidentificacion.DataBind();
            this.tipoidentificacion.Visible = true;
            this.tipoidentificacion.Focus();
        }

        protected void LlenarTabla()
        {
            List<Trabajador> ListaTrabajador = AccesoTrabajador.ListarTrabajadores();

            this.gdvListaTrabajdores.DataSource = ListaTrabajador;
            this.gdvListaTrabajdores.DataBind();
        }

        protected void Btn_Ingresar_Click(object sender, EventArgs e)
        {
            Trabajador trabajador = new Trabajador();
            trabajador.Nombres = this.nombre.Text;
            trabajador.Apellidos = this.apellido.Text;
            trabajador.Identificador_Id = Convert.ToInt32(this.tipoidentificacion.SelectedValue);
            trabajador.Identificacion = Convert.ToInt32(this.identificacion.Text);

            var salario = Convert.ToInt32(this.salario.Text);
            int TSalario;

            if (salario < 870803)
            {
                TSalario = salario + 102854;
            }
            else
            {
                TSalario = salario;
            }
            trabajador.Salario = Convert.ToDecimal(TSalario);

            bool Estado = AccesoTrabajador.InsertarTrabajador(trabajador);

            if (Estado)
            {
                //ScriptManager.RegisterClientScriptBlock(this, GetType(),"alertMessage", @"alert('Trabajador registrado correctamente');", true);
                //ScriptManager.RegisterClientScriptBlock(this, GetType(),"alertMessage", @"alert('Trabajador registrado correctamente');", true);
            }
            else
            {
                //ScriptManager.RegisterClientScriptBlock(this, GetType(), "alertMessage", @"alert('Error al registrar trabajador')", true);
            }
        }
    }
}