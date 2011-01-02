﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucPhanCongXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Xe.wucPhanCongXe" %>
<asp:LinqDataSource ID="ldsTaiXe" runat="server" 
    onselecting="ldsTaiXe_Selecting1">
</asp:LinqDataSource>
<asp:DropDownList ID="ddlPhanCong" runat="server" 
    onselectedindexchanged="ddlPhanCong_SelectedIndexChanged" 
    AutoPostBack="True">
    <asp:ListItem Value="0">
        Chưa phân công
    </asp:ListItem>
    <asp:ListItem Value="1">
        Đã phân công
    </asp:ListItem>
    <asp:ListItem Value="2">Tất cả</asp:ListItem>
</asp:DropDownList>
<asp:GridView ID="gvXe" runat="server" AutoGenerateColumns="False" 
    onselectedindexchanged="gvXe_SelectedIndexChanged" DataKeyNames="MaXe" 
    onrowediting="gvXe_RowEditing">
    <Columns>
        <asp:BoundField DataField="BienSoXe" HeaderText="Biển số xe"/>        
        <asp:BoundField DataField="NgayNhap" HeaderText="Ngày nhập" ReadOnly="true"/>
        <asp:TemplateField HeaderText="Tình trạng">
            <ItemTemplate>
                <asp:Label ID="lblTinhTrang" runat="server" Text='<%# Eval("TINH_TRANG_XE.TenTinhTrangXe") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Loại Xe">
            <ItemTemplate>
                <asp:Label ID="lblLoaiXe" runat="server" Text='<%# Eval("LOAI_XE.TenLoaiXe") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tài Xế" >
            <ItemTemplate>
                <%# Eval("MaTaiXe") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList runat="server" ID="ddlTaiXe" DataSourceID="ldsDSTaiXe"
                DataValueField="MaNhanVien" DataTextField="HoTen"
                ></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:CommandField SelectText="Lưu" ShowSelectButton="True" />
        <asp:CommandField CancelText="Hủy" EditText="Cập nhật" ShowEditButton="True" 
            UpdateText="Lưu" />
    </Columns>
</asp:GridView>
<asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
<asp:LinqDataSource ID="ldsXeDaPhanCong" runat="server" 
    onselecting="ldsXeDaPhanCong_Selecting">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsDSXe" runat="server" onselecting="ldsDSXe_Selecting">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsAllXe" runat="server" 
    onselecting="ldsAllXe_Selecting" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs">
</asp:LinqDataSource>






















<asp:LinqDataSource ID="ldsDSTaiXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="NHAN_VIENs" 
    Where="MaNhanVien == @MaNhanVien">
    <WhereParameters>
        <asp:ControlParameter ControlID="gvXe" DefaultValue="1" Name="MaNhanVien" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>






















