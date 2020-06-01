<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="IngresoTrabajador.aspx.cs" Inherits="Empresa.PaginasWeb.IngresoTrabajador" %>
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
                        <asp:TextBox ID="nombre" runat="server" class="form-control nombre" type="text" name="nombre" value="" maxlength="10" placeholder="Ingrese Nombre"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="label2" runat="server" class="col-sm-4 col-form-label">Apellido </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="apellido" runat="server" class="form-control" type="text" name="apellido" value="" maxlength="10" placeholder="Ingrese Apellido"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="label3" runat="server" class="col-sm-4 col-form-label tipoIdentificador">Tipo de indentificación </asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="tipoidentificacion" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="label4" runat="server" class="col-sm-4 col-form-label">Identificación </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="identificacion" runat="server" class="form-control" type="number" name="identificacion" value="" maxlength="10" placeholder="Identificación"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="label5" runat="server" class="col-sm-4 col-form-label">Salario </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="salario" runat="server" class="form-control" type="number" name="salario" value="" maxlength="10" placeholder="Ingrese Salario"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <div class="col-sm-12" style="margin-top: 10px;">
                        <button class="btn btn-success" id="btnSueldo" >Consultar</button> 
                    </div>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="label6" runat="server" class="col-sm-4 col-form-label" style="margin-top: 12px;">Total Salario </asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="total_salario" runat="server" class="form-control" disabled="disabled" type="number" style="margin-top: 10px;" maxlength="10" placeholder="Salario"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="label7" runat="server" class="col-sm-4 col-form-label" style="margin-top: 20px;">Nombre Completo</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombre_completo" runat="server" class="form-control" disabled="disabled" type="text" name="nombre_completo" style="margin-top: 18px;" value="" maxlength="10" placeholder="Nombre completo"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="col-sm-6" style="margin-top: 10px;">
                        <asp:Button ID="Btn_Ingresar" runat="server" CssClass="btn btn-ingresar" Text="Ingresar" OnClick="Btn_Ingresar_Click"/>
                    </div>
                    <div class="col-sm-6" style="margin-top: 10px;">
                        <asp:Button ID="Btn_Cancelar" runat="server" CssClass="btn btn-cancelar" Text="Cancelar" OnClick="Btn_Cancelar_Click"/>
                    </div>

                </div>                
            </div>

            <!--Segundo panel ingresar trabajador-->
            <!--Tabla de consulta-->
            <div class="col-lg-6 col-md-6" style="margin-left: 20px;">
                <asp:Label ID="Encabezado2" runat="server" CssClass="encabezado" style="width: 21%;">Consultar Trabajador</asp:Label>
                <div class="form-group row borde_encabezado" style="margin-top: 10px;" align="center">
                    <div class="col-sm-12">
                        <div class="table-wrapper-scroll-y">
                            <asp:GridView ID="gdvListaTrabajdores" runat="server" AutoGenerateColumns="False" Width="100">
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
    <script type="text/javascript" >
        // funcion de calcular sueldo
        $('#btnSueldo').click(function () {
            var TSalario;
            const salario = parseInt(document.getElementById('<%=salario.ClientID%>').value);
            <%--const nombre = document.getElementById('<%=nombre.ClientID%>').value;
            const apellido = document.getElementById('<%=apellido.ClientID%>').value;
            const identificacion = document.getElementById('<%=identificacion.ClientID%>').value;--%>

            // aqui verificamos que el salario sea un numero
            if (isNaN(salario) || salario ==="") {
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