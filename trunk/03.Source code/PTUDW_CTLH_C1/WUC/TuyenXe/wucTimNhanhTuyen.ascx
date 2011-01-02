<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimNhanhTuyen.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucTimNhanhTuyen" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<link href="../../Shared/Css/SearchStyle.css" rel="Stylesheet" type="text/css" />
<div id="Wrapper">
    <asp:UpdatePanel ID="pnlWrapper" runat="server">
        <ContentTemplate>
            <fieldset style="border:none">
                <asp:LinqDataSource ID="ldsTramXe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
                    OrderBy="TenTramXe" Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
                </asp:LinqDataSource>
               
                <div id="SearchRegion">
                    <table border="1">
                        <tr>
                            <td colspan="2" align="center" class="tieudeTable">
                                <asp:Label ID="lblTitle" CssClass="Title" runat="server" Text="Tìm Nhanh Tuyến Xe"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <asp:Label ID="lblTramKhoiHanh" runat="server" Text="Trạm khởi hành"></asp:Label>
                            </td>
                            <td>
                                 <asp:DropDownList ID="ddlTramKhoiHanh" runat="server" DataSourceID="ldsTramXe" DataTextField="TenTramXe"
                                DataValueField="MaTramXe">
                                 </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <asp:Label ID="lblTramDen" runat="server" Text="Trạm đến"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlTramDen" runat="server" DataSourceID="ldsTramXe" DataTextField="TenTramXe"
                                DataValueField="MaTramXe">
                            </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" OnClick="btnTimKiem_Click" />
                            </td>
                        </tr>
                    </table>
                    
                   
                    
                </div>
                <asp:Label ID="lblKetQua" runat="server" Text=""></asp:Label>
                <asp:GridView ID="grvDanhSachTuyen" runat="server" AllowPaging="True" CssClass="mGrid"
                    PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến" NullDisplayText="Chưa xác định" />
                        <asp:BoundField DataField="TenTramDi" HeaderText="Trạm đi" />
                        <asp:BoundField DataField="TenTramDen" HeaderText="Trạm đến" />
                        <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" />
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Chi tiết
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:HyperLink runat="server" Text="Chi tiết" NavigateUrl='<%# "~/Common/ChiTietTuyen.aspx?MaTuyenXe=" + Eval("MaTuyenXe")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
