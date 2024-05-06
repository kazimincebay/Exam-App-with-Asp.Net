<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="UdemyWeb.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
        <div class="form-group">
            <asp:Label ID="Label3" runat="server">Gonderen</asp:Label>
            <asp:TextBox ID="TxtMsjGonderen" runat="server" disabled="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server">Alıcı</asp:Label>
            <asp:TextBox ID="TxtMsjAlici" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server">Başlık</asp:Label>
            <asp:TextBox ID="TxtMsjBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server">İçerik</asp:Label>
            <textarea id="TxtMsjIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Mesaj Gönder" OnClick="Button1_Click" />
    </form>
</asp:Content>
