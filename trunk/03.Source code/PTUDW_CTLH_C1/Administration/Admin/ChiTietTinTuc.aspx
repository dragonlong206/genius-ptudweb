<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ChiTietTinTuc.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.Admin.ChiTietTinTuc" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ChiTietTinTuc" Src="~/WUC/TinTuc/wucChiTietTinTuc.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ChiTietTinTuc ID="wucChiTietTinTuc" runat="server"></wuc:ChiTietTinTuc>
</asp:Content>
