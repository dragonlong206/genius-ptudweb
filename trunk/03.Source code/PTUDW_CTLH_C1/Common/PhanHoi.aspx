<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="PhanHoi.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.PhanHoi" %>
<%@ Register TagPrefix="wuc" TagName="PhanHoi" Src="~/WUC/PhanHoi/wucThemPhanHoi.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:PhanHoi runat="server" />
</asp:Content>
