<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucChiTietSearchChuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.wucChiTietSearchChuyen" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<asp:Label ID="lbTieuDe" runat="server" Text="Danh Sách Các Chuyến" CssClass="ThongBao"></asp:Label>
    <asp:GridView ID="gvDSChuyen" runat="server" AutoGenerateColumns="False"  CssClass="mGrid" PagerStyle-CssClass="pgr"        DataKeyNames="MaChuyenXe" >
        <Columns>
            <asp:BoundField DataField="MaChuyenXe" HeaderText="MaChuyenXe" 
                InsertVisible="False" ReadOnly="True" SortExpression="MaChuyenXe" />
            <asp:BoundField DataField="KhoiHanh" HeaderText="KhoiHanh" 
                SortExpression="KhoiHanh" />
            <asp:BoundField DataField="DuKienDen" HeaderText="DuKienDen" 
                SortExpression="DuKienDen" />
            <asp:BoundField DataField="MaTuyenXe" HeaderText="MaTuyenXe" 
                SortExpression="MaTuyenXe" />
            <asp:BoundField DataField="GiaVe" HeaderText="GiaVe" SortExpression="GiaVe" />
            <asp:BoundField DataField="LuongTaiXe" HeaderText="LuongTaiXe" 
                SortExpression="LuongTaiXe" />
            <asp:BoundField DataField="MaXe" HeaderText="MaXe" SortExpression="MaXe" />
            <asp:BoundField DataField="MaTinhTrang" HeaderText="MaTinhTrang" 
                SortExpression="MaTinhTrang" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="CHUYEN_XEs" 
        Where="GiaVe &gt;= @GiaVe">
        <WhereParameters>
            <asp:QueryStringParameter Name="GiaVe" QueryStringField="MaTramDi" 
                Type="Double" />
        </WhereParameters>
    </asp:LinqDataSource>