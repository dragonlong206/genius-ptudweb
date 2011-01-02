<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucThemTinTuc.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TinTuc.wucThemTinTuc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:LinqDataSource ID="ldsChiTietTinTuc" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableInsert="True" 
    TableName="TIN_TUCs">
</asp:LinqDataSource>

<asp:FormView ID="fvDangTin" runat="server" DataKeyNames="MaTinTuc" 
    DataSourceID="ldsChiTietTinTuc" DefaultMode="Insert" 
    onitemcommand="fvChiTietTinTuc_ItemCommand" 
    oniteminserted="fvDangTin_ItemInserted" 
    oniteminserting="fvDangTin_ItemInserting" >
    <InsertItemTemplate>
        <table>
             <tr>
                <td>
                    Tiêu đề:
                </td>
                <td>
                    <asp:TextBox ID="txtTieuDe" runat="server" Text='<%# Bind("TieuDe") %>' />
                </td>
            </tr>
             <tr>
                <td>
                    Hình ảnh:
                </td>
                <td>
                    <asp:AsyncFileUpload ID="afuHinhAnh" runat="server" 
                         FailedValidation="False" />
                </td>
            </tr>
             <tr>
                <td>
                    Tóm tắt:
                </td>
                <td>
                    <asp:TextBox ID="txtTomTat" CssClass="MultilineTextBox" runat="server" Text='<%# Bind("TomTat") %>' TextMode="MultiLine" />
                </td>
            </tr>
             <tr>
                <td>
                    Nội dung:
                </td>
                <td>
                    <asp:TextBox ID="txtNoiDung" CssClass="MultilineTextBox" runat="server" Text='<%# Bind("NoiDung") %>' TextMode="MultiLine" />
                </td>
            </tr>
             <tr>
                <td>
                    Ngày đăng:
                </td>
                <td>
                    <asp:TextBox ID="txtNgayDang" runat="server" 
                    Text='<%# Bind("NgayDang") %>' ReadOnly="True" />
                    <asp:CalendarExtender ID="cleNgayDang" runat="server" ClearTime="true"
                        TargetControlID="txtNgayDang" SelectedDate='<%# DateTime.Now.Date %>' 
                        TodaysDateFormat="dd/MM/yyyy" >
                    </asp:CalendarExtender>
                </td>
            </tr>            
        </table>
        <br />
        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Lưu" />
        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </InsertItemTemplate>
</asp:FormView>
<asp:Label ID="lblTemp" runat="server" Text=""></asp:Label>