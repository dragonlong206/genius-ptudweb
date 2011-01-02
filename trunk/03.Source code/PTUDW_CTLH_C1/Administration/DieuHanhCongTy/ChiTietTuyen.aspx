<%@ Page Language="C#" MasterPageFile="~/Administration/DieuHanhCongTy/DieuHanhCongTy.Master" AutoEventWireup="true" CodeBehind="ChiTietTuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.ChiTietTuyen" Title="Chi tiết tuyến" %>
<%@ Register TagName="ChiTietTuyen" TagPrefix="wuc" Src="~/WUC/TuyenXe/wucChiTietTuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <wuc:ChiTietTuyen ID="wucChiTietTuyen" runat="server" />
</asp:Content>
