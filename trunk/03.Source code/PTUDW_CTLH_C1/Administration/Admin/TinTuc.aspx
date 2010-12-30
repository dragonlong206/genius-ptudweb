<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.Admin.TinTuc" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="QuanLyTinTuc" Src="~/WUC/TinTuc/wucQuanLyTinTuc.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:QuanLyTinTuc ID="wucQuanLyTinTuc" runat="server" />
</asp:Content>
