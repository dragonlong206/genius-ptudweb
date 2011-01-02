<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="XacNhanToiTram.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.XacNhanToiTram" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="XacNhanToiTram" Src="~/WUC/ChuyenXe/wucXacNhanXeDenTram.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:XacNhanToiTram ID="wucXacNhanToiTram" runat="server" />
</asp:Content>

