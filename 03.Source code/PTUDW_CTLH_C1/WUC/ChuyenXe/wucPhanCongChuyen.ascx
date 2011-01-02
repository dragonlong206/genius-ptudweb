<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucPhanCongChuyen.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucPhanCongChuyen" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<asp:Label ID="Label1" runat="server" Text="Phân Công Chuyến Xe" CssClass="ThongBao"></asp:Label>
<br />
<asp:GridView ID="gvChuyen" runat="server" DataSourceID="ldsChuyen" AutoGenerateColumns="False"
    OnRowEditing="gvChuyen_RowEditing" OnRowUpdating="gvChuyen_RowUpdating" DataKeyNames="MaChuyenXe"
    CssClass="mGrid" PagerStyle-CssClass="pgr">
    <Columns>
        <asp:TemplateField HeaderText="Tuyến xe">
            <ItemTemplate>
                <%#Eval("TUYEN_XE.TenTuyenXe") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" />
        <asp:BoundField DataField="KhoiHanh" HeaderText="Thời gian khởi hành" />
        <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" />
        <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" />
        <asp:BoundField DataField="LuongTaiXe" HeaderText="Lương tài xế" />
        <asp:TemplateField HeaderText="Tài xế">
            <ItemTemplate>
                <%#Eval("XE.MaTaiXe") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlTaiXe" runat="server" DataSourceID="ldsTaiXe" DataTextField="HoTen"
                    DataValueField="MaNhanVien">
                </asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:CommandField HeaderText="Cập nhật" ShowEditButton="True" ShowHeader="True" />
    </Columns>
</asp:GridView>
<asp:LinqDataSource ID="ldsChuyen" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="CHUYEN_XEs" OnSelecting="ldsChuyen_Selecting" EnableUpdate="True">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTaiXe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="NHAN_VIENs" Where="LoaiNhanVien==4">
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsXe" runat="server">
</asp:LinqDataSource>
<asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
