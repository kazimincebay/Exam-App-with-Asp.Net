<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="UdemyWeb.Grafikler" %>

<%@ Register Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts" Assembly="DevExpress.XtraCharts.v22.2, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts.Web" Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <td>
                <dx:WebChartControl runat="server" Width="500px" Height="200px" CrosshairEnabled="True" ID="ctl04">
                    <DiagramSerializable>
                        <dx:XYDiagram>
                            <AxisX VisibleInPanesSerializable="-1"></AxisX>

                            <AxisY VisibleInPanesSerializable="-1"></AxisY>
                        </dx:XYDiagram>
                    </DiagramSerializable>
                    <SeriesSerializable>
                        <dx:Series Name="Notlar"></dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>

            </td>

            <td>
                <dx:WebChartControl runat="server" Width="500" Height="200px" CrosshairEnabled="True" ID="ctl03">
                    <SeriesSerializable>
                        <dx:Series Name="Ogretmenler">
                            <ViewSerializable>
                                <dx:DoughnutSeriesView></dx:DoughnutSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
        </tr>
        <tr>
            <td>
                <dx:WebChartControl runat="server" Width="500px" Height="200px" CrosshairEnabled="True" ID="ctl02">
                    <DiagramSerializable>
                        <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1"></dx:SimpleDiagram3D>
                    </DiagramSerializable>
                    <SeriesSerializable>
                        <dx:Series Name="Cinsiyet" LegendTextPattern="{A}">
                            <ViewSerializable>
                                <dx:Pie3DSeriesView></dx:Pie3DSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
            <td>
                <dx:WebChartControl runat="server" Width="500px" Height="200px" CrosshairEnabled="True" ID="ctl01">
                    <DiagramSerializable>
                        <dx:XYDiagram>
                            <AxisX VisibleInPanesSerializable="-1"></AxisX>

                            <AxisY VisibleInPanesSerializable="-1"></AxisY>
                        </dx:XYDiagram>
                    </DiagramSerializable>
                    <SeriesSerializable>
                        <dx:Series Name="Dersler"></dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>

            </td>

        </tr>
    </table>


</asp:Content>
