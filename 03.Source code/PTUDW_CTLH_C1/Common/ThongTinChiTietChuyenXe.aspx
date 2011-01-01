<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThongTinChiTietChuyenXe.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.ThongTinChiTietChuyenXe" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ChiTietChuyen" Src="~/WUC/ChuyenXe/wucChiTietChuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ChiTietChuyen runat="server" />
</asp:Content>
