<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XoaTaiKhoan.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TaiKhoan.XoaTaiKhoan" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsTaiKhoan" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    Select="new (MaTaiKhoan, Username)" TableName="TAI_KHOANs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTaiKhoanFull" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableDelete="True" 
    TableName="TAI_KHOANs" Where="MaTaiKhoan == @MaTaiKhoan">
    <WhereParameters>
        <asp:ControlParameter ControlID="cbTaiKhoan" Name="MaTaiKhoan" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<h2>Xóa tài khoản</h2>
<table>
    <tr>
        <td>Tài khoản:</td>
        <td>
            <asp:ComboBox ID="cbTaiKhoan" runat="server" AutoCompleteMode="SuggestAppend" 
                DataSourceID="ldsTaiKhoan" DataTextField="Username" DataValueField="MaTaiKhoan" 
                MaxLength="0" style="display: inline;">
            </asp:ComboBox>
        </td>
    </tr>
</table>
<br />
<asp:Button ID="btTimKiem" runat="server" Text="Tìm kiếm" 
    onclick="btTimKiem_Click" />
<asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
<br />
<asp:GridView ID="dgvThongTinTaiKhoan" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaTaiKhoan" DataSourceID="ldsTaiKhoanFull" 
    onrowdeleted="dgvThongTinTaiKhoan_RowDeleted">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="MaTaiKhoan" HeaderText="MaTaiKhoan" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaTaiKhoan" />
        <asp:BoundField DataField="Username" HeaderText="Username" 
            SortExpression="Username" />
        <asp:BoundField DataField="Password" HeaderText="Password" 
            SortExpression="Password" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="NgayKichHoat" HeaderText="NgayKichHoat" 
            SortExpression="NgayKichHoat" />
        <asp:BoundField DataField="MaNhanVien" HeaderText="MaNhanVien" 
            SortExpression="MaNhanVien" />
    </Columns>
</asp:GridView>
