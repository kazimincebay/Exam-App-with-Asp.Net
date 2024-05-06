﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrGidenMesaj.aspx.cs" Inherits="UdemyWeb.OgrGidenMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
    <tr>
        <th scope="col">TARİH</th>
        <th scope="col">ALICI</th>
        <th scope="col">BAŞLIK</th>
        <th scope="col">İÇERİK</th>
    </tr>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("TARIH")%></td>
                    <td><%# Eval("ALICI")%></td>
                    <td><%# Eval("BASLIK")%></td>
                    <td><%# Eval("ICERIK")%></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>