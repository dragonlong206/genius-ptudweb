<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TimNhanVien.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TimNhanVien" Title="Untitled Page" %>
<%@ Register TagName="TimNhanVien" TagPrefix="wuc" Src="~/WUC/NhanVien/wucTimNhanVien.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:TimNhanVien runat="server" />
</asp:Content>
