<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucQuanLyTinTuc.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.TinTuc.wucQuanLyTinTuc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsTinTuc" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    OrderBy="NgayDang desc" TableName="TIN_TUCs">
</asp:LinqDataSource>
<asp:UpdatePanel ID="pnlWrapper" runat="server">
    <ContentTemplate>
        <asp:Panel ID="pnlThemTinTuc" Visible="false" runat="server">
            <asp:LinqDataSource ID="ldsChiTietTinTuc" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
                EnableInsert="True" TableName="TIN_TUCs">
            </asp:LinqDataSource>
            <asp:FormView ID="fvDangTin" runat="server" DataKeyNames="MaTinTuc" DataSourceID="ldsChiTietTinTuc"
                DefaultMode="Insert" OnItemCommand="fvChiTietTinTuc_ItemCommand" OnItemInserted="fvDangTin_ItemInserted"
                OnItemInserting="fvDangTin_ItemInserting">
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
                                <asp:AsyncFileUpload ID="afuHinhAnh" runat="server" FailedValidation="False" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Tóm tắt:
                            </td>
                            <td>
                                <asp:TextBox ID="txtTomTat" CssClass="MultilineTextBox" runat="server" Text='<%# Bind("TomTat") %>'
                                    TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nội dung:
                            </td>
                            <td>
                                <asp:TextBox ID="txtNoiDung" CssClass="MultilineTextBox" runat="server" Text='<%# Bind("NoiDung") %>'
                                    TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Ngày đăng:
                            </td>
                            <td>
                                <asp:TextBox ID="txtNgayDang" runat="server" Text='<%# Bind("NgayDang") %>' ReadOnly="True" />
                                <asp:CalendarExtender ID="cleNgayDang" runat="server" TargetControlID="txtNgayDang"
                                    SelectedDate='<%# DateTime.Now %>'>
                                </asp:CalendarExtender>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="Lưu" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="Hủy" />
                </InsertItemTemplate>
            </asp:FormView>
        </asp:Panel>
        
        <asp:Button ID="btnInsert" runat="server" Text="Đăng tin mới" OnClick="btnInsert_Click" />
        
        <asp:Repeater ID="rptTinTuc" runat="server" DataSourceID="ldsTinTuc">
            <ItemTemplate>
                <div class="TinTucHeader">
                    <asp:Label ID="lblTieuDe" CssClass="TieuDe" Text='<%# Eval("TieuDe") %>' runat="server"></asp:Label>
                    <asp:Label ID="lblNgayDang" CssClass="NgayDang" Text='<%# Eval("NgayDang") %>' runat="server"></asp:Label>
                </div>
                <div class="TinTucContent">
                    <div class="HinhDaiDienWrapper">
                        <asp:Image ID="imgHinhDaiDien" CssClass="HinhDaiDien" runat="server" ImageUrl='<%# "~/Images/TinTuc/" + Eval("HinhAnh") %>'
                            AlternateText="Hình đại diện" />
                    </div>
                    <div class="MainContentWrapper">
                        <div class="TomTatWrapper">
                            <asp:TextBox ID="txtTomTat" CssClass="TomTat" Wrap="true" ReadOnly="true" BorderStyle="None"
                                BorderWidth="0px" TextMode="MultiLine" Text='<%# Eval("TomTat") %>' overflow="auto"
                                runat="server">
                            </asp:TextBox>
                        </div>
                        <div class="ChiTietWrapper">
                            <asp:HyperLink ID="hplChiTiet" CssClass="hyperlink" Text="Chi tiết" runat="server"
                                NavigateUrl='<%# "~/Administration/Admin/ChiTietTinTuc.aspx?MaTinTuc=" + Eval("MaTinTuc") %>'>
                            </asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </ContentTemplate>
</asp:UpdatePanel>
