<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="UdemyWeb.İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
        <div class="form-group">
            <asp:TextBox ID="TxtToplamOgrenci" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgretmenSayisi" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtDersSayisi" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtToplamMesaj" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtSistemDuyuruSayısı" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtMatOrtalama" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtAlgoritmaOrtalama" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtEdebiyatOrtalama" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtMatBasarılıOgrenci" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtEdebiyatBasarılıOgrenci" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
    </form>
</asp:Content>
