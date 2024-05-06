<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="UdemyWeb.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
        <div class="form-group">
            <asp:Label ID="Label4" runat="server">Id</asp:Label>
            <asp:TextBox ID="TxtDuyuruId" runat="server" disabled="true" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server">Başlık</asp:Label>
            <asp:TextBox ID="TxtDuyuruBaslık" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server">İçerik</asp:Label>
            <textarea id="TxtDuyuruIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Duyuru Güncelle" OnClick="Button1_Click" />
    </form>
</asp:Content>
