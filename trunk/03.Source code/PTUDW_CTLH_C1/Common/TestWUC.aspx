<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TestWUC.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TestWUC" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="TimTaiKhoan" Src="~/WUC/TaiKhoan/TimTaiKhoan.ascx" %>
<%@ Register TagPrefix="wuc" TagName="ThemTaiKhoan" Src="~/WUC/TaiKhoan/ThemTaiKhoan.ascx" %>
<%@ Register TagPrefix="wuc" TagName="DoiMatKhau" Src="~/WUC/MatKhau/wucDoiMatKhau.ascx" %>
<%@ Register TagPrefix="wuc" TagName="XoaTram" Src="~/WUC/Tram/wucXoaTram.ascx" %>
<%@ Register TagPrefix="wuc" TagName="CapNhatXe" Src="~/WUC/Xe/WucCapNhapXe.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <wuc:CapNhatXe runat="server" />
</asp:Content>
