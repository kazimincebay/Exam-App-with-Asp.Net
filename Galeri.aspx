<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="UdemyWeb.Galeri" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <dx:ASPxImageGallery runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OgrFotograf" Theme="Material" Width="750px">
            <SettingsFolder ImageCacheFolder="~/Thumb/"></SettingsFolder>
        </dx:ASPxImageGallery>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=KAZIMM;Initial Catalog=UdemySiteDB;Integrated Security=True;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>
    </form>
</asp:Content>
