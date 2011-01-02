<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemTram.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Tram.wucThemTram" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:LinqDataSource ID="ldsTramXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    TableName="TRAM_XEs" EnableInsert="True">
</asp:LinqDataSource>

<asp:LinqDataSource ID="ldsNhanVienDieuHanhTram" runat="server" 
    onselecting="ldsNhanVienDieuHanhTram_Selecting">
</asp:LinqDataSource>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ldsTramXe" 
    DefaultMode="Insert" oniteminserted="FormView1_ItemInserted" 
    oniteminserting="FormView1_ItemInserting" 
    onitemcommand="FormView1_ItemCommand">
    
    <InsertItemTemplate>
        <table>
        <tr>
            <td>
                Trưởng trạm
            </td>
            <td>
                <asp:ComboBox ID="cboTruongTram" runat="server" 
            AutoCompleteMode="SuggestAppend" DataSourceID="ldsNhanVienDieuHanhTram" 
            DataTextField="HoTen" DataValueField="MaNhanVien" MaxLength="0" 
            SelectedValue='<%# Bind("MaTruongTram") %>' style="display: inline;">
        </asp:ComboBox>
            </td>
        </tr>
        <tr>
            <td>
                Hình ảnh
            </td>
            <td>
                <asp:AsyncFileUpload ID="afuHinhAnh" runat="server" 
                         FailedValidation="False"  Width="200px"/>
            </td>
        </tr>
        <tr>
            <td>
                Địa chỉ
            </td>
            <td>
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            </td>
        </tr>
        <tr>
            <td>
                Tên trạm
            </td>
            <td>
                <asp:TextBox ID="TenTramXeTextBox" runat="server" 
            Text='<%# Bind("TenTramXe") %>' />
        <br />
            </td>
        </tr>
    </table>
        
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Thêm" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </InsertItemTemplate>
    
</asp:FormView>


<p>
    <asp:Label ID="lblKetQua" runat="server" CssClass="ThongBao"></asp:Label>
</p>



