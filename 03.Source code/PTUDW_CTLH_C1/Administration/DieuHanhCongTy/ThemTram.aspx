<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThemTram.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhCongTy.ThemTram" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ThemTram" Src="~/WUC/Tram/wucThemTram.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../../Shared/Css/Style.css" rel="Stylesheet" type="text/css" />
<div style="text-align:center">
    <asp:Label CssClass="Title" runat="server" Text="Thêm Trạm" ForeColor="Black"></asp:Label>
</div>
    <wuc:ThemTram runat="server" />
</asp:Content>
