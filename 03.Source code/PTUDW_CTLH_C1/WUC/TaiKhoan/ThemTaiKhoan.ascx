<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThemTaiKhoan.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TaiKhoan.ThemTaiKhoan" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
    
<asp:LinqDataSource ID="ldsTaiKhoan" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" EnableInsert="True" 
        TableName="TAI_KHOANs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsNhanVien" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" Select="new (MaNhanVien, HoTen)" 
        TableName="NHAN_VIENs">
</asp:LinqDataSource>
<asp:LinkButton ID="lnkThemTaiKhoan" runat="server" onclick="lnkThemTaiKhoan_Click">Thêm tài khoản</asp:LinkButton>
<asp:Panel ID="pnlThemTaiKhoan" runat="server" Visible="false">
    <h2>Thêm Tài Khoản</h2>    
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaTaiKhoan" 
        DataSourceID="ldsTaiKhoan" DefaultMode="Insert" 
        onitemcommand="FormView1_ItemCommand">
        
        <InsertItemTemplate>
        <table>
            <tr>
                <td>
                      Tên tài khoản:
                </td>
                <td>
                   <asp:TextBox ID="txtUsername" runat="server" Text='<%# Bind("Username") %>' />
                </td>
             </tr>
             <tr>
                <td>
                    Mật khẩu:
                </td>
                <td>
                     <asp:TextBox ID="txtPassword" runat="server"   Text='<%# Bind("Password") %>' /> 
                    <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtPassword">
                    </asp:PasswordStrength>               
                </td>
             </tr>
             <tr>
                <td>
                     Email:
                </td>
                <td>
                     <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>' />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Chưa đúng định dạng email" Font-Italic="True" ValidationExpression="\w+(-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                </td>
             </tr>
             <tr>
                <td>
                      Ngày kích hoạt:
                </td>
                <td>                
                    <asp:TextBox ID="txtNgayKichHoat" runat="server" Text='<%# Bind("NgayKichHoat") %>' />
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtNgayKichHoat">  </asp:CalendarExtender>
                </td>
             </tr>
             <tr>
                <td>
                     Tên Nhân Viên:
                </td>
                <td>
                
                    <asp:ComboBox ID="cbMaNhanVien" runat="server" AutoCompleteMode="SuggestAppend" 
                        DataSourceID="ldsNhanVien" DataTextField="HoTen" DataValueField="MaNhanVien" 
                        MaxLength="0" SelectedValue='<%# Bind("MaNhanVien") %>' 
                        style="display: inline;">
                    </asp:ComboBox>
                </td>
             </tr>
        </table>
          
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
       
    </asp:FormView>

</asp:Panel>
