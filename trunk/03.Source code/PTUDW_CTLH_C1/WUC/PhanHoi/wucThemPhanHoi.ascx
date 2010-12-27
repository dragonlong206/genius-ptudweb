<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemPhanHoi.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.PhanHoi.wucPhanHoi" %>



<table style="width: 100%;">
    <tr>
        <td>
            <asp:Label ID="lblTieuDe" runat="server" Text="Phản hồi" Font-Size="X-Large"></asp:Label>
        </td>
        
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtPhanHoi"
                runat="server" TextMode="MultiLine" Height="140px" Width="475px"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnLuu" runat="server" Text="Lưu" onclick="Button1_Click" />
        </td>
        
    </tr>
</table>
