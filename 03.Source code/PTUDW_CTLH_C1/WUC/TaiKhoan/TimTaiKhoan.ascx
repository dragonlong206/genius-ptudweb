<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimTaiKhoan.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.TaiKhoan.TimTaiKhoan" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<div style="text-align: center">
    <asp:Label ID="Label2" runat="server" CssClass="Title" ForeColor="Black" Text="CẬP NHẬT TÀI KHOẢN"></asp:Label>
</div>
<br />
<asp:Label ID="Label1" runat="server" Text="Tên tài khoản:"></asp:Label>
<asp:TextBox ID="txtTaiKhoan" runat="server"></asp:TextBox>
<asp:Button ID="btTimKiem" runat="server" Text="Tìm kiếm" OnClick="btTimKiem_Click" />
<asp:LinqDataSource ID="ldsDSNhanVien" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="TAI_KHOANs" Where="Username.Contains(@Username)" EnableDelete="True"
    EnableUpdate="True">
    <WhereParameters>
        <asp:ControlParameter ControlID="txtTaiKhoan" DefaultValue="&quot;Nam&quot;" Name="Username"
            PropertyName="Text" Type="String" />
    </WhereParameters>
</asp:LinqDataSource>
<br />
<asp:Label ID="lblThongBao" CssClass="ThongBao" runat="server"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaTaiKhoan"
    DataSourceID="ldsDSNhanVien" CssClass="mGrid" OnRowUpdating="GridView1_RowUpdating">
    <Columns>
        <asp:BoundField DataField="MaTaiKhoan" HeaderText="Mã tài khoản" InsertVisible="False"
            ReadOnly="True" SortExpression="MaTaiKhoan" />
        <asp:BoundField DataField="Username" HeaderText="Tên tài khoản" SortExpression="Username" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="NgayKichHoat" HeaderText="Ngày kích hoạt" SortExpression="NgayKichHoat" />
        <asp:TemplateField HeaderText="Nhân viên">
            <ItemTemplate>
                <%#Eval("NHAN_VIEN.HoTen") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lbtnCapNhat" runat="server" CommandName="Edit">Cập nhật</asp:LinkButton>
                <asp:LinkButton ID="lbtnXoa" runat="server" OnClientClick="return confirm('Có muốn xóa tài khoản vừa chọn?');"
                    CommandName="Delete">Xóa</asp:LinkButton>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:LinkButton ID="lbtnCapNhat" runat="server" OnClientClick="return confirm('Có muốn cập nhật tài khoản vừa sửa?');"
                    CommandName="Update">Lưu</asp:LinkButton>
                <asp:LinkButton ID="lbtnHuy" Text="Hủy" Width="55" CommandName="Cancel" runat="server" />
            </EditItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
