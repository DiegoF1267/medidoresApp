<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarEstacion.aspx.cs" Inherits="MedidoresWeb.RegistrarEstacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-12 col-md-6 col-lg-5 mx-auto">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h1>Registrar Estacion</h1>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idTxt">Identificador</label>
                        <asp:TextBox ID="idTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar el Identificador" CssClass="text-danger" ControlToValidate="idTxt"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="capInt">Capacidad maxima</label>
                        <asp:TextBox ID="capInt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar la cantidad maxima de vehiculos" CssClass="text-danger" ControlToValidate="capInt" OnServerValidate="rutCV_ServerValidate" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="VC">Vida Util</label>
                        <asp:Calendar ID="VC" runat="server"></asp:Calendar>
                    </div>
                    <br />
                    <div class="form-group">
                        <label for="nivelRbl">Nivel</label>
                        <asp:RadioButtonList ID="nivelRbl" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1" Selected="True" Text="Dual"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Electrico"></asp:ListItem>                          
                        </asp:RadioButtonList>
                    </div>

                </div>
                <div class="card-footer">
                    <asp:Button ID="BtnEstacion" runat="server" Text="Registrar Estacion" CssClass="btn btn-success" OnClick="BtnEstacion_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
