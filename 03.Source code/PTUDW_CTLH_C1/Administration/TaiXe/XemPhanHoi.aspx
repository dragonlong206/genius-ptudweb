<%@ Page Language="C#" MasterPageFile="~/Administration/TaiXe/TaiXe.Master" AutoEventWireup="true"
    CodeBehind="XemPhanHoi.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.XemPhanHoi" Title="Xem phản hồi" %>

<%@ Register TagName="XemPhanHoi" TagPrefix="wuc" Src="~/WUC/PhanHoi/wucXemPhanHoi.ascx" %>
<%@ Register TagName="XemPhanHoiChiTiet" TagPrefix="wuc" Src="~/WUC/PhanHoi/wucXemPhanHoiChiTiet.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:XemPhanHoi runat="server" />
</asp:Content>
