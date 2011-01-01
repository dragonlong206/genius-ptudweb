<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimTuyenNangCao.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucTimTuyenNangCao" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<div id="Wrapper">
    <asp:LinqDataSource ID="ldsTramXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" OrderBy="TenTramXe" 
        Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
    </asp:LinqDataSource>
    <div>
        <asp:Label ID="lblTitle" runat="server" Text="Tìm tuyến xe"></asp:Label>
    </div>
    
    <div id="SearchRegion">
        <div>
            <div>
                <asp:Label ID="lblTramKhoiHanh" runat="server" Text="Trạm khởi hành"></asp:Label>
            </div>
            
            <div>
                <asp:DropDownList ID="ddlTramKhoiHanh" runat="server" DataSourceID="ldsTramXe" 
                    DataTextField="TenTramXe" DataValueField="MaTramXe">
                </asp:DropDownList>
            </div>
        </div>
         
        <div>
            <div>
                <asp:Label ID="lblTramDen" runat="server" Text="Trạm đến"></asp:Label>
            </div>
            
            <div>
                <asp:DropDownList ID="ddlTramDen" runat="server" DataSourceID="ldsTramXe" 
                    DataTextField="TenTramXe" DataValueField="MaTramXe">
                </asp:DropDownList>
            </div>
        </div>
        
        <div>
            <div>
                <asp:Label ID="lblGiaVeTu" runat="server" Text="Giá vé từ"></asp:Label>
            </div>
            
            <div>
                <asp:TextBox ID="txtGiaVeTu" runat="server"></asp:TextBox>
            </div>
        </div>
        
        <div>
            <div>
                <asp:Label ID="lblGiaVeDen" runat="server" Text="đến"></asp:Label>
            </div>
            
            <div>
                <asp:TextBox ID="txtGiaVeDen" runat="server"></asp:TextBox>
            </div>
        </div>
        
        <div>
            <asp:Button ID="btnTimKiem" runat="server" Text="Tìm" 
                onclick="btnTimKiem_Click" />
        </div>
    </div>
    
    <asp:Panel ID="pnlResult" runat="server">
        <div>
            <asp:Label ID="lblKetQua" runat="server" Text="Các kết quả phù hợp"></asp:Label>
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