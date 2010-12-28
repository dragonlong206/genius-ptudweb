<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.DoiMatKhau" Title="Untitled Page" %>
<%@ Register TagName="DoiMatKhau" TagPrefix="wuc" Src="~/WUC/MatKhau/wucDoiMatKhau.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:DoiMatKhau runat="server" />
</asp:Content>
