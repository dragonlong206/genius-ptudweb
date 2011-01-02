<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.TaiXe.Default" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="XemLichChayKeTiep" Src="~/WUC/NhanVien/wucXemLichChayKeTiep.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<wuc:XemLichChayKeTiep id="wucXemLichChayKeTiep" runat="server"></wuc:XemLichChayKeTiep>
</asp:Content>
