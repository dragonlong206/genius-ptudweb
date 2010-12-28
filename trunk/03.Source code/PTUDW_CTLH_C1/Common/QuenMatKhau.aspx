<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.QuenMatKhau" Title="Untitled Page" %>
<%@ Register TagName="QuenMatKhau" TagPrefix="wuc" Src="~/WUC/MatKhau/wuQuenMatKhauc.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:QuenMatKhau runat=server />
</asp:Content>
