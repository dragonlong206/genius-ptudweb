<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemChuyenXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucThemChuyenXe" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<div id="Wrapper">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:LinqDataSource ID="ldsChuyenXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" 
        TableName="CHUYEN_XEs" EnableInsert="True">
    </asp:LinqDataSource>
    
    <asp:LinqDataSource ID="ldsTuyenXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" 
        Select="new (MaTuyenXe, TenTuyenXe)" TableName="TUYEN_XEs">
    </asp:LinqDataSource>
    
    <asp:LinqDataSource ID="ldsXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" Select="new (MaXe, BienSoXe)" 
        TableName="XEs">
    </asp:LinqDataSource>
    
    <asp:FormView ID="fvChuyenXe" runat="server" DataKeyNames="MaChuyenXe" 
        DataSourceID="ldsChuyenXe" CellPadding="4" DefaultMode="Insert" 
        ForeColor="#333333">
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <RowStyle BackColor="#EFF3FB" />
        <InsertItemTemplate>
            <table>
                <tr class="TableColumnNormal">
                    <td>
                        Thời gian khởi hành:
                    </td>
                    <td>
                        <asp:TextBox ID="KhoiHanhTextBox" runat="server" 
                        Text='<%# Bind("KhoiHanh") %>' />
                    </td>
                </tr>
                
                <tr class="TableColumnNormal">
                    <td>
                        Thời gian đến (dự kiến):
                    </td>
                    
                    <td>
                        <asp:TextBox ID="DuKienDenTextBox" runat="server" 
                        Text='<%# Bind("DuKienDen") %>' />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Tên tuyến xe:
                    </td>
                    
                    <td>
                        <asp:ComboBox ID="ddlTuyenXe" runat="server" 
                        CssClass="WindowsStyle"
                        DataSourceID="ldsTuyenXe" 
                        DataTextField="TenTuyenXe" DataValueField="MaTuyenXe" 
                        AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;" 
                        SelectedValue='<%# Bind("MaTuyenXe") %>' />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Giá vé:
                    </td>
                    
                    <td>
                        <asp:TextBox ID="GiaVeTextBox" runat="server" Text='<%# Bind("GiaVe") %>' />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Lương tài xế:
                    </td>
                    
                    <td>
                        <asp:TextBox ID="LuongTaiXeTextBox" runat="server" 
                        Text='<%# Bind("LuongTaiXe") %>' />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Xe chạy chuyến này:
                    </td>
                    
                    <td>
                        <asp:ComboBox ID="ddlMaXe" runat="server" 
                        CssClass="WindowsStyle"
                        AutoCompleteMode="SuggestAppend" DataSourceID="ldsXe" DataTextField="BienSoXe" 
                        DataValueField="MaXe" MaxLength="0" style="display: inline;" 
                        SelectedValue='<%# Bind("MaXe") %>' />
                    </td>
                </tr>
            </table>
            
            <br />
            
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Thêm chuyến" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Hủy" />
        </InsertItemTemplate>
    </asp:FormView>
</div>