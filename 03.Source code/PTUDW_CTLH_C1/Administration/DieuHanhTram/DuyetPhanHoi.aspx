<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="DuyetPhanHoi.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.DuyetPhanHoi" Title="Untitled Page" %>
<%@ Register TagName="DuyetPhanHoi" TagPrefix="wuc" Src="~/WUC/PhanHoi/wucDuyetPhanHoi.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:DuyetPhanHoi ID="wucDuyetPhanHoi" runat="server" />
</asp:Content>