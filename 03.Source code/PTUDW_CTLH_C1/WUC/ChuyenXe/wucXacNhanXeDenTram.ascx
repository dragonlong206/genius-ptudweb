<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXacNhanXeDenTram.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucXacNhanXeDenTram1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:LinqDataSource ID="ldsTramXe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
</asp:LinqDataSource>
<asp:UpdatePanel ID="pnlWrapper" runat="server">
    <ContentTemplate>
        <table>
            <tr>
                <td class="ThongBao" colspan="2">
                    Xác Nhận Chuyến Đến Trạm
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Trạm đi:"></asp:Label>
                </td>
                <td>
                    <asp:ComboBox ID="cbTramDi" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ldsTramXe"
                        DataTextField="TenTramXe" DataValueField="MaTramXe" MaxLength="0" Style="display: inline;">
                    </asp:ComboBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Trạm Đến:"></asp:Label>
                </td>
                <td>
                    <asp:ComboBox ID="cbTramDen" runat="server" DataSourceID="ldsTramXe" DataTextField="TenTramXe"
                        DataValueField="MaTramXe" MaxLength="0" Style="display: inline;">
                    </asp:ComboBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Ngày khởi hành:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNgayKhoiHanh" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="cleNgayKhoiHanh" runat="server" Format="dd/MM/yyyy" TargetControlID="txtNgayKhoiHanh">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Giờ xuất phát:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGioXuatPhat" runat="server"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers"
                        TargetControlID="txtGioXuatPhat">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Giờ đến:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGioDen" runat="server"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                        TargetControlID="txtGioDen">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnTimKiem" runat="server" OnClick="btnTimKiem_Click" Text="Tìm Kiếm" />
        <br />
        <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        <br />
        <p>
            <asp:GridView ID="gvChuyenXe" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyNames="MaChuyenXe" OnRowCommand="gvChuyenXe_RowCommand">
                <Columns>
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã Chuyến" />
                    <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên Tuyến Xe" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Ngày khởi hành" />
                    <asp:BoundField DataField="DuKienDen" HeaderText="Ngày đến" />
                    <asp:ButtonField CommandName="XemChiTiet" HeaderText="Chi tiet" Text="Chi tiet" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Panel ID="pnlThongTinChuyen" runat="server" Visible="false">
                <asp:Label ID="Label7" runat="server" Text="Hien thi thong tin chi tiet" class="ThongBao"></asp:Label>
                <asp:FormView ID="fvChiTietChuyen" runat="server" DataKeyNames="MaChuyenXe" DataSourceID="ldsThongTinChiTietChuyen"
                    DefaultMode="Edit" OnItemCommand="fvChiTietChuyen_ItemCommand">
                    <EditItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    Tên Chuyến Xe:
                                </td>
                                <td>
                                    <asp:Label ID="MaChuyenXeLabel1" runat="server" Text='<%# Eval("MaChuyenXe") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Thời Gian Khởi Hành:
                                </td>
                                <td>
                                    <asp:TextBox ID="KhoiHanhTextBox" runat="server" ReadOnly="True" Text='<%# Bind("KhoiHanh") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    ThờiGian Dự Kiến Đến:
                                </td>
                                <td>
                                    <asp:TextBox ID="DuKienDenTextBox" runat="server" ReadOnly="True" Text='<%# Bind("DuKienDen") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tên Tuyến Xe:
                                </td>
                                <td>
                                    <asp:TextBox ID="MaTuyenXeTextBox" runat="server" ReadOnly="True" Text='<%# Bind("MaTuyenXe") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Giá Vé:
                                </td>
                                <td>
                                    <asp:TextBox ID="GiaVeTextBox" runat="server" Height="22px" ReadOnly="True" Text='<%# Bind("GiaVe") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Lương Tài Xế:
                                </td>
                                <td>
                                    <asp:TextBox ID="LuongTaiXeTextBox" runat="server" ReadOnly="True" Text='<%# Bind("LuongTaiXe") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mã Xe:
                                </td>
                                <td>
                                    <asp:TextBox ID="MaXeTextBox" runat="server" ReadOnly="True" Text='<%# Bind("MaXe") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tình Trạng:
                                </td>
                                <td>
                                    <asp:DropDownList ID="cbTinhTrang" runat="server" DataSourceID="ldsTinhTrangChuyen"
                                        DataTextField="MoTa" DataValueField="MaTinhTrang" SelectedValue='<%# Bind("MaTinhTrang") %>'>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                </asp:FormView>
            </asp:Panel>
            <p>
            </p>
            <p>
            </p>
        </p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:LinqDataSource ID="ldsThongTinChiTietChuyen" runat="server" OnSelecting="ldsThongTinChiTuyen_Selecting"
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableUpdate="True" TableName="CHUYEN_XEs"
    Where="MaChuyenXe == @MaChuyenXe">
    <WhereParameters>
        <asp:Parameter DefaultValue="1" Name="MaChuyenXe" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTinhTrangChuyen" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="TINH_TRANG_CHUYENs" EnableUpdate="True">
</asp:LinqDataSource>
