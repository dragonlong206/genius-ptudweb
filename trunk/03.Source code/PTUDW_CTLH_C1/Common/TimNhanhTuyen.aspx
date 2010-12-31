<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TimNhanhTuyen.aspx.cs" Inherits="PTUDW_CTLH_C1.TimNhanhTuyen" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="TimNhanhTuyen" Src="~/WUC/TuyenXe/wucTimNhanhTuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblTieuDe" runat="server" Text="TÌM NHANH TUYẾN" Font-Size="X-Large"></asp:Label>
    <wuc:TimNhanhTuyen runat="server" />
    <asp:LinkButton ID="lbtnTimNangCao" runat="server" Text="Tìm nâng cao" PostBackUrl="~/Common/TimNangCaoTuyen.aspx"></asp:LinkButton>
</asp:Content>
