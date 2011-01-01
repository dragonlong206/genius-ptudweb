<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="CapNhatThongTinCaNhan.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.CapNhatThongTinCaNhan" Title="Untitled Page" %>
<%@ Register TagName="CapNhatThongTinCaNhan" TagPrefix="wuc" Src="~/WUC/MatKhau/wucCapNhatThongTin.ascx" %>
<%@ Register TagName="DoiMatKhau" TagPrefix="wuc" Src="~/WUC/MatKhau/wucDoiMatKhau.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Thông tin cá nhân</h3>   
    <wuc:CapNhatThongTinCaNhan runat="server" />
    <br />
    <wuc:DoiMatKhau runat="server" />
    
</asp:Content>
