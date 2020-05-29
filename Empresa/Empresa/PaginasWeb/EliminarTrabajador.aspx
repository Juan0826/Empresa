<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="EliminarTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.EliminarTrabajador" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<div class="container">
    <div class="row">
        <div class="col-lg-5 col-md-5">
            <!--Primer panel eliminar trabajador-->
            <asp:Label ID="Encabezado1" runat="server" CssClass="encabezado" style="width: 38%;">Buscar Identificacion Trabajador </asp:Label>
            <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                <asp:Label ID="label_Eli1" runat="server" class="col-sm-6 col-form-label">Ingresar Identificacion </asp:Label>
                <div class="col-sm-6">
                <asp:TextBox ID="identificadorbuscar" runat="server" CssClass="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="Identificación"></asp:TextBox>
                </div>
                <div class="col-sm-6" align="right" style="margin-top: 10px;">
                <Button ID="Btn_ConsultarEli" class="btn btn-success" onclick="Probar()">Buscar</Button>
                </div>
                <div class="col-sm-6" align="left" style="margin-top: 10px;">
                <asp:Button ID="Btn_CancelarBusq" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                </div>
            </div>

            <!--Segundo panel eliminar trabajador-->
            <asp:Label ID="Encabezado2" runat="server" CssClass="encabezado" style="width: 22%;">Datos Trabajador</asp:Label>
            <div class="form-group row borde_encabezado" style="margin-top: 26px;" align="center">
                <asp:Label ID="label_Eli2" runat="server" class="col-sm-6 col-form-label" style="margin-top: 8px;">Nombre completo</asp:Label>
                <div class="col-sm-6">
                <asp:TextBox ID="nombre_Completo" runat="server" disabled="disabled" class="form-control" type="text" name="nombre_Completo" value="" maxlength="10" placeholder="Nombre"></asp:TextBox>
                </div>
                <asp:Label ID="label_Eli3" runat="server" class="col-sm-6 col-form-label" style="margin-top: 8px;">Indentificación</asp:Label>
                <div class="col-sm-6">
                <asp:TextBox ID="identificacion" runat="server" disabled="disabled" class="form-control" type="text" name="identificacion" value="" maxlength="10" placeholder="Indentificación"></asp:TextBox>
                </div>
                <div class="col-sm-6" style="margin-top: 100px;" align="right">
                <Button ID="btn_ConsultarEli" class="btn btn-success" onclick="Probar()">Eliminar</Button>
                </div>
                <div class="col-sm-6" style="margin-top: 100px;" align="left">
                <asp:Button ID="btn_CancelarEli" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                </div>
            </div>
        </div>

        <!--Tercer panel eliminar trabajador-->
        <!--Tabla de consulta-->
        <div class="col-lg-6 col-md-6" style="margin-left: 20px;">
        <asp:Label ID="Label1" runat="server" CssClass="encabezado" style="width: 21%;">Consultar Trabajador</asp:Label>
            <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                <div class="col-sm-8">
                    <table class="table table-striped">
                    <thead>
                        <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDO</th>
                        <th scope="col">INDENTIFICACIÓN</th>
                        <th scope="col">TIPO INDENTIFICACIÓN</th>
                        <th scope="col">SALARIO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <th scope="row">1</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        </tr>
                        <tr>
                        <th scope="row">2</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        </tr>
                        <tr>
                        <th scope="row">3</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        </tr>
                    </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
</asp:Content>
