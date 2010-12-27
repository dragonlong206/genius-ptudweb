<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemNhanVien.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.NhanVien.wucThemNhanVien" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Label ID="lblThemNhanVien" runat="server" Text="Thêm nhân viên" Font-Size="X-Large"></asp:Label>

<asp:LinqDataSource ID="ldsLoaiNhanVien" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="LOAI_NHAN_VIENs">
</asp:LinqDataSource>
<asp:LinqDataSource  ID="ldsThemNhanVien" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableInsert="True"
    TableName="NHAN_VIENs">
</asp:LinqDataSource>

<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="335px" 
    AutoGenerateRows="False" DataKeyNames="MaNhanVien" 
    DataSourceID="ldsThemNhanVien" BorderStyle="None" AllowPaging="True">
    <Fields>
        <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaNhanVien" />
        <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" />
        <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" 
            SortExpression="DienThoai" />
        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" 
            SortExpression="DiaChi" />
        <asp:TemplateField HeaderText="Loại nhân viên" SortExpression="LoaiNhanVien">
            <ItemTemplate>        
                <%#Eval("LOAI_NHAN_VIEN.TenLoai")%>                
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlLoaiNhanVien" runat="server" DataSourceID="ldsLoaiNhanVien"
                     DataValueField="MaLoaiNhanVien" DataTextField="TenLoai" SelectedValue='<%#Bind("LoaiNhanVien")%>'></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="LuongTrongThang" HeaderText="Lương trong tháng" 
            SortExpression="LuongTrongThang" />
        <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" 
            EditText="Sửa" InsertText="Lưu" NewText="Thêm nhân viên" 
            ShowInsertButton="True" UpdateText="Cập nhật" />
    </Fields>
</asp:DetailsView>


