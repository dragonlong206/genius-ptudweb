<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TestWUC.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TestWUC" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="XacNhan" Src="~/WUC/ChuyenXe/wucXacNhanXeDenTram.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <wuc:XacNhan runat="server" />
</asp:Content>
