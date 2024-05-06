<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="UdemyWeb.DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ders Adı</th>
            <th scope="col">Güncelle</th>
            <th scope="col">Sil</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <itemtemplate>
                    <tr>
                        <th scope="row"><%# Eval("DERSID")%></th>
                        <td><%# Eval("DERSAD")%></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "~/DersGuncelle.aspx?DERSID="+Eval("DERSID") %>' CssClass="btn btn-warning" ID="HyperLink1" runat="server">Güncelle</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "~/DersSil.aspx?DERSID="+Eval("DERSID") %>' CssClass="btn btn-danger" ID="HyperLink2" runat="server">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="DersEkle.aspx" class="btn btn-success">Ders Ekle</a>
</asp:Content>
