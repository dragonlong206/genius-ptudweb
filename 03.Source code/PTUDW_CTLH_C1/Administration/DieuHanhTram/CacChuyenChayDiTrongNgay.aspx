<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="CacChuyenChayDiTrongNgay.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.CacChuyenChayDiTrongNgay" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="CacChuyenChayDi" Src="~/WUC/ChuyenXe/wucCacChuyenChayTrongNgay.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CacChuyenChayDi  ID="CacChuyenChayTrongNgay" runat="server"/>
</asp:Content>
