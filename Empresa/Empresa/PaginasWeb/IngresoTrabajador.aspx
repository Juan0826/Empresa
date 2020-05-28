<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="IngresoTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.IngresoTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" >
            <div class="col-lg-5 col-md-5">
                <!--Primer panel ingresar trabajador-->
                <label style="position: absolute;background-color: white;width: 50%;padding-left: 4px;">Insertar Ingreso Trabajador </label>
                <div class="form-group row" style="margin-top: 14px; border: 1px black solid; padding-top: 15px; padding-bottom: 15px;" align="center">
                    <label class="col-sm-4 col-form-label" style="margin-top: 8px;" align="left">Nombre </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="Ingrese Nombre">
                    </div>
                    <label class="col-sm-4 col-form-label" style="margin-top: 8px;" align="left">Apellido </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="Ingrese Apellido">
                    </div>
                    <label class="col-sm-6 col-form-label" style="margin-top: 8px;" align="left">Tipo de indentificación </label>
                    <div class="col-sm-6">
                        <select class="form-control">
                          <option value="value1" selected>Seleccione</option> 
                          <option value="value2">Value 2</option>
                        </select>
                    </div>
                    <label class="col-sm-4 col-form-label" style="margin-top: 8px;" align="left">Identificación </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="Identificación">
                    </div>
                    <label class="col-sm-4 col-form-label" style="margin-top: 8px;" align="left">Salario </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" value="" maxlength="10" placeholder="Ingrese Salario">
                    </div>

                    <div class="col-sm-12">
                        <button class="btn btn-primary" >Consultar</button> 
                    </div>
                    
                    
                    <label class="col-sm-4 col-form-label" style="margin-top: 10px;" align="left">Total Salario </label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" style="margin-top: 10px;" value="" maxlength="10" placeholder="Salario">
                    </div>
                    <label class="col-sm-4 col-form-label" style="margin-top: 8px;" align="left">Nombre Completo</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="buscar" style="margin-top: 18px;" value="" maxlength="10" placeholder="Nombre completo">
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