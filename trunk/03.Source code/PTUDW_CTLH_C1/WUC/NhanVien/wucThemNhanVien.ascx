<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemNhanVien.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.NhanVien.wucThemNhanVien" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsLoaiNhanVien" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="LOAI_NHAN_VIENs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsNhanVien" runat="server"
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="NHAN_VIENs" 
    EnableInsert="True">
    <InsertParameters>
        <asp:Parameter Name="HoTen" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="LuongTrongThang" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="DienThoai" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="DiaChi" ConvertEmptyStringToNull="true" />
    </InsertParameters>
</asp:LinqDataSource>

<asp:LinqDataSource ID="ldsTram" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TRAM_XEs">
</asp:LinqDataSource>

<asp:FormView ID="fvThemNhanVien" runat="server" DataKeyNames="MaNhanVien" 
    DataSourceID="ldsNhanVien" DefaultMode="Insert" Height="257px" 
    Width="238px" oniteminserted="fvThemNhanVien_ItemInserted" >
   <InsertItemTemplate>
       <table>               
           <tr>
               <td>Họ tên:</td>
               <td>
                    <asp:TextBox ID="txtHoTen" runat="server" 
                        Text='<%# Bind("HoTen") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Chưa nhập họ tên" Text="(*)" ControlToValidate="txtHoTen">
                    </asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td> Điện thoại:</td>
               <td>
                    <asp:TextBox ID="txtDienThoai" runat="server" 
                        Text='<%# Bind("DienThoai") %>' />
               </td>
           </tr>
           <tr>
               <td>Địa chỉ:</td>
               <td>
                    <asp:TextBox ID="txtDiaChi" runat="server" 
                        Text='<%# Bind("DiaChi") %>' />
               </td>
           </tr>
           <tr>
               <td>Loại nhân viên:</td>
               <td>
                   <asp:ComboBox ID="cboLoaiXe" runat="server" AutoCompleteMode="SuggestAppend" 
                       DataSourceID="ldsLoaiNhanVien" DataTextField="TenLoai" DataValueField="MaLoaiNhanVien"
                       MaxLength="0" style="display: inline;" 
                       SelectedValue='<%# Bind("LoaiNhanVien") %>'>
                   </asp:ComboBox>
               </td>
           </tr>
           <tr>
               <td>Lương trong tháng:</td>
               <td>
                    <asp:TextBox ID="txtLuong" runat="server"
                        Text='<%# Bind("LuongTrongThang") %>'/>
               </td>  
            </tr> 
            
            <tr>
               <td>Trạm:</td>
               <td>
                   <asp:ComboBox ID="cboTram" runat="server" AutoCompleteMode="SuggestAppend" 
                       DataSourceID="ldsTram" DataTextField="TenTramXe" DataValueField="MaTramXe"
                       MaxLength="0" style="display: inline;" 
                       SelectedValue='<%# Bind("MaTram") %>'>
                   </asp:ComboBox>
               </td>
           </tr>         
       </table>
          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Thêm nhân viên" />
          <asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Hủy" Text="Cancel" />
       
    </InsertItemTemplate>   
</asp:FormView>

<asp:ValidationSummary ID="vdsThongBaoLoi" runat="server" />
<asp:Label ID="lblThongBao" runat="server" Text="" ForeColor="Red" Font-Size="X-Large"></asp:Label>

