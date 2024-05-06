<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="UdemyWeb.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Dosyalar1/bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('22.jpg'); height: 100vh; background-repeat: no-repeat">
        <div style="width: 700px; margin: auto; color: white;">
            <br />
            <h2 style="text-align: center; font-family: 'Segoe Script'">Udemy Web Öğrenci Not Sistemi</h2>
            <br />
            <br />
            <br />
            <div style="text-align: center;">
                <asp:Image ID="Image1" Height="100px" Width="100px" runat="server" ImageUrl="~/user.jpg" /></div>
            <br />
            <br />

            <div class="form-group">
                <asp:Label ID="Label2" runat="server">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtKullanıcıAdı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="200px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="180px" />
        </div>
    </form>
</body>
</html>
