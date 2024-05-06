<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle.aspx.cs" Inherits="UdemyWeb.OgrenciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
        <div class="form-group">
    <asp:Label ID="Label7" runat="server">Öğrenci ID</asp:Label>
    <asp:TextBox ID="TxtOgrId" runat="server" disabled="true" class="form-control"></asp:TextBox>
</div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server">Öğrenci Adı</asp:Label>
        <asp:TextBox ID="TxtOgrAd" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server">Öğrenci Soyadı</asp:Label>
        <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server">Telefon Numarası</asp:Label>
        <asp:TextBox ID="TxtOgrTelNo" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server">E-Posta Adresi</asp:Label>
        <asp:TextBox ID="TxtOgrEPosta" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server">Öğrenci Şifre</asp:Label>
        <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server">Öğrenci Fotoğraf Linki</asp:Label>
        <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Öğrenci Güncelle" OnClick="Button1_Click" />
</form>
</asp:Content>
