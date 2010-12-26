<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucChiTietChuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucChiTietChuyen" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:LinqDataSource ID="ldsChuyenXe" runat="server" 
                ContextTypeName="DTO.CongTyLuHanhDataContext" EnableDelete="True" 
                EnableUpdate="True" TableName="CHUYEN_XEs" Where="MaChuyenXe == @MaChuyenXe">
                <WhereParameters>
                    <asp:QueryStringParameter Name="MaChuyenXe" QueryStringField="MaChuyenXe" 
                        Type="Int32" DefaultValue="0" />
                </WhereParameters>
                </asp:LinqDataSource>
                
<asp:LinqDataSource ID="ldsXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" Select="new (MaXe, BienSoXe)" 
    TableName="XEs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTuyenXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    Select="new (MaTuyenXe, TenTuyenXe)" TableName="TUYEN_XEs">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTinhTrang" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" Select="new (MaTinhTrang, MoTa)" 
    TableName="TINH_TRANG_CHUYENs">
</asp:LinqDataSource>
                &nbsp;<asp:Panel ID="Panel1" runat="server">
                    <asp:DetailsView ID="dvChiTietChuyenXe" runat="server" AllowPaging="True" 
                        AutoGenerateRows="False" CellPadding="4" DataKeyNames="MaChuyenXe" 
                        ForeColor="#333333" GridLines="None" Height="50px" style="margin-right: 53px" 
                        Width="347px" DataSourceID="ldsChuyenXe">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <RowStyle BackColor="#EFF3FB" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" 
                                InsertVisible="False" ReadOnly="True" SortExpression="MaChuyenXe" />
                            <asp:BoundField DataField="KhoiHanh" HeaderText="Ngày giờ khởi hành" 
                                SortExpression="KhoiHanh" />
                            <asp:BoundField DataField="DuKienDen" HeaderText="Thời gian đến (dự kiến)" 
                                SortExpression="DuKienDen" />
                            <asp:TemplateField HeaderText="Tên tuyến xe" SortExpression="MaTuyenXe">
                                <EditItemTemplate>
                                    <asp:ComboBox ID="cboTuyenXe" runat="server" AutoCompleteMode="SuggestAppend" 
                                        DataSourceID="ldsTuyenXe" DataTextField="TenTuyenXe" DataValueField="MaTuyenXe" 
                                        MaxLength="0" style="display: inline;" 
                                        SelectedValue='<%# Bind("MaTuyenXe") %>'>
                                    </asp:ComboBox>
                                </EditItemTemplate>
                                
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TUYEN_XE.TenTuyenXe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="LuongTaiXe" HeaderText="Lương tài xế" 
                                SortExpression="LuongTaiXe" />
                            <asp:TemplateField HeaderText="Xe chạy chuyến này" SortExpression="MaXe">
                                <EditItemTemplate>
                                    <asp:ComboBox ID="cboXe" runat="server" DataSourceID="ldsXe" 
                                        DataTextField="BienSoXe" DataValueField="MaXe" MaxLength="0" 
                                        SelectedValue='<%# Bind("MaXe") %>' style="display: inline;">
                                    </asp:ComboBox>
                                </EditItemTemplate>
                                
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("XE.BienSoXe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tình trạng chuyến" SortExpression="MaTinhTrang" 
                                ConvertEmptyStringToNull="False">
                                <EditItemTemplate>
                                    <asp:ComboBox ID="cboTinhTrangChuyen" runat="server" 
                                        AutoCompleteMode="SuggestAppend" DataSourceID="ldsTinhTrang" 
                                        DataTextField="MoTa" DataValueField="MaTinhTrang" MaxLength="0" 
                                        style="display: inline;" SelectedValue='<%# Bind("MaTinhTrang") %>'>
                                    </asp:ComboBox>
                                </EditItemTemplate>
                                
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TINH_TRANG_CHUYEN.MoTa") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField DeleteText="Xóa" EditText="Chỉnh sửa" ShowDeleteButton="True" 
                                ShowEditButton="True" />
                        </Fields>
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    </asp:Panel>