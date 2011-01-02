<%@ Page Language="C#" MasterPageFile="~/Administration/DieuHanhCongTy/DieuHanhCongTy.Master"
    AutoEventWireup="true" CodeBehind="CapNhatNhanVien.aspx.cs" Inherits="PTUDW_CTLH_C1.Administration.DieuHanhCongTy.CapNhatNhanVien"
    Title="Cập nhật nhân viên" %>

<%@ Register TagPrefix="wuc" TagName="CapNhatNhanVien" Src="~/WUC/NhanVien/wucTimNhanVien.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wuc:CapNhatNhanVien runat="server" />
</asp:Content>
