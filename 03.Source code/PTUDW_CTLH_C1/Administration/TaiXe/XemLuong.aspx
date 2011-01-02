<%@ Page Language="C#" MasterPageFile="~/Administration/TaiXe/TaiXe.Master" AutoEventWireup="true"
    CodeBehind="XemLuong.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.TaiXe.XemLuong"
    Title="Xem lương" %>

<%@ Register TagPrefix="wuc" TagName="XemLuong" Src="~/WUC/NhanVien/wucXemLuong.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:XemLuong ID="wucXemLuong" runat="server" />
</asp:Content>
