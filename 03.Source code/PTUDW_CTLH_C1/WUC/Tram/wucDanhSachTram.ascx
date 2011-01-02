<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDanhSachTram.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.Tram.wucDanhSachTram" %>
<link href="../../Shared/Css/RepeaterStyle.css" rel="Stylesheet" type="text/css" />
<asp:Repeater ID="rptDanhSachTram" runat="server" DataSourceID="ldsTramXe" >
    <ItemTemplate>
        <div id="leftmenu">
            <asp:HyperLink ID="hplTramXe" runat="server" Text='<%# Eval("TenTramXe") %>' NavigateUrl='<%# "~/Common/CacChuyenTrongNgay.aspx?MaTramXe=" + Eval("MaTramXe") %>'>
            </asp:HyperLink>
        </div>
    </ItemTemplate>
</asp:Repeater>
<asp:LinqDataSource ID="ldsTramXe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    Select="new (TenTramXe, MaTramXe)" TableName="TRAM_XEs">
</asp:LinqDataSource>
