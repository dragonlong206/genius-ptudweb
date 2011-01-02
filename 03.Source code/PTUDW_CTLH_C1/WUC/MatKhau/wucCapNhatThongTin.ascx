<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCapNhatThongTin.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.MatKhau.wucCapNhatThongTin" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:ToolkitScriptManager runat="server">
</asp:ToolkitScriptManager>
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
    AutoGenerateRows="False" DataSourceID="ldsNhanVien" 
    DataKeyNames="MaNhanVien">
    <Fields>
        <asp:BoundField DataField="MaNhanVien" HeaderText="MaNhanVien" ReadOnly="True" 
            SortExpression="MaNhanVien" InsertVisible="False" />
        <asp:BoundField DataField="HoTen" HeaderText="HoTen" 
            SortExpression="HoTen" />
        <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" 
            SortExpression="DienThoai" />
        <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" 
            SortExpression="DiaChi" />
        <asp:BoundField DataField="LoaiNhanVien" HeaderText="LoaiNhanVien" Visible=false 
            SortExpression="LoaiNhanVien" />
        <asp:BoundField DataField="LuongTrongThang" HeaderText="LuongTrongThang" Visible=false
            SortExpression="LuongTrongThang" />
        <asp:CommandField ShowEditButton="True" ShowHeader="True" 
            CancelText="Hủy" EditText="Cập nhật" UpdateText="Lưu" />
    </Fields>
</asp:DetailsView>
<asp:LinqDataSource ID="ldsNhanVien" runat="server" EnableUpdate="True" 
    EnableDelete="True" EnableInsert="True"
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="NHAN_VIENs" 
    Where="MaNhanVien == @MaNhanVien">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="MaNhanVien" 
            QueryStringField="MaNhanVien" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>


