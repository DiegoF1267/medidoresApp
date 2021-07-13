<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarPunto.aspx.cs" Inherits="MedidoresWeb.RegistrarPunto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-12 col-md-6 col-lg-5 mx-auto">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h1>Registrar Punto</h1>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="diTxt">Direccion</label>
                        <asp:TextBox ID="diTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar una direcion" CssClass="text-danger" ControlToValidate="diTxt"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="capTxt">Capacidad maxima</label>
                        <asp:TextBox ID="capTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar la cantidad maxima de vehiculos" CssClass="text-danger" ControlToValidate="capTxt" OnServerValidate="rutCV_ServerValidate" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="HrTxt">Horario</label>
                        <asp:TextBox ID="HrTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar el horario de atencion" CssClass="text-danger" ControlToValidate="HrTxt"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="RegionRbl">Region</label>
                        <asp:RadioButtonList ID="RegionRbl" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1" Selected="True" Text="Tarapaca"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Antofagasta"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Atacama"></asp:ListItem>
                            <asp:ListItem Value="4" Text="Coquimbo"></asp:ListItem>
                            <asp:ListItem Value="5" Text="Valparaiso"></asp:ListItem>
                            <asp:ListItem Value="6" Text="O'Higgins"></asp:ListItem>
                            <asp:ListItem Value="7" Text="El Maule"></asp:ListItem>
                            <asp:ListItem Value="8" Text="El Bio Bio"></asp:ListItem>
                            <asp:ListItem Value="9" Text="La Araucania"></asp:ListItem>
                            <asp:ListItem Value="10" Text="Los Lagos"></asp:ListItem>
                            <asp:ListItem Value="11" Text="Aysen"></asp:ListItem>
                            <asp:ListItem Value="12" Text="Magallanes y la Antartica Chilena"></asp:ListItem>
                            <asp:ListItem Value="13" Text="Region Metropolitana de santiago"></asp:ListItem>
                            <asp:ListItem Value="14" Text="Los Rios"></asp:ListItem>
                            <asp:ListItem Value="15" Text="Arica y Parinacota"></asp:ListItem>
                            <asp:ListItem Value="16" Text="Ñuble"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="BtnPunto" runat="server" Text="Registrar Punto" CssClass="btn btn-success" OnClick="BtnPunto_Click1"  />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
