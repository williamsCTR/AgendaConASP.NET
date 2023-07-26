<%@ Page Title="" Language="C#" MasterPageFile="~/miMaster.Master" AutoEventWireup="true" CodeBehind="lista.aspx.cs" Inherits="Agenda.lista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container__lista pt-4">
        <asp:GridView ID="dgvContactos" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" AutoGenerateColumns="false" DataKeyNames="id" CssClass="table table-dark table-bordered" runat="server">
            <Columns>
                <asp:BoundField HeaderText="Nombre" DataField="nombre" />
                <asp:BoundField HeaderText="Numero" DataField="numero" />
                <asp:BoundField HeaderText="E-mail" DataField="email" />
                <asp:CommandField ShowSelectButton="true" SelectText="Eliminar" HeaderText="Accion" />
            </Columns>
        </asp:GridView>
       <a href="default.aspx" class="btn btn-outline-light">Agregar nuevo contacto</a>
    </section>
</asp:Content>
