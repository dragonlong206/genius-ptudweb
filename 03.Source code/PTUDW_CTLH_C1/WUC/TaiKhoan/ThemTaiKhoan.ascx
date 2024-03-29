﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThemTaiKhoan.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.TaiKhoan.ThemTaiKhoan" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:LinqDataSource ID="ldsTaiKhoan" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    EnableInsert="True" TableName="TAI_KHOANs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsNhanVien" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    Select="new (MaNhanVien, HoTen)" TableName="NHAN_VIENs">
</asp:LinqDataSource>

<asp:Panel ID="pnlThemTaiKhoan" runat="server">
    <div style="text-align: center">
        <asp:Label ID="Label2" runat="server" CssClass="Title" ForeColor="Black" Text="THÊM TÀI KHOẢN"></asp:Label>
    </div>
    <br />
    <asp:FormView  ID="FormView1" runat="server" DataKeyNames="MaTaiKhoan" DataSourceID="ldsTaiKhoan"
        DefaultMode="Insert" OnItemCommand="FormView1_ItemCommand" Width="636px" OnItemInserted="FormView1_ItemInserted">
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>
                        Tên tài khoản:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Text='<%# Bind("Username") %>' />
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Chưa nhập tên tài khoản"
                            Font-Italic="True" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mật khẩu:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("Password") %>' />
                        <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtPassword">
                        </asp:PasswordStrength>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Font-Italic="true" ErrorMessage="Chưa nhập mật khẩu"
                            ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>' />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Chưa đúng định dạng email"
                            Font-Italic="True" ValidationExpression="\w+(-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Ngày kích hoạt:
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgayKichHoat" runat="server" Text='<%# Bind("NgayKichHoat") %>' />
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtNgayKichHoat">
                        </asp:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Tên Nhân Viên:
                    </td>
                    <td>
                        <asp:ComboBox ID="cbMaNhanVien" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ldsNhanVien"
                            DataTextField="HoTen" DataValueField="MaNhanVien" MaxLength="0" SelectedValue='<%# Bind("MaNhanVien") %>'
                            Style="display: inline;">
                        </asp:ComboBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Thêm" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Hủy" />
        </InsertItemTemplate>
    </asp:FormView>
</asp:Panel>

