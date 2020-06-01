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
                <br />
                <br />
                <br />
                <div class="col-sm-6" align="right" style="margin-top: 10px;">
                    <asp:Button ID="Btn_BuscarEli" runat="server" CssClass="btn btn-success" Onclick="Btn_BuscarEli_Click" Text="Buscar"/>
                </div>
                <br />
                <br />
                <br />
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
                <br />
                <br />
                <br />
                <asp:Label ID="label_Eli3" runat="server" class="col-sm-6 col-form-label" >Indentificación</asp:Label>
                <div class="col-sm-6">
                <asp:TextBox ID="identificacion" runat="server" disabled="disabled" class="form-control" type="number" name="identificacion" value="" maxlength="10" placeholder="Indentificación"></asp:TextBox>
                </div>
                <div class="col-sm-6" style="margin-top: 100px;" align="right">
                <asp:Button ID="btn_Eliminar" runat="server" CssClass="btn btn-success" OnClick="btn_Eliminar_Click" Text="Eliminar"/>
                </div>
                <div class="col-sm-6" style="margin-top: 100px;" align="left">
                <asp:Button ID="btn_CancelarEli" CssClass="btn btn-cancelar" Text="Cancelar" runat="server"/>
                </div>

                <asp:TextBox ID="oculto" runat="server" style="display:none;"></asp:TextBox>
            </div>
        </div>

        <!--Tercer panel eliminar trabajador-->
        <!--Tabla de consulta-->
        <div class="col-lg-6 col-md-6" style="margin-left: 20px;">
            <asp:Label ID="Label1" runat="server" CssClass="encabezado" style="width: 21%;">Consultar Trabajador</asp:Label>
            <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                <div class="col-sm-12">
                    <div class="table-wrapper-scroll-y">
                        <asp:GridView ID="gdvListaTrabajdoresEliminar" runat="server" AutoGenerateColumns="False" Width="100">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="Trabajador_Id" SortExpression="Trabajador_Id"/>
                                <asp:BoundField HeaderText="Nombre" DataField="Nombres" SortExpression="Nombres"/>
                                <asp:BoundField HeaderText="Apellido" DataField="Trabajador_Id" SortExpression="Trabajador_Id"/>
                                <asp:BoundField HeaderText="Identificacion" DataField="Identificacion" SortExpression="Identificacion"/>
                                <asp:BoundField HeaderText="Tipo Identificacion" DataField="Identificador_Id" SortExpression="Identificador_Id"/>
                                <asp:BoundField HeaderText="Salario" DataField="Salario" SortExpression="Salario"/>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</asp:Content>
