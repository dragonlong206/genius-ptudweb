<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucChiTietTinTuc.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TinTuc.wucChiTietTinTuc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:LinqDataSource ID="ldsChiTietTinTuc" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableDelete="True" 
    EnableInsert="True" EnableUpdate="True" TableName="TIN_TUCs" 
    Where="MaTinTuc == @MaTinTuc">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="MaTinTuc" 
            QueryStringField="MaTinTuc" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>

<asp:FormView ID="fvChiTietTinTuc" runat="server" DataKeyNames="MaTinTuc" 
    DataSourceID="ldsChiTietTinTuc" 
    onitemdeleted="fvChiTietTinTuc_ItemDeleted" 
    oniteminserted="fvChiTietTinTuc_ItemInserted" 
    oniteminserting="fvChiTietTinTuc_ItemInserting" 
    onitemupdating="fvChiTietTinTuc_ItemUpdating" onitemupdated="fvChiTietTinTuc_ItemUpdated"
    >
    <EditItemTemplate>
        <table>
            <tr>
                <td>
                    Mã tin tức:
                </td>
                <td>
                    <asp:Label ID="lblMaTinTuc" runat="server" Text='<%# Eval("MaTinTuc") %>' />
                </td>
            </tr>
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
                    <asp:UpdatePanel ID="pnlHinhAnh" runat="server">  
                        <ContentTemplate>
                         <asp:Image ID="imgHinhAnh" ImageUrl='<%# "~/Images/TinTuc/" + Eval("HinhAnh") %>' AlternateText='<%# Eval("TieuDe") %>'
                      runat="server" />
                         <br />
                        <asp:AsyncFileUpload ID="afuHinhAnh" runat="server" onuploadedcomplete="afuHinhAnh_UploadedComplete" 
                                />
                        </ContentTemplate>                  
                    </asp:UpdatePanel>
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
                    <asp:TextBox ID="txtNoiDung" CssClass="MultilineTextBox" runat="server" Text='<%# Bind("NoiDung") %>' TextMode="MultiLine"/>
                </td>
            </tr>
             <tr>
                <td>
                    Ngày đăng:
                </td>
                <td>
                    <asp:TextBox ID="txtNgayDang" runat="server"
                    Text='<%# Bind("NgayDang") %>' />
                    <asp:CalendarExtender ID="cleNgayDang" runat="server" 
                        TargetControlID="txtNgayDang" TodaysDateFormat="dd/MM/yyyy" ClearTime="True" 
                        SelectedDate='<%# DateTime.Now.Date %>' >
                    </asp:CalendarExtender>
                </td>
            </tr>            
        </table>
       
        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Lưu" />
        &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Hủy" />
        
    </EditItemTemplate>
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
                         FailedValidation="False" 
                         onuploadedcomplete="afuHinhAnh_UploadedComplete_Insert" />
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
                    <asp:CalendarExtender ID="cleNgayDang" runat="server" 
                        TargetControlID="txtNgayDang" TodaysDateFormat="dd/MM/yyyy" 
                        SelectedDate = '<%# DateTime.Now %>' >
                    </asp:CalendarExtender>
                </td>
            </tr>            
        </table>
        <br />
        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Lưu"  />
        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </InsertItemTemplate>
    <ItemTemplate>
        <table style="border: solid 3px #ffffff">
            <tr>
                <td>
                    Mã tin tức:
                </td>
                <td>
                    <asp:Label ID="lblMaTinTuc" runat="server" Text='<%# Eval("MaTinTuc") %>' />
                </td>
            </tr>
             <tr>
                <td>
                    Tiêu đề:
                </td>
                <td>
                    <asp:Label ID="lblTieuDe" runat="server" Text='<%# Eval("TieuDe") %>' />
                </td>
            </tr>
             <tr>
                <td>
                    Hình ảnh:
                </td>
                <td>
                     <asp:Image ID="imgHinhAnh" CssClass="HinhDaiDien" 
                         ImageUrl='<%# "~/Images/TinTuc/" + Eval("HinhAnh") %>' AlternateText='<%# Eval("TieuDe") %>'
                     runat="server" />
                </td>
            </tr>
             <tr>
                <td>
                    Tóm tắt:
                </td>
                <td>
                    <asp:TextBox ID="txtTomTat" runat="server" CssClass="MultilineTextBox" ReadOnly="true" BorderStyle="None" Text='<%# Eval("TomTat") %>' TextMode="MultiLine" />
                </td>
            </tr>
             <tr>
                <td>
                    Nội dung:
                </td>
                <td>
                    <asp:TextBox ID="txtNoiDung" TextMode="MultiLine" CssClass="MultilineTextBox" BorderStyle="None" ReadOnly="true" runat="server" Text='<%# Eval("NoiDung") %>' />
                </td>
            </tr>
             <tr>
                <td>
                    Ngày đăng:
                </td>
                <td>
                    <asp:Label ID="lblNgayDang" runat="server" 
                    Text='<%# Eval("NgayDang") %>' />
                </td>
            </tr>            
        </table>
        <br />
        <asp:Button ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="Cập nhật" />
        &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="Xóa" />
        &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="Thêm mới" />
    </ItemTemplate>
</asp:FormView>
