<%@ Page Title="" Language="C#" MasterPageFile="~/miMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Agenda._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="col-sm-12 col-md-9 col-lg-7 col-xl-7 mx-auto pt-2">
        <h1>
            <b>AGENDA</b>
        </h1>
        <div>
            <h2>Ingresar nuevo contacto:</h2>
            <div>
                <div class="pt-2">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre y Apellido" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="nombre" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="pt-2">
                    <asp:Label ID="lblNumero" runat="server" Text="Numero"></asp:Label>
                    <asp:TextBox ID="txtNumero" runat="server" TextMode="Number" placeholder="n°" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="pt-2">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="email@email.com" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="d-grid gap-2 d-md-flex pt-2">
                <asp:Button ID="btnAceptar" runat="server" Text="Agregar" CssClass="btn btn-outline-warning col-6" OnClick="btnAceptar_Click" />
                  <asp:Button ID="btnLista" runat="server" Text="Lista de contacto" CssClass="btn btn-outline-warning col-6" OnClick="btnLista_Click" />
            </div>        
        </div>
        <div class="container__alerta col-sm-12 col-md-9 col-lg-7 col-xl-7 mx-auto mt-5">
            <asp:Label ID="lblAlerta" runat="server" Text="" CssClass="" Visible="false"></asp:Label>
        </div>
    </section>
</asp:Content>
