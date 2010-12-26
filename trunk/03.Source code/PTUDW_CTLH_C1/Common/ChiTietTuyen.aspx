<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ChiTietTuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.ChiTietTuyen" Title="Untitled Page" %>
<%@ Register TagName="ChiTietTuyen" TagPrefix="wuc" Src="~/WUC/TuyenXe/wucChiTietTuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <wuc:ChiTietTuyen ID="wucChiTietTuyen" runat="server" />
</asp:Content>
