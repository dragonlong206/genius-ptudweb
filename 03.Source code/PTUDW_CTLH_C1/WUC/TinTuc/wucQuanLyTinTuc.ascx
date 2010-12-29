<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucQuanLyTinTuc.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TinTuc.wucQuanLyTinTuc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>

<asp:LinqDataSource ID="ldsTinTuc" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" OrderBy="NgayDang" 
    TableName="TIN_TUCs">    
</asp:LinqDataSource>

<asp:Repeater ID="rptTinTuc" runat="server" DataSourceID="ldsTinTuc">
    <ItemTemplate>
        <div class="TinTucHeader">
            <asp:Label ID="lblTieuDe" CssClass="TieuDe" Text='<%# Eval("TieuDe") %>' runat="server"></asp:Label>
            <asp:Label ID="lblNgayDang" CssClass="NgayDang" Text='<%# Eval("NgayDang") %>' runat="server"></asp:Label>
        </div>
        <div class="TinTucContent">
            <div class="HinhDaiDienWrapper">
                <asp:Image ID="imgHinhDaiDien" CssClass="HinhDaiDien" runat="server" 
                ImageUrl='<%# "~/Images/TinTuc/" + Eval("HinhAnh") %>' AlternateText="Hình đại diện" />
            </div>
            
            <div class="MainContentWrapper">
                <div class="TomTatWrapper">
                    <asp:TextBox ID="txtTomTat" CssClass="TomTat" Wrap="true" ReadOnly="true" BorderStyle="None" BorderWidth="0px"
                        TextMode="MultiLine" Text='<%# Eval("TomTat") %>' runat="server">
                    </asp:TextBox>
                </div>
                
                <div class="ChiTietWrapper">
                    <asp:LinkButton ID="lbtChiTiet" CssClass="hyperlink" Text="Chi tiết" runat="server"></asp:LinkButton>
                </div>
            </div>
        </div>        
    </ItemTemplate>
</asp:Repeater>

