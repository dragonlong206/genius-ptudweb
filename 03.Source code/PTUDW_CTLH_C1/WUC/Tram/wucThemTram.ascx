<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemTram.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Tram.wucThemTram" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsTramXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    TableName="TRAM_XEs" EnableInsert="True">
</asp:LinqDataSource>

<asp:LinqDataSource ID="ldsNhanVienDieuHanhTram" runat="server" 
    onselecting="ldsNhanVienDieuHanhTram_Selecting">
</asp:LinqDataSource>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ldsTramXe" 
    DefaultMode="Insert">
    
    <InsertItemTemplate>
        TenTruongTram:
        <asp:ComboBox ID="cboTruongTram" runat="server" 
            AutoCompleteMode="SuggestAppend" DataSourceID="ldsNhanVienDieuHanhTram" 
            DataTextField="HoTen" DataValueField="MaNhanVien" MaxLength="0" 
            SelectedValue='<%# Bind("MaTruongTram") %>' style="display: inline;">
        </asp:ComboBox>
        <br />
        HinhAnh:
        <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
        <br />
        DiaChi:
        <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
        <br />
        TenTramXe:
        <asp:TextBox ID="TenTramXeTextBox" runat="server" 
            Text='<%# Bind("TenTramXe") %>' />
        <br />
     
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    
</asp:FormView>

