<%@ Page Title="Thống kê chuyến" Language="C#" MasterPageFile="~/Administration/DieuHanhCongTy/DieuHanhCongTy.Master" AutoEventWireup="true" CodeBehind="ThongKeChuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhCongTy.ThongKeChuyen" %>
<%@ Register TagPrefix="wuc" TagName="ThongKeChuyen" Src="~/WUC/ChuyenXe/ThongKeChuyen.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:ThongKeChuyen ID="wucThongKeChuyen" runat="server" />
</asp:Content>
