<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="UdemyWeb.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
        <div class="form-group">
            <asp:TextBox ID="TxtNumara" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtAdSoyad" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox ID="TxtMail" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtTelefon" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtCinsiyet" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtFotograf" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtSifre" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Şifre Güncelle" CssClass="btn btn-warning" OnClick="Button1_Click" />
    </form>
</asp:Content>
