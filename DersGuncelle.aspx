<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="UdemyWeb.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <form class="form1" runat="server">
    <div class="form-group">
        <asp:Label ID="Label1" runat="server">Ders Id</asp:Label>
        <asp:TextBox ID="TxtDersId" runat="server" disabled="True" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server">Ders Adı</asp:Label>
        <asp:TextBox ID="TxtDersAdı" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Güncelle" OnClick="Button1_Click" />
</form>
</asp:Content>
