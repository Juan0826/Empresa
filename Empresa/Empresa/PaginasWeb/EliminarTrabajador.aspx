<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="EliminarTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.EliminarTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5">
                <asp:Label ID="Encabezado1" runat="server" CssClass="encabezado" style="width: 38%;">Buscar Identificacion Trabajador </asp:Label>
                <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                    <label class="col-sm-6 col-form-label">Ingresar Identificacion </label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="identificadorbuscar" runat="server" CssClass="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="xxx-xxx-xxxx"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <div class="col-sm-6" align="right">
                        <asp:Button ID="Btn_Consultar" CssClass="btn btn-success" Text="Buscar" runat="server"/>
                    </div>
                    <div class="col-sm-6" align="left">
                        <asp:Button ID="Btn_CancelarBusq" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                    </div>
                </div>
                <asp:Label ID="Encabezado2" runat="server" CssClass="encabezado" style="width: 22%;">Datos Trabajador</asp:Label>
                <div class="form-group row borde_encabezado" style="margin-top: 26px;" align="center">
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Ingresar Identificacion </label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="xxx-xxx-xxxx">
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Ingresar Identificacion </label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="xxx-xxx-xxxx">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
