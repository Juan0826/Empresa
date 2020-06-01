﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="ActualizarTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.ActualizarTrabajador" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    <div class="container">
        <div class="row" >
            <div class="col-lg-5 col-md-5">
                <!--Primer panel actualizar trabajador-->
                <!--FORMULARIO DE BUSQUEDA-->
                 <asp:Label ID="Encabezado1" runat="server" CssClass="encabezado" style="width: 38%;">Buscar Identificacion Trabajador </asp:Label>
            <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                <asp:Label ID="label_Eli1" runat="server" class="col-sm-6 col-form-label">Ingresar Identificacion </asp:Label>
                <div class="col-sm-6">
                <asp:TextBox ID="identificadorbuscar" runat="server" CssClass="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="Identificación"></asp:TextBox>
                </div>
                <div class="col-sm-6" align="right" style="margin-top: 10px;">
                  <asp:Button ID="Btn_Buscar_Mod" CssClass="btn btn-cancelar" Text="Buscar" runat="server" OnClick="Btn_Buscar_Mod_Click"/>
                </div>
                <div class="col-sm-6" align="left" style="margin-top: 10px;">
                <asp:Button ID="Btn_CancelarBusq" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                </div>
            </div>

                <!--Segundo panel actualizar trabajador-->
                 <!--FORMULARIO DE ACTUALIZAR-->
                <asp:Label ID="Encabezado2" runat="server" CssClass="encabezado" style="width: 26%;">Actualizar Trabajador</asp:Label>
                  <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                    <asp:Label ID="label9" runat="server" class="col-sm-4 col-form-label">Nombre </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombre" runat="server" class="form-control nombre" type="text" name="mod-nombre" value="" maxlength="10" placeholder="Ingrese Nombre"></asp:TextBox>
                    </div>
                    <asp:Label ID="label3" runat="server" class="col-sm-4 col-form-label">Apellido </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="apellido" runat="server" class="form-control" type="text" name="mod-apellido" value="" maxlength="10" placeholder="Ingrese Apellido"></asp:TextBox>
                    </div>
                    <asp:Label ID="label4" runat="server" class="col-sm-4 col-form-label tipoIdentificador">Tipo de indentificación </asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="tipoidentificacion" runat="server" disabled="disabled" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:Label ID="label5" runat="server" class="col-sm-4 col-form-label">Identificación </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="identificacion" runat="server"  disabled="disabled" class="form-control" type="number" name="mod-identificacion" value="" maxlength="10" placeholder="Identificación"></asp:TextBox>
                    </div>
                    <asp:Label ID="label6" runat="server" class="col-sm-4 col-form-label">Salario </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="salario" runat="server" class="form-control" type="number" name="mod-salario"  value="" maxlength="10" placeholder="Ingrese Salario"></asp:TextBox>
                    </div>
                    <div class="col-sm-12" style="margin-top: 10px;">
                        <button class="btn btn-primary" id="btnSueldo" >Consultar</button> 
                    </div>
                    <asp:Label ID="label7" runat="server" class="col-sm-4 col-form-label">Total Salario </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="total_salario" runat="server" class="form-control" disabled="disabled" type="number" style="margin-top: 10px;" maxlength="10" placeholder="Salario"></asp:TextBox>
                    </div>
                    <asp:Label ID="label8" runat="server" class="col-sm-4 col-form-label">Nombre Completo</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombre_completo" runat="server" class="form-control" disabled="disabled" type="text" name="nombre_completo" style="margin-top: 18px;" value="" maxlength="10" placeholder="Nombre completo"></asp:TextBox>
                    </div>

                    <div class="col-sm-6" style="margin-top: 10px;">
                        <asp:Button ID="Btn_Mod_Ingresar" runat="server" CssClass="btn btn-ingresar" Text="Ingresar" OnClick="Btn_Mod_Ingresar_Click"/>
                    </div>
                    <div class="col-sm-6" style="margin-top: 10px;">
                        <asp:Button ID="Button2" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                    </div>

                      <asp:TextBox ID="oculto" runat="server" style="display:none;"></asp:TextBox>

                </div>
            </div>

            <!--Tercer panel consulta trabajador-->
        <!--Tabla de consulta-->
        <div class="col-lg-6 col-md-6" style="margin-left: 20px;">
                <asp:Label ID="Label2" runat="server" CssClass="encabezado3" style="width: 21%;">Consultar Trabajador</asp:Label>
                <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                    <div class="col-sm-8">
                        <div class="table-wrapper-scroll-y">
                            <asp:GridView ID="gdvListaTrabajdores" runat="server">
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

<script type="text/javascript" >
         // funcion de calcular sueldo
         $('#btnSueldo').click(function () {
             var TSalario;
             const salario = parseInt(document.getElementById('<%=salario.ClientID%>').value);
            <%--const nombre = document.getElementById('<%=nombre.ClientID%>').value;
            const apellido = document.getElementById('<%=apellido.ClientID%>').value;
            const identificacion = document.getElementById('<%=identificacion.ClientID%>').value;--%>

            // aqui verificamos que el salario sea un numero
            if (isNaN(salario) || salario === "") {
                alert('El salario ingresado no es un numero');
            } else {
                //Aqui ponemos el codigo de salario calculado
                //alert('Salario ' + salario);
                if (salario < 870803) {
                    TSalario = salario + 102854;
                } else {
                    TSalario = salario;
                }
                //alert('Salario ' + TSalario);
                $('#<%=total_salario.ClientID%>').val(TSalario);
                return false;
            }
        });

         $('#<%=apellido.ClientID%>').on('change keyup paste mouseup', function () {
            const nombre = document.getElementById('<%=nombre.ClientID%>').value;
            const apellido = document.getElementById('<%=apellido.ClientID%>').value;

            $('#<%=nombre_completo.ClientID%>').val(nombre + " " + apellido);
            return false;
        });
</script>

</asp:Content>
