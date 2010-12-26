<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThemPhanHoiKhachHang.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.ThemPhanHoiKhachHang" Title="Untitled Page" %>
<%@ Register TagName="PhanHoiKhachHang" TagPrefix="wuc" Src="~/WUC/PhanHoi/wucPhanHoi.ascx" %>
<asp:Content ID="ThemPhanHoiKhachHang" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <wuc:PhanHoiKhachHang runat="server" />
</asp:Content>
