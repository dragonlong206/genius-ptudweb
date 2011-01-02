<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="XemLuong.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.TaiXe.XemLuong" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="XemLuong" Src="~/WUC/NhanVien/wucXemLuong.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<wuc:XemLuong  ID="wucXemLuong" runat="server" />
</asp:Content>
