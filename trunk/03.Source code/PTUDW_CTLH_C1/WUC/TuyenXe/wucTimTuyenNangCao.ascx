<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimTuyenNangCao.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucTimTuyenNangCao" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<link href="../../Shared/Css/SearchStyle.css" rel="Stylesheet" type="text/css" />
<div id="Wrapper">
    <asp:LinqDataSource ID="ldsTramXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" OrderBy="TenTramXe" 
        Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
    </asp:LinqDataSource>
    
             <div id="SearchRegion">
                <table>
                    <tr>
                        <td colspan="2" align="center" class="tieudeTable">
                            <asp:Label ID="lblTitle" CssClass="Title" runat="server" Text="Tìm Tuyến Xe"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTramKhoiHanh" runat="server" Text="Trạm khởi hành"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTramKhoiHanh" runat="server" DataSourceID="ldsTramXe" 
                    DataTextField="TenTramXe" DataValueField="MaTramXe">
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTramDen" runat="server" Text="Trạm đến"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTramDen" runat="server" DataSourceID="ldsTramXe" 
                    DataTextField="TenTramXe" DataValueField="MaTramXe">
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGiaVeTu" runat="server" Text="Giá vé từ"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGiaVeTu" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGiaVeDen" runat="server" Text="đến"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGiaVeDen" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                             <asp:Button ID="btnTimKiem" runat="server" Text="Tìm" 
                onclick="btnTimKiem_Click" />
                        </td>
                    </tr>
                </table>
                </div>
   
    <asp:Panel ID="pnlResult" runat="server">
        <div>
            <asp:Label ID="lblKetQua" CssClass="ThongBao" runat="server"></asp:Label>
            <asp:GridView ID="grvDanhSachTuyenNangCao" runat="server" AllowPaging="True" 
            CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến" 
                        NullDisplayText="Chưa xác định" />
                    <asp:BoundField DataField="TenTramDi" HeaderText="Trạm đi" />
                    <asp:BoundField DataField="TenTramDen" HeaderText="Trạm đến" />
                    <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" />
                    <asp:CommandField SelectText="Chi tiết" ShowSelectButton="True" 
                        HeaderText="Chi tiết" />
                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>
</div>