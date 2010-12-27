<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimNhanVien.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.NhanVien.wucTimNhanVien" %>
<table>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="lblTieuDe" runat="server" Text="Tra cứu nhân viên" Font-Size="X-Large"></asp:Label> 
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblHoTen" runat="server" Text="Họ tên"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Chưa nhập tên nhân viên cần tìm" Text="(*)" 
                ControlToValidate="txtHoTen">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align:center">
            <asp:Button ID="btnTim" runat="server" Text="Tìm kiếm" onclick="btnTim_Click" />
        </td>
    </tr>
    <tr>
        <asp:ValidationSummary ID="vldThongBaoLoi" runat="server" />
    </tr>
</table>

<asp:Label ID="lblKetQua" runat="server"></asp:Label> 

<asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="MaNhanVien" HeaderText="MaNhanVien" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaNhanVien" />
        <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
        <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" 
            SortExpression="DienThoai" />
        <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" 
            SortExpression="DiaChi" />
        <asp:BoundField DataField="LoaiNhanVien" HeaderText="LoaiNhanVien" 
            SortExpression="LoaiNhanVien" />
        <asp:BoundField DataField="LuongTrongThang" HeaderText="LuongTrongThang" 
            SortExpression="LuongTrongThang" />
    </Columns>
</asp:GridView>
