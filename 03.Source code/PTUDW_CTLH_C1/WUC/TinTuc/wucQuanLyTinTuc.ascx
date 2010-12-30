<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucQuanLyTinTuc.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.TinTuc.wucQuanLyTinTuc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="wuc" TagName="ThemTinTuc" Src="~/WUC/TinTuc/wucThemTinTuc.ascx" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsTinTuc" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    OrderBy="NgayDang desc" TableName="TIN_TUCs">
</asp:LinqDataSource>
<asp:UpdatePanel ID="pnlInsert" runat="server">
    <ContentTemplate>
        <wuc:ThemTinTuc ID="wucThemTinTuc" Visible="false" runat="server"></wuc:ThemTinTuc>
        <asp:Button ID="btnInsert" runat="server" Text="Đăng tin mới" OnClick="btnInsert_Click" />
        <asp:Repeater ID="rptTinTuc" runat="server" DataSourceID="ldsTinTuc">
            <ItemTemplate>
                <div class="TinTucHeader">
                    <asp:Label ID="lblTieuDe" CssClass="TieuDe" Text='<%# Eval("TieuDe") %>' runat="server"></asp:Label>
                    <asp:Label ID="lblNgayDang" CssClass="NgayDang" Text='<%# Eval("NgayDang") %>' runat="server"></asp:Label>
                </div>
                <div class="TinTucContent">
                    <div class="HinhDaiDienWrapper">
                        <asp:Image ID="imgHinhDaiDien" CssClass="HinhDaiDien" runat="server" ImageUrl='<%# "~/Images/TinTuc/" + Eval("HinhAnh") %>'
                            AlternateText="Hình đại diện" />
                    </div>
                    <div class="MainContentWrapper">
                        <div class="TomTatWrapper">
                            <asp:TextBox ID="txtTomTat" CssClass="TomTat" Wrap="true" ReadOnly="true" BorderStyle="None"
                                BorderWidth="0px" TextMode="MultiLine" Text='<%# Eval("TomTat") %>' overflow="auto"
                                runat="server">
                            </asp:TextBox>
                        </div>
                        <div class="ChiTietWrapper">
                            <asp:HyperLink ID="hplChiTiet" CssClass="hyperlink" Text="Chi tiết" runat="server"
                                NavigateUrl='<%# "~/Administration/Admin/ChiTietTinTuc.aspx?MaTinTuc=" + Eval("MaTinTuc") %>'>
                            </asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </ContentTemplate>
</asp:UpdatePanel>
