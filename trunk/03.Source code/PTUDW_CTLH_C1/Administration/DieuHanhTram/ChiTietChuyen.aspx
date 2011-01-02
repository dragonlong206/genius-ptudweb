<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ChiTietChuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.ChiTietChuyen" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ChiTietChuyenXe" Src="~/Shared/Main_3col.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ChiTietChuyenXe  ID="wucChiTietChuyen" runat="server"/>
</asp:Content>
