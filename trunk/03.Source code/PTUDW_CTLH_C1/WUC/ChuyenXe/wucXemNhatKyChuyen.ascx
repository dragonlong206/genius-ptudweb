<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemNhatKyChuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.XemNhatKyChuyen" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<link href="../../Shared/Css/Style.css"rel="Stylesheet" type="text/css" />
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />


<asp:Label ID="lblTieuDe" runat="server" Text="NHẬT KÍ CHUYẾN ĐÃ CHẠY" CssClass="ThongBao"></asp:Label>
<asp:UpdatePanel ID="pnlDsChuyen" runat="server">
<ContentTemplate>
<br />  
<br />
    <br />
   
<asp:Label ID="lblNgay" runat="server" Text="Nhập Ngày:"></asp:Label>


<asp:TextBox ID="txtNgayDuocChon" runat="server"></asp:TextBox>
<asp:CalendarExtender ID="cldNhatKi" runat="server" TargetControlID="txtNgayDuocChon">
</asp:CalendarExtender>




<asp:Button ID="btnXemChuyen" runat="server" onclick="btnXemChuyen_Click" 
    Text="Xem Nhật Kí" />
    <br />
    <br />
    <br />
   
  
    <asp:Label ID="lblThongBao" runat="server" CssClass="ThongBao"></asp:Label>

<asp:GridView ID="dgvDSChuyenXe" runat="server" AutoGenerateColumns="False" CssClass="mgrid" AllowPaging="true" PagerStyle-CssClass="pgr"
    DataKeyNames="MaChuyenXe" DataSourceID="ldsDSChuyenXe">
    <Columns>
        <asp:BoundField DataField="MaChuyenXe" HeaderText="MaChuyenXe" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaChuyenXe" />
        <asp:BoundField DataField="KhoiHanh" HeaderText="KhoiHanh" 
            SortExpression="KhoiHanh" />
        <asp:BoundField DataField="DuKienDen" HeaderText="DuKienDen" 
            SortExpression="DuKienDen" />
        <asp:BoundField DataField="TenTuyen" HeaderText="MaTuyenXe" 
            SortExpression="MaTuyenXe" />
        <asp:BoundField DataField="Gia" HeaderText="GiaVe" SortExpression="GiaVe" />
        <asp:BoundField DataField="Luong" HeaderText="LuongTaiXe" 
            SortExpression="LuongTaiXe" />
        <asp:BoundField DataField="BienSo" HeaderText="MaXe" SortExpression="MaXe" />
        <asp:BoundField DataField="MoTa" HeaderText="MaTinhTrang" 
            SortExpression="MaTinhTrang" />
    </Columns>
</asp:GridView>


</ContentTemplate>
</asp:UpdatePanel>



<asp:LinqDataSource ID="ldsDSChuyenXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="CHUYEN_XEs" 
    onselecting="ldsDSChuyenXe_Selecting">
</asp:LinqDataSource>



