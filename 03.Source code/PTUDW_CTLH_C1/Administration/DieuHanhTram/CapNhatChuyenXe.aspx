<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="CapNhatChuyenXe.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.CapNhatChuyenXe" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="CapNhatChuyen" Src="~/WUC/ChuyenXe/wucTimChuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CapNhatChuyen ID="CapNhatChuyen" runat="server" />
</asp:Content>
