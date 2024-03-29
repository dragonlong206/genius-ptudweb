﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDuyetPhanHoi.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.PhanHoi.wucGhiNhanPhanHoi" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Label ID="lblThongBao" runat="server" Visible="false"></asp:Label>
<asp:Repeater ID="rptPhanHoi" runat="server" 
    DataSourceID="ldsDanhSachPhanHoiChuaDuyet" 
    onitemcommand="rptPhanHoi_ItemCommand">
    <ItemTemplate>
        <div class="PhanHoiHeader">
            Đăng ngày:
            <asp:Label CssClass="NgayDang" Text='<%# Eval("NgayDang") %>' runat="server"></asp:Label>
        </div>
        <div class="PhanHoiContent">
            <asp:TextBox CssClass="NoiDung" Wrap="true" ReadOnly="true"  Width="100%" BorderStyle="None" BorderWidth="0px"
                TextMode="MultiLine" Rows="5" Text='<%# Eval("NoiDung") %>' runat="server"></asp:TextBox>
        </div>
        <div class="DuyetPhanHoi">
            Gửi phản hồi này cho tài xế:
            <asp:ComboBox ID="cboTaiXe" DataTextField="HoTen" DataValueField="MaNhanVien" AutoCompleteMode="SuggestAppend"
                DataSourceID="ldsTaiXe" MaxLength="0" Style="display: inline;" runat="server">
            </asp:ComboBox>
            <asp:Button ID="btnDuyet" runat="server" CommandArgument='<%# Eval("MaPhanHoi") %>' Text="Duyệt" CommandName="Duyet" />
            <asp:Label ID="lblDaDuyet" runat="server" Text="" ></asp:Label>
        </div>
    </ItemTemplate>        
</asp:Repeater>
<asp:LinqDataSource ID="ldsDanhSachPhanHoiChuaDuyet" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="PHAN_HOI_KHACH_HANGs" Where="TinhTrang == 1">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTaiXe" runat="server" OnSelecting="ldsTaiXe_Selecting">
</asp:LinqDataSource>
