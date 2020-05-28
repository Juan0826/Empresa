<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="ActualizarTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.ActualizarTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <label style="position: absolute;background-color: white;width: 40%;padding-left: 4px;">Buscar Identificacion Trabajador </label>
                <div class="form-group row" style="margin-top: 14px; border: 1px black solid; padding-top: 15px; padding-bottom: 15px;" align="center">
                    <label class="col-sm-4 col-form-label">Ingresar Identificacion </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="xxx-xxx-xxxx">
                    </div>
                </div>
                <div class="limpiar">

                </div>
                <br />
                <label style="position: absolute;background-color: white;width: 33%;padding-left: 4px;">Actualizar Trabajador</label>
                <div class="form-group row" style="margin-top: 14px; border: 1px black solid; padding-top: 15px; padding-bottom: 15px;" align="center">
                    <label class="col-sm-4 col-form-label">Ingresar Identificacion </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="xxx-xxx-xxxx">
                    </div>
                </div>
            </div>
            <div class="col-lg-1 col-md-1">
            </div>
            <div class="col-lg-5 col-md-5">
                <label style="position: absolute;background-color: white;width: 40%;padding-left: 4px;">Consultar Trabajador</label>
                <div class="form-group row" style="margin-top: 14px; border: 1px black solid; padding-top: 15px; padding-bottom: 15px;" align="center">
                    <label class="col-sm-4 col-form-label">Ingresar Identificacion </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="xxx-xxx-xxxx">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
