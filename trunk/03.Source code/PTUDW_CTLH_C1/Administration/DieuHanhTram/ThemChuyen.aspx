<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThemChuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.ThemChuyen" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ThemChuyen" Src="~/WUC/ChuyenXe/wucThemChuyenXe.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ThemChuyen  ID="wucThemChuyen" runat="server"/>
</asp:Content>
