<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThemTuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.ThemTuyen" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ThemTuyen" Src="~/WUC/TuyenXe/wucThemTuyen.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ThemTuyen ID="wucThemTuyen" runat="server" />
</asp:Content>
