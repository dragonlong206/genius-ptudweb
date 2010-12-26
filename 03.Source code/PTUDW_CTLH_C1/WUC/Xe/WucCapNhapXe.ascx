<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WucCapNhapXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Xe.WucCapNhapXe" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>

            
<asp:LinqDataSource ID="ldsCapNhapXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    Select="new (MaXe, BienSoXe)">
</asp:LinqDataSource>

<asp:LinqDataSource ID="LdsXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    Where="MaXe == @MaXe">
    <WhereParameters>
        <asp:ControlParameter ControlID="cboDanhSachXe" Name="MaXe" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>

<asp:ComboBox ID="cboDanhSachXe" runat="server" 
    AutoCompleteMode="SuggestAppend" DataSourceID="ldsCapNhapXe" 
    DataTextField="BienSoXe" DataValueField="MaXe" MaxLength="0" 
    style="display: inline;" 
    onselectedindexchanged="cboDanhSachXe_SelectedIndexChanged">
</asp:ComboBox>
<br />
<br />
<asp:FormView ID="fvXe" runat="server" DataSourceID="LdsXe" DataKeyNames="MaXe" 
    DefaultMode="Edit">
    <EditItemTemplate>
        MaXe:
        <asp:Label ID="MaXeLabel1" runat="server" Text='<%# Eval("MaXe") %>' />
        <br />
        BienSoXe:
        <asp:TextBox ID="BienSoXeTextBox" runat="server" 
            Text='<%# Bind("BienSoXe") %>' />
        <br />
        MaTaiXe:
        <asp:TextBox ID="MaTaiXeTextBox" runat="server" Text='<%# Bind("MaTaiXe") %>' />
        <br />
        NgayNhap:
        <asp:TextBox ID="NgayNhapTextBox" runat="server" 
            Text='<%# Bind("NgayNhap") %>' />
        <br />
        MaLoaiXe:
        <asp:TextBox ID="MaLoaiXeTextBox" runat="server" 
            Text='<%# Bind("MaLoaiXe") %>' />
        <br />
        TinhTrang:
        <asp:TextBox ID="TinhTrangTextBox" runat="server" 
            Text='<%# Bind("TinhTrang") %>' />
        <br />
        
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        BienSoXe:
        <asp:TextBox ID="BienSoXeTextBox" runat="server" 
            Text='<%# Bind("BienSoXe") %>' />
        <br />
        MaTaiXe:
        <asp:TextBox ID="MaTaiXeTextBox" runat="server" Text='<%# Bind("MaTaiXe") %>' />
        <br />
        NgayNhap:
        <asp:TextBox ID="NgayNhapTextBox" runat="server" 
            Text='<%# Bind("NgayNhap") %>' />
        <br />
        MaLoaiXe:
        <asp:TextBox ID="MaLoaiXeTextBox" runat="server" 
            Text='<%# Bind("MaLoaiXe") %>' />
        <br />
        TinhTrang:
        <asp:TextBox ID="TinhTrangTextBox" runat="server" 
            Text='<%# Bind("TinhTrang") %>' />
        <br />
        CHUYEN_XEs:
        <asp:TextBox ID="CHUYEN_XEsTextBox" runat="server" 
            Text='<%# Bind("CHUYEN_XEs") %>' />
        <br />
        TINH_TRANG_XE:
        <asp:TextBox ID="TINH_TRANG_XETextBox" runat="server" 
            Text='<%# Bind("TINH_TRANG_XE") %>' />
        <br />
        NHAN_VIEN:
        <asp:TextBox ID="NHAN_VIENTextBox" runat="server" 
            Text='<%# Bind("NHAN_VIEN") %>' />
        <br />
        LOAI_XE:
        <asp:TextBox ID="LOAI_XETextBox" runat="server" Text='<%# Bind("LOAI_XE") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaXe:
        <asp:Label ID="MaXeLabel" runat="server" Text='<%# Eval("MaXe") %>' />
        <br />
        BienSoXe:
        <asp:Label ID="BienSoXeLabel" runat="server" Text='<%# Bind("BienSoXe") %>' />
        <br />
        MaTaiXe:
        <asp:Label ID="MaTaiXeLabel" runat="server" Text='<%# Bind("MaTaiXe") %>' />
        <br />
        NgayNhap:
        <asp:Label ID="NgayNhapLabel" runat="server" Text='<%# Bind("NgayNhap") %>' />
        <br />
        MaLoaiXe:
        <asp:Label ID="MaLoaiXeLabel" runat="server" Text='<%# Bind("MaLoaiXe") %>' />
        <br />
        TinhTrang:
        <asp:Label ID="TinhTrangLabel" runat="server" Text='<%# Bind("TinhTrang") %>' />
        <br />
        CHUYEN_XEs:
        <asp:Label ID="CHUYEN_XEsLabel" runat="server" 
            Text='<%# Bind("CHUYEN_XEs") %>' />
        <br />
        TINH_TRANG_XE:
        <asp:Label ID="TINH_TRANG_XELabel" runat="server" 
            Text='<%# Bind("TINH_TRANG_XE") %>' />
        <br />
        NHAN_VIEN:
        <asp:Label ID="NHAN_VIENLabel" runat="server" Text='<%# Bind("NHAN_VIEN") %>' />
        <br />
        LOAI_XE:
        <asp:Label ID="LOAI_XELabel" runat="server" Text='<%# Bind("LOAI_XE") %>' />
        <br />
    </ItemTemplate>
</asp:FormView>

