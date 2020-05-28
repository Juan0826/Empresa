<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="IngresoTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.IngresoTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row" >
            <div class="col-lg-5 col-md-5">
                <!--Primer panel ingresar trabajador-->
                <asp:Label ID="Encabezado1" runat="server" CssClass="encabezado" style="width: 32%;">Insertar Ingreso Trabajador </asp:Label>
                <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                    <asp:Label ID="label1" runat="server" class="col-sm-4 col-form-label">Nombre </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombre" runat="server" class="form-control" type="text" name="nombre" value="" maxlength="10" placeholder="Ingrese Nombre"></asp:TextBox>
                    </div>
                    <asp:Label ID="label2" runat="server" class="col-sm-4 col-form-label">Apellido </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="apellido" runat="server" class="form-control" type="text" name="apellido" value="" maxlength="10" placeholder="Ingrese Apellido"></asp:TextBox>
                    </div>
                    <asp:Label ID="label3" runat="server" class="col-sm-4 col-form-label">Tipo de indentificación </asp:Label>
                    <div class="col-sm-8">
                        <select class="form-control">
                          <option value="value1" selected>Seleccione</option> 
                          <option value="value2">Value 2</option>
                        </select>
                    </div>
                    <asp:Label ID="label4" runat="server" class="col-sm-4 col-form-label">Identificación </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="identificacion" runat="server" class="form-control" type="text" name="identificacion" value="" maxlength="10" placeholder="Identificación"></asp:TextBox>
                    </div>
                    <asp:Label ID="label5" runat="server" class="col-sm-4 col-form-label">Salario </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="salario" runat="server" class="form-control" type="text" name="salario" value="" maxlength="10" placeholder="Ingrese Salario"></asp:TextBox>
                    </div>

                    <div class="col-sm-12">
                        <button class="btn btn-primary" >Consultar</button> 
                    </div>
                    
                    
                    <asp:Label ID="label6" runat="server" class="col-sm-4 col-form-label">Total Salario </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="total_salario" runat="server" class="form-control" type="text" name="total_salario" style="margin-top: 10px;" value="" maxlength="10" placeholder="Salario"></asp:TextBox>
                    </div>
                    <asp:Label ID="label7" runat="server" class="col-sm-4 col-form-label">Nombre Completo</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombre_completo" runat="server" class="form-control" type="text" name="nombre_completo" style="margin-top: 18px;" value="" maxlength="10" placeholder="Nombre completo"></asp:TextBox>
                    </div>

                    <div class="col-sm-6">
                        <button class="btn btn-primary" >Ingresar</button>
                    </div>
                    <div class="col-sm-6">
                        <button class="btn btn-primary" >Cancelar</button>
                    </div>

                </div>                
            </div>
            <div class="col-lg-6 col-md-6" style="margin-left: 20px;">
                <asp:Label ID="Encabezado2" runat="server" CssClass="encabezado" style="width: 21%;">Consultar Trabajador</asp:Label>
                <div class="form-group row" style="margin-top: 14px; border: 1px black solid; padding-top: 15px; padding-bottom: 15px;" align="center">
                    <asp:Label ID="label8" runat="server" class="col-sm-4 col-form-label">Aca va la tabla de consulta</asp:Label>
                    <div class="col-sm-8">
                        
                        <!--Aca va la consulta de la tabla-->



                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>