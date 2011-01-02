<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="NhatKiChuyenChay.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.TaiXe.NhatKiChuyenChay" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="XemNhatKi" Src="~/WUC/ChuyenXe/wucXemNhatKyChuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<wuc:XemNhatKi runat="server" ID="wucXemNhatKi" />
</asp:Content>
