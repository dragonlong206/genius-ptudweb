<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemTuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucThemTuyen" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style type="text/css">
    .style2
    {
        width: 184px;
    }
    .style3
    {
    	
    }
    .Luu
    {
    	text-align:center;
    	
    }
    .style4
    {
        width: 149px;
    }
</style>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="DTO.CongTyLuHanhDataContext" 
                Select="new (TenTramXe, MaTramXe)" TableName="TRAM_XEs">
</asp:LinqDataSource>
            
<asp:Label ID="lblTitle" runat="server" Text="THÊM TUYẾN XE MỚI"></asp:Label>          

<table style="width: 100%;">
<tr align=center>
<td colspan=4>
    <asp:Label ID="lblThemTuyen" runat="server" Text="Thêm Tuyến Xe Mới" 
        Font-Size="XX-Large"></asp:Label></td>
</tr>
    <tr>
        <td class="style2">
            &nbsp;<asp:Label ID="lblTenTuyen" runat="server" Text="Tên tuyến"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;
            <asp:TextBox ID="txtTenTuyen" runat="server"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:Label ID="Label1" runat="server" Text="Giá vé"></asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:TextBox ID="txtGiaVe" runat="server"></asp:TextBox></td>
        <asp:FilteredTextBoxExtender ID="vldGiaVe" runat="server" 
            TargetControlID="txtGiaVe" FilterType="Numbers">
        </asp:FilteredTextBoxExtender>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;<asp:Label ID="lblTramDi" runat="server" Text="Trạm đi"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="ddlTramDi" runat="server" DataSourceID="LinqDataSource1" 
                DataTextField="TenTramXe" DataValueField="MaTramXe">
            </asp:DropDownList>
        </td>
        <td class="style4">
            <asp:Label ID="lblTramDen" runat="server" Text="Trạm đến"></asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:DropDownList ID="ddlTramDen" runat="server" DataSourceID="LinqDataSource1" 
                DataTextField="TenTramXe" DataValueField="MaTramXe">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;<asp:Label ID="lblChayTrong" runat="server" Text="Chạy trong"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;
            <span>
                <asp:TextBox ID="txtChayTrong" runat="server"></asp:TextBox>
                &nbsp;(giờ)
            </span>
        </td>
        <td class="style4">
            <asp:Label ID="lblLuongTaiXe" runat="server" Text="Lương tài xế"></asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:TextBox ID="txtLuongTaiXe" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="lblGioChayChuyenDau" runat="server" 
                Text="Giờ chạy chuyến đầu tiên"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txtGioChayChuyenDau" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvGioChayDau" runat="server" 
                ControlToValidate="txtGioChayChuyenDau" 
                ErrorMessage="Giờ chạy đầu tiên phải được nhập">*</asp:RequiredFieldValidator>
        </td>
        <td class="style4">
            <asp:Label ID="lblGioChayChuyenCuoi" runat="server" Text="Giờ chạy chuyến cuối"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtGioChayChuyenCuoi" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="lblTanSuatChuyen" runat="server" Text="Tần suất chuyến"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txtTanSuatChuyen" runat="server"></asp:TextBox>
        </td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td colspan="2" class="Luu">
            <asp:Button ID="btnLuu" runat="server" Text="Lưu" onclick="btnLuu_Click" />
            <asp:Button ID="btnNhapLai" runat="server" Text="Nhập lại toàn bộ" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td colspan="2" class="Luu">
            <asp:ValidationSummary ID="vsErrors" runat="server" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
