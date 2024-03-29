﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXoaTram.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Tram.wucXoaTram" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:ComboBox ID="cboTimTram" runat="server" AutoCompleteMode="SuggestAppend" 
    DataSourceID="ldsTimTram" DataTextField="TenTramXe" DataValueField="MaTramXe" 
    MaxLength="0" style="display: inline;">
</asp:ComboBox>
<asp:Button ID="btnTimKiem" runat="server" Text="Tìm" 
    onclick="btnTimKiem_Click" />
<asp:LinqDataSource ID="ldsTimTram" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TRAM_XEs" 
    Select="new (MaTramXe, TenTramXe)">
</asp:LinqDataSource>


<asp:LinqDataSource ID="ldsDanhSachTram" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TRAM_XEs" 
    EnableDelete="True" Where="MaTramXe == @MaTramXe">
    <WhereParameters>
        <asp:ControlParameter ControlID="cboTimTram" Name="MaTramXe" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:GridView ID="gvThongTinTram" runat="server" AllowPaging="True"  Visible="false"
    AutoGenerateColumns="False" DataKeyNames="MaTramXe" 
    DataSourceID="ldsDanhSachTram">
    <Columns>
        <asp:BoundField DataField="MaTramXe" HeaderText="MaTramXe" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaTramXe" />
        <asp:BoundField DataField="TenTramXe" HeaderText="TenTramXe" 
            SortExpression="TenTramXe" />
        <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" 
            SortExpression="DiaChi" />
        <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" 
            SortExpression="HinhAnh" />
        <asp:TemplateField HeaderText="Tên trưởng trạm">
            <ItemTemplate>
                <asp:Label ID="lblTenTruongTram" runat="server" Text='<%# Eval("NHAN_VIEN.HoTen") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Xóa">
            <ItemTemplate>
                 <asp:LinkButton ID="lbtnXoa" Runat="server" CausesValidation="False"
               OnClientClick="return confirm('Bạn có muốn xóa trạm vừa chọn?');"
               CommandName="Delete">Xóa</asp:LinkButton> 
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>



