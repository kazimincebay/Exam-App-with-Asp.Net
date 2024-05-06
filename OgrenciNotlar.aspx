<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNotlar.aspx.cs" Inherits="UdemyWeb.OgrenciNotlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Ders Adı</th>
            <th scope="col">Sınav 1</th>
            <th scope="col">Sınav 2</th>
            <th scope="col">Sınav 3</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Durum</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("DERSAD")%></td>
                        <td><%# Eval("SINAV1")%></td>
                        <td><%#  Eval("SINAV2")%></td>
                        <td><%# Eval("SINAV3")%></td>
                        <td><%# Eval("ORTALAMA")%></td>
                        <td><%# Eval("DURUM")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
