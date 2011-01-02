<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCapNhatTram.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Tram.wucCapNhatTram" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Label ID="lblMoiGoi" Text="Chọn trạm cần chỉnh sửa: " runat="server"></asp:Label><br />
<asp:ComboBox ID="cboTimKiemTram" runat="server" 
    AutoCompleteMode="SuggestAppend" DataSourceID="lbsTram" 
    DataTextField="TenTramXe" DataValueField="MaTramXe" MaxLength="0" 
    style="display: inline;">
</asp:ComboBox>
<asp:Button ID="bntTimLiem" runat="server" Text="Tìm" 
    onclick="bntTimLiem_Click" />
<asp:LinqDataSource ID="lbsTram" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    TableName="TRAM_XEs">
</asp:LinqDataSource>

<asp:LinqDataSource ID="lbsDsTram" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableUpdate="True" 
    TableName="TRAM_XEs" Where="MaTramXe == @MaTramXe">
    <WhereParameters>
        <asp:ControlParameter ControlID="cboTimKiemTram" Name="MaTramXe" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>


<asp:FormView ID="fvDsTram" Visible="false" runat="server" DataKeyNames="MaTramXe" 
    DataSourceID="lbsDsTram" DefaultMode="Edit" Width="377px">
    <EditItemTemplate>
        
      
    <table>
        <tr>
            <td>
            Tên Trạm Xe:
        
            </td>
            <td>
            
        <asp:TextBox ID="TenTramXeTextBox" runat="server" 
            Text='<%# Bind("TenTramXe") %>' />
            </td>
        </tr>
        <tr>
            <td>
             Địa Chỉ:
        
            </td>
            <td>
          
        <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
        
            </td>
        </tr>
        <tr>
            <td>
            Hình Ảnh:
       
            </td>
            <td>
            
        <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
        
            </td>
        </tr>
        <tr>
            <td>
              Tên Trưởng Trạm:
       
            </td>
            <td>
             
       
                <asp:ComboBox ID="cboTenTruongTram" runat="server" AutoCompleteMode="SuggestAppend" 
                    DataSourceID="ldsDsDieuHanhTram" DataTextField="HoTen" 
                    DataValueField="MaNhanVien" MaxLength="0" 
                    SelectedValue='<%# Bind("MaTruongTram") %>' style="display: inline;">
                </asp:ComboBox>
            </td>
        </tr>
    </table>
     <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Cập nhật" OnClientClick="return confirm('Bạn muốn cập nhật lại trạm vừa sửa?');" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Hủy" />
            
    </EditItemTemplate>
       
</asp:FormView>
<asp:LinqDataSource ID="ldsDsDieuHanhTram" runat="server" 
    onselecting="ldsDsDieuHanhTram_Selecting">
</asp:LinqDataSource>

