<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDanhSachTram.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.Tram.wucDanhSachTram" %>

<%-- link href="../../Shared/Css/RepeaterStyle.css" rel="Stylesheet" type="text/css" />--%>

<div class="danh_sach_tram">
    <asp:Repeater ID="rptDanhSachTram" runat="server" DataSourceID="ldsTramXe">
        <ItemTemplate>
            <asp:HyperLink CssClass="left_menu1" runat="server" Text='<%# Eval("TenTramXe") %>'
                NavigateUrl='<%# "~/Common/CacChuyenTrongNgay.aspx?MaTramXe=" + Eval("MaTramXe") %>'>
            </asp:HyperLink>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <asp:HyperLink CssClass="left_menu2" runat="server" Text='<%# Eval("TenTramXe") %>'
                NavigateUrl='<%# "~/Common/CacChuyenTrongNgay.aspx?MaTramXe=" + Eval("MaTramXe") %>'>
            </asp:HyperLink>
        </AlternatingItemTemplate>
    </asp:Repeater>
    <asp:LinqDataSource ID="ldsTramXe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
        Select="new (TenTramXe, MaTramXe)" TableName="TRAM_XEs">
    </asp:LinqDataSource>
</div>
