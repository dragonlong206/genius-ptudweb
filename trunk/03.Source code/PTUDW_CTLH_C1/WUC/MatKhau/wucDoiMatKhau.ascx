<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDoiMatKhau.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.MatKhau.wucDoiMatKhau" %>
<style type="text/css">
    .style1
    {
        width: 350px;
    }
</style>
<table id="tbDoiMatKhau">
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="lblTieuDe" runat="server" Text="Đổi Mật Khẩu" 
                Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblTaiKhoan" runat="server" Text=""></asp:Label>
&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblMatKhauCu" runat="server" Text="Mật khẩu cũ"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtMatKhauCu" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtMatKhauCu" ErrorMessage="Mật khẩu cũ không hợp lệ">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td><asp:Label ID="lblMatKhauMoi" runat="server" Text="Mật khẩu mới"></asp:Label></td>
        <td class="style1"><asp:TextBox ID="txtMatKhauMoi" runat="server" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtMatKhauMoi" ErrorMessage="Mật khẩu mới không hợp lệ">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td><asp:Label ID="lblConfirmMatKhau" runat="server" Text="Xác nhận lại mật khẩu"></asp:Label></td>
        <td class="style1"><asp:TextBox ID="txtConfirmMatKhau" runat="server" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtConfirmMatKhau" 
                ErrorMessage="Xác nhận mật khẩu không hợp lệ">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnLuu" runat="server" Text="Lưu" onclick="btnLuu_Click" 
                style="height: 26px" />
            <asp:Button ID="btnHuy" runat="server" Text="Hủy" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
</table>