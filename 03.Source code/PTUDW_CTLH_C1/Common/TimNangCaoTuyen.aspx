<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TimNangCaoTuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TimNangCaoTuyen" %>
<%@ Register TagPrefix="wuc" TagName="TimTuyenNangCao" Src="~/WUC/TuyenXe/wucTimTuyenNangCao.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblTieuDe" runat="server" Text="TÌM TUYẾN NÂNG CAO" Font-Size="X-Large"></asp:Label>
    <wuc:TimTuyenNangCao runat="server" />
</asp:Content>
