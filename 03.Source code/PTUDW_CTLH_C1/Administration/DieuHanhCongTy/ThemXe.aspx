<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="ThemXe.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhCongTy.ThemXe" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="ThemXe" Src="~/WUC/Xe/wucThemXe.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
        <asp:Label runat="server" Text="Thêm Xe Mới" CssClass="ThongBao" BorderColor="Black"></asp:Label>
    </div>
    <wuc:ThemXe runat="server" />
</asp:Content>
