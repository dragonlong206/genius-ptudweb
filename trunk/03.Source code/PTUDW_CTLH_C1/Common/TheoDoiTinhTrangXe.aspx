<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TheoDoiTinhTrangXe.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TheoDoiTinhTrangXe" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="CacChuyenTrongNgay" Src="~/WUC/ChuyenXe/wucCacChuyenChayTrongNgay.ascx" %>
<%@ Register TagPrefix="wuc" TagName="CacChuyenVeTrongNgay" Src="~/WUC/ChuyenXe/wucCacChuyenVeTrongNgay.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CacChuyenTrongNgay runat="server" />
    <wuc:CacChuyenVeTrongNgay runat="server" />
</asp:Content>
