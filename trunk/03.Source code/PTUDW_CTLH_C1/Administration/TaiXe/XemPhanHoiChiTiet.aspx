<%@ Page Language="C#" MasterPageFile="~/Administration/TaiXe/TaiXe.Master" AutoEventWireup="true"
    CodeBehind="XemPhanHoiChiTiet.aspx.cs" Inherits="PTUDW_CTLH_C1.XemPhanHoiChiTiet"
    Title="Chi tiết phản hồi" %>

<%@ Register TagPrefix="wuc" TagName="XemPhanHoiChiTiet" Src="~/WUC/PhanHoi/wucXemPhanHoiChiTiet.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:XemPhanHoiChiTiet runat="server"></wuc:XemPhanHoiChiTiet>
</asp:Content>
