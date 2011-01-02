<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="CacChuyenVeTrongNgay.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.CacChuyenVeTrongNgay" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="CacChuyenVeTram" Src="~/WUC/ChuyenXe/wucCacChuyenVeTrongNgay.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CacChuyenVeTram ID="wucCacChuyenVeTram" runat="server" />
</asp:Content>

