<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="CapNhatThongTinCaNhan.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.CapNhatThongTinCaNhan" Title="Untitled Page" %>
<%@ Register TagName="CapNhatThongTinCaNhan" TagPrefix="wuc" Src="~/WUC/MatKhau/wucCapNhatThongTin.ascx" %>
<%@ Register TagName="DoiMatKhau" TagPrefix="wuc" Src="~/WUC/MatKhau/wucDoiMatKhau.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
        <asp:Label ID="lblTieuDe" runat="server" CssClass="Title" ForeColor="Black" Text="Thông Tin Cá Nhân"></asp:Label>
    </div>   
    <wuc:CapNhatThongTinCaNhan runat="server" />
    <br />
   
    <asp:LinkButton ID="lbtnDoiMatKhau" runat="server" PostBackUrl="~/Administration/DoiMatKhau.aspx">Đổi mật khẩu</asp:LinkButton>
</asp:Content>
