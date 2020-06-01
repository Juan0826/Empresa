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
    public partial class ActualizarTrabajador : System.Web.UI.Page
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

        protected void Btn_Mod_Ingresar_Click(object sender, EventArgs e)
        {
            Trabajador trabajador = new Trabajador();
            trabajador.Nombres = this.nombre.Text;
            trabajador.Apellidos = this.apellido.Text;

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

            bool respuesta = AccesoTrabajador.ActualizarTrabajador(Convert.ToInt32(oculto.Text),trabajador);
        }

        protected void Btn_Buscar_Mod_Click(object sender, EventArgs e)
        {
            int identificacion = Convert.ToInt32(this.identificadorbuscar.Text);

            List<Trabajador> listaBuscarTrabajador = AccesoTrabajador.ListarBuscarTrabajador(identificacion);

            foreach (Trabajador trabajador in listaBuscarTrabajador)
            {
                this.oculto.Text = Convert.ToString(trabajador.Trabajador_Id);
                this.nombre.Text = trabajador.Nombres;
                this.apellido.Text = trabajador.Apellidos;
                this.tipoidentificacion.SelectedValue = Convert.ToString(trabajador.Identificador_Id);
                this.identificacion.Text = Convert.ToString(trabajador.Identificacion);
                
                this.nombre_completo.Text = trabajador.Nombres + " " + trabajador.Apellidos;

                var salario = Convert.ToInt32(trabajador.Salario);
                int TSalario;

                if (salario < 870803)
                {
                    TSalario = salario - 102854;
                }
                else
                {
                    TSalario = salario;
                }
                this.total_salario.Text = Convert.ToString(Convert.ToInt32(trabajador.Salario));
                this.salario.Text = Convert.ToString(TSalario);
            }
        }
    }
}