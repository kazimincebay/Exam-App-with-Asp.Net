<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="UdemyWeb.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">iÇERİK</th>
            <th scope="col">ÖĞRETMEN</th>
            <th scope="col">DUYURU GÜNCELLE</th>
            <th scope="col">DUYURU SİL</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <itemtemplate>
                    <tr>
                        <th scope="row"><%# Eval("DUYURUID")%></th>
                        <td><%# Eval("DUYURUBASLIK")%></td>
                        <td><%# Eval("DUYURUICERIK")%></td>
                        <td><%#  Eval("DUYURUOGRT")%></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "~/DuyuruGuncelle.aspx?DUYURUID="+Eval("DUYURUID") %>' CssClass="btn btn-warning" ID="HyperLink1" runat="server">Güncelle</asp:HyperLink>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/DuyuruSil.aspx?DUYURUID="+Eval("DUYURUID") %>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                    </tr>
                </itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="DuyuruEkle.aspx" class="btn btn-success">Duyuru Ekle</a>
</asp:Content>
