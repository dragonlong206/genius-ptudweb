<%@ Page Language="C#" MasterPageFile="~/Administration/TaiXe/TaiXe.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.TaiXe.Default"
    Title="Tài xế" %>

<%@ Register TagPrefix="wuc" TagName="XemLichChayKeTiep" Src="~/WUC/NhanVien/wucXemLichChayKeTiep.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:XemLichChayKeTiep ID="wucXemLichChayKeTiep" runat="server"></wuc:XemLichChayKeTiep>
</asp:Content>
