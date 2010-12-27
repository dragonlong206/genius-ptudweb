<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThemNhanVien.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.ThemNhanVien" Title="Untitled Page" %>
<%@ Register TagName="ThemNhanVien" TagPrefix="wuc" Src="~/WUC/NhanVien/wucThemNhanVien.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ThemNhanVien runat="server" />
</asp:Content>
