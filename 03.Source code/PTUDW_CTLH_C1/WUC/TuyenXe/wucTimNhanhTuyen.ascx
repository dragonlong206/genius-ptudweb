<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimNhanhTuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucTimNhanhTuyen" %>

<div id="Wrapper">
    <asp:LinqDataSource ID="ldsTramXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" OrderBy="TenTramXe" 
        Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
    </asp:LinqDataSource>
    <div>
        <asp:Label ID="lblTitle" runat="server" Text="Tìm nhanh tuyến xe"></asp:Label>
    </div>
    
    <div id="SearcRegion">
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
            <asp:Button ID="btnTimKiem" runat="server" Text="Tìm" 
                onclick="btnTimKiem_Click" />
        </div>
    </div>
    
    <asp:Panel ID="pnlResult" runat="server">
        <div>
            <asp:Label ID="lblKetQua" runat="server" Text="Các kết quả phù hợp"></asp:Label>
            
            <asp:GridView ID="grvDanhSachTuyen" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False">
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

