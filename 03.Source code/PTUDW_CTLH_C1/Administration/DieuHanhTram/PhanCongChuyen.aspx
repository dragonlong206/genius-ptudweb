<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="PhanCongChuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhTram.PhanCongChuyen" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="PhanCongChuyen" Src="~/WUC/ChuyenXe/wucPhanCongChuyen.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:PhanCongChuyen ID="wucPhanCongChuyen" runat="server" />
</asp:Content>
