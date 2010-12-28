<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuQuenMatKhauc.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.MatKhau.wuQuenMatKhauc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<table style="width: 100%;" width="500">
    <tr>
        <td colspan="2" style="text-align:center">
            <asp:Label ID="lbl" runat="server" Text="Quên Mật Khẩu" Font-Size="X-Large"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblEmail" runat="server" Text="Nhập địa chỉ email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Email không có trong hệ thống" ControlToValidate="txtEmail">(*)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align:center">
            <asp:Button ID="btnGui" runat="server" Text="Gửi" onclick="btnGui_Click" />
            <asp:Button ID="btnHuy" runat="server" Text="Hủy" />
        </td>
    </tr>
    <tr>
        <td colspan="2" >
            <asp:ValidationSummary ID="vsMessage" runat="server" />
        </td>
    </tr>
</table>
