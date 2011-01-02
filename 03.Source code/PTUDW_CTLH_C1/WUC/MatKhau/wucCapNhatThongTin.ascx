<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCapNhatThongTin.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.MatKhau.wucCapNhatThongTin" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False"
    DataSourceID="ldsNhanVien" DataKeyNames="MaNhanVien" BackColor="White" 
    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    GridLines="Vertical">
    <FieldHeaderStyle Font-Bold="True" Width="140px"/>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="30px" Font-Size="18px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <EditRowStyle BackColor="Red" ForeColor="Black" Height="30px" Font-Size="18px" />

    <Fields>
        <asp:BoundField DataField="MaNhanVien" HeaderText="MaNhanVien" ReadOnly="True" SortExpression="MaNhanVien"
            InsertVisible="False" Visible="false" />
        <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" />
        <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" SortExpression="DienThoai" />
        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
        <asp:BoundField DataField="LoaiNhanVien" HeaderText="LoaiNhanVien" Visible="false"
            SortExpression="LoaiNhanVien" />
        <asp:BoundField DataField="LuongTrongThang" HeaderText="LuongTrongThang" Visible="false"
            SortExpression="LuongTrongThang" />
        <asp:CommandField ShowEditButton="True" ShowHeader="True" CancelText="Hủy" EditText="Cập nhật"
            UpdateText="Lưu" />
    </Fields>
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="#DCDCDC" />
</asp:DetailsView>
<asp:LinqDataSource ID="ldsNhanVien" runat="server" EnableUpdate="True" EnableDelete="True"
    EnableInsert="True" ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="NHAN_VIENs"
    Where="MaNhanVien == @MaNhanVien">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="MaNhanVien" QueryStringField="MaNhanVien"
            Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
