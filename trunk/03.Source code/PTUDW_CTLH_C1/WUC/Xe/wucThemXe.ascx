<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Xe.WUX" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsLoaiXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="LOAI_XEs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    EnableInsert="True">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTaiXe" runat="server" 
    onselecting="ldsTaiXe_Selecting" >
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTinhTrangXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TINH_TRANG_XEs">
</asp:LinqDataSource>
<p>
    <br />
</p>

<asp:FormView ID="fvThemXe" runat="server" DataKeyNames="MaXe" 
    DataSourceID="ldsXe" DefaultMode="Insert" Height="257px" Width="238px" 
    oniteminserted="fvThemXe_ItemInserted">
    <InsertItemTemplate>
           <table>
               
                <tr>
                   <td>
                    Biển số Xe:
               
                   </td>
                   <td>
                    <asp:TextBox ID="txtBienSoXe" runat="server" 
                    Text='<%# Bind("BienSoXe") %>' ontextchanged="txtBienSoXe_TextChanged" />
                   </td>
               </tr>
                <tr>
                   <td>
                       Tên Tài Xế:
               
                   </td>
                   <td>
                       <asp:ComboBox ID="cboTenTaiXe" runat="server" DataSourceID="ldsTaiXe" DataTextField="HoTen" 
                           DataValueField="MaNhanVien" MaxLength="0" 
                           SelectedValue='<%# Bind("MaTaiXe") %>' style="display: inline;">
                       </asp:ComboBox>
                   </td>
               </tr>
                <tr>
                   <td>
                    Ngày Nhập:
               
                   </td>
                   <td>
                       <asp:CalendarExtender ID="cleNgayNhap" runat="server" TargetControlID="txtNgayNhap">
                       </asp:CalendarExtender>
                    <asp:TextBox ID="txtNgayNhap" runat="server" 
                    Text='<%# Bind("NgayNhap") %>' />
                   </td>
               </tr>
                <tr>
                   <td>
                     Tên Loại Xe:
               
                   </td>
                   <td>
                       <asp:ComboBox ID="cboLoaiXe" runat="server" AutoCompleteMode="SuggestAppend" 
                           DataSourceID="ldsLoaiXe" DataTextField="TenLoaiXe" DataValueField="MaLoaiXe"
                           MaxLength="0" style="display: inline;" 
                           SelectedValue='<%# Bind("MaLoaiXe") %>'>
                       </asp:ComboBox>
                   </td>
               </tr>
                <tr>
                   <td>
                     Tình Trạng:
              
                   </td>
                   <td>
                       <asp:ComboBox ID="cboTinhTrang" runat="server" DataSourceID="ldsTinhTrangXe" 
                           DataTextField="TenTinhTrangXe" DataValueField="MaTinhTrangXe" MaxLength="0" 
                           style="display: inline;" SelectedValue='<%# Bind("TinhTrang") %>'>
                       </asp:ComboBox>
                   </td>
             
             
           </table>
          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />     
      
       
    </InsertItemTemplate>   
</asp:FormView>

<asp:Label ID="lblThongBao" runat="server" Text="" ForeColor="Red" Font-Size="X-Large"></asp:Label>

