<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="UdemyWeb.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Numara</th>
            <th scope="col">Ad Soyad</th>
            <th scope="col">Ders Id</th>
            <th scope="col">Sınav 1</th>
            <th scope="col">Sınav 2</th>
            <th scope="col">Sınav 3</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Durum</th>
            <th scope="col">ÖĞRENCİ GÜNCELLE</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Eval("OGRENCIID")%></th>
                        <td><%# Eval("OGRNUMARA")%></td>
                        <td><%# Eval("OGRENCİADSOYAD")%></td>
                        <td><%# Eval("DERS AD")%></td>
                        <td><%# Eval("SINAV1")%></td>
                        <td><%#  Eval("SINAV2")%></td>
                        <td><%# Eval("SINAV3")%></td>
                        <td><%# Eval("ORTALAMA")%></td>
                        <td><%# Eval("DURUM")%></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "~/NotGuncelle.aspx?NOTID="+Eval("NOTID") %>' CssClass="btn btn-warning" ID="HyperLink1" runat="server">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
