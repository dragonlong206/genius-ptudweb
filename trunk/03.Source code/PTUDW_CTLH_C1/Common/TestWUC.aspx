<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true" CodeBehind="TestWUC.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TestWUC" Title="Untitled Page" %>
<%@ Register TagPrefix="wuc" TagName="TimNhanhTuyen" Src="~/WUC/TuyenXe/wucTimNhanhTuyen.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:TimNhanhTuyen ID="wucTimNhanhtuyen" runat="server" ></wuc:TimNhanhTuyen>
    <asp:HyperLink ID="hlDoiMatKhau" runat="server" NavigateUrl="~/Common/DoiMatKhau.aspx">Đổi mật khẩu</asp:HyperLink>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Common/CapNhatThongTinCaNhan.aspx">Cap nhat thong tin ca nhan</asp:HyperLink>
</asp:Content>
