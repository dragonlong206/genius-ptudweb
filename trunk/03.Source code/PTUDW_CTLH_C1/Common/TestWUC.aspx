<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TestWUC.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TestWUC" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="TimNhanhTuyen" Src="~/WUC/TinTuc/wucQuanLyTinTuc.ascx" %>
<%@ Register TagPrefix="wuc" TagName="DanhSachTram" Src="~/WUC/Tram/wucDanhSachTram.ascx" %>
<%@ Register TagPrefix="wuc" TagName="CacChuyenChayTrongNgay" Src="~/WUC/ChuyenXe/wucCacChuyenChayTrongNgay.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CacChuyenChayTrongNgay runat="server"></wuc:CacChuyenChayTrongNgay>
</asp:Content>
