<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="ActualizarTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.ActualizarTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    <div class="container">
        <div class="row" >
            <div class="col-lg-5 col-md-5">

                <!--FORMULARIO DE BUSQUEDA-->
                 <asp:Label ID="Encabezado1" runat="server" CssClass="encabezado" style="position: ;width: 38%;">Buscar Identificacion Trabajador </asp:Label>
                 <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                    <asp:Label ID="label1" runat="server" class="col-sm-6 col-form-label">Ingresar Identificacion </asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="consultarbuscar" runat="server" CssClass="form-control" type="text" value="" maxlength="10" placeholder=""></asp:TextBox>
                    </div>
                     <br />
                     <br />
                     <br />
                    <div class="col-sm-6" align="right">
                        <asp:Button ID="Btn_Busqueda" CssClass="btn btn-success" Text="Buscar" runat="server"/>
                    </div>
                     <div class="col-sm-6" align="left">
                        <asp:Button ID="Btn_Cancelar" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                    </div>
                </div>

                 <!--FORMULARIO DE ACTUALIZAR-->
                <asp:Label ID="Encabezado2" runat="server" CssClass="encabezado" style="width: 22%;">Actualizar Trabajador</asp:Label>
                <div class="form-group row borde_encabezado" style="margin-top: 26px;" align="center">
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Ingresar Identificacion </label>

                    <!--Editando (Pendiente)-->
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="nombre" value="" maxlength="10" placeholder="">
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Actualizar Apellido</label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="apellido" value="" maxlength="10" placeholder="">
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Actualizar Tipo Identificacion</label>
                    <div class="col-sm-6">
                        <select class="form-control" type="text" name="tipo_documento" value="" maxlength="10" placeholder="">
                        </select>
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Actualizar Identificacion</label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="">
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Actualizar Salario</label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="">
                    </div>


                     <!--BOTONES DE ACTUALIZAR-->
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">.</label>
                    <div class="col-sm-6">
                        <button type="submit" class="btn btn-success">Consultar</button>
                    </div>

                    <!--FORMULARIO DE INGRESO-->
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Salario</label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="">
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">Nombre Completo</label>
                    <div class="col-sm-6">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="">
                    </div>

                    <!--BOTONES DE CONSULTA-->
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;">.</label>
                    <div class="col-sm-6">
                        <button type="submit" class="btn btn-warning">Ingresar</button>
                        <button type="submit" class="btn btn-danger">Cancelar</button>
                    </div>

                </div>
            </div>
            <div class="col-lg-6 col-md-6" style="margin-left: 20px;">
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
