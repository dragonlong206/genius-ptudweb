<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="CapNhatTaiKhoan.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.Admin.CapNhatTaiKhoan" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="CapNhatTaiKhoan" Src="~/WUC/TaiKhoan/TimTaiKhoan.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CapNhatTaiKhoan runat="server" />
</asp:Content>
