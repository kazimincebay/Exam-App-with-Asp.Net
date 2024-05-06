<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="UdemyWeb.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
        <div class="form-group">
        <asp:Label ID="Label2" runat="server">Ders Adı</asp:Label>
        <asp:TextBox ID="TxtDersAdı" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server">Öğrenci ID</asp:Label>
        <asp:TextBox ID="TxtOgrId" runat="server" disabled="true" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server">Öğrenci Adı Soyadı</asp:Label>
            <asp:TextBox ID="TxtOgrAdSoyad" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server">Sınav 1</asp:Label>
            <asp:TextBox ID="TxtSınav1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server">Sınav 2</asp:Label>
            <asp:TextBox ID="TxtSınav2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server">Sınav 3</asp:Label>
            <asp:TextBox ID="TxtSınav3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server">Ortalama</asp:Label>
            <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server">Durum</asp:Label>
            <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Hesapla" OnClick="Button2_Click" />
        <asp:Button ID="Button1" NavigateUrl='<%# "~/NotGuncelle.aspx?OGRENCIID="+Eval("OGRENCIID") %>' runat="server" CssClass="btn btn-success" Text="Öğrenci Güncelle" OnClick="Button1_Click" />
    </form>
</asp:Content>
