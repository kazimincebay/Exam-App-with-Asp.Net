﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrBul.aspx.cs" Inherits="UdemyWeb.OgrBul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form class="form1" runat="server">
    <div class="form-group">
        <asp:Label ID="Label2" runat="server">Öğrenci Adı</asp:Label>
        <asp:TextBox ID="TxtOgrenciAd" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Öğrenci Bul" OnClick="Button1_Click" />
</form>
<table class="table table-bordered table-hover">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">NUMARA</th>
        <th scope="col">AD</th>
        <th scope="col">SOYAD</th>
        <th scope="col">TELEFON</th>
        <th scope="col">MAIL</th>
        <th scope="col">ŞİFRE</th>
        <th scope="col">ÖĞRENCİ GÜNCELLE</th>
        <th scope="col">ÖĞRENCİ SİL</th>
    </tr>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <th scope="row"><%# Eval("OGRID")%></th>
                    <td><%# Eval("OGRNUMARA")%></td>
                    <td><%# Eval("OGRAD")%></td>
                    <td><%# Eval("OGRSOYAD")%></td>
                    <td><%#  Eval("OGRTELEFON")%></td>
                    <td><%# Eval("OGRMAIL")%></td>
                    <td><%# Eval("OGRSIFRE")%></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%# "~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>' CssClass="btn btn-warning" ID="HyperLink1" runat="server">Güncelle</asp:HyperLink>

                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/OgrenciSil.aspx?OGRID="+Eval("OGRID") %>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>

</asp:Content>
