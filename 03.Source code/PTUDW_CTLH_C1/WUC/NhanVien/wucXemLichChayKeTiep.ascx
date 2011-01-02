<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemLichChayKeTiep.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucXemLichChayKeTiep" %>
<link href="../../Shared/Css/Style.css" rel="Stylesheet" type="text/css" />
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<div style="text-align: center">
    <asp:Label ID="lblTieuDe" runat="server" Text="Lịch chạy kế tiếp" CssClass="ThongBao"></asp:Label>
</div>
<asp:LinqDataSource ID="ldsDanhSachChuyenKe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="CHUYEN_XEs" OnSelecting="ldsDanhSachChuyenKe_Selecting">
</asp:LinqDataSource>
<br />
<br />
<asp:Label ID="lblKetQua" runat="server" CssClass="ThongBao"></asp:Label>
<br />
<br />
<asp:GridView ID="gvDanhSachChuyenKe" runat="server" CssClass="mGrid" AllowPaging="true"
    PagerStyle-CssClass="pgr" AutoGenerateColumns="False" DataKeyNames="MaChuyenXe"
    DataSourceID="ldsDanhSachChuyenKe" 
    onrowcreated="gvDanhSachChuyenKe_RowCreated">
    <Columns>
        <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" InsertVisible="False"
            ReadOnly="True" SortExpression="MaChuyenXe" />
        <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" SortExpression="KhoiHanh" />
        <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" SortExpression="DuKienDen" />
        <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến xe" SortExpression="TenTuyenXe" />
        <asp:BoundField DataField="Gia" HeaderText="Giá vé" SortExpression="GiaVe" />
        <asp:BoundField DataField="Luong" HeaderText="Lương tài xế" SortExpression="LuongTaiXe" />
        <asp:BoundField DataField="BienSoXe" HeaderText="Biển số xe" SortExpression="BienSoXe" />
    </Columns>
</asp:GridView>
