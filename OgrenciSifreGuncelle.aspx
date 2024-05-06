<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciSifreGuncelle.aspx.cs" Inherits="UdemyWeb.OgrenciSifreGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <form class="form1" runat="server">
    <div class="form-group">
        <asp:Label ID="Label2" runat="server">Şifre</asp:Label>
        <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Güncelle" OnClick="Button1_Click" />
</form>
</asp:Content>
