<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucPCXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Xe.wucPCXe" %>
<asp:LinqDataSource ID="ldsXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    Where="MaTaiXe == NULL" >
</asp:LinqDataSource>


<asp:LinqDataSource ID="ldsNhanVien" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" Select="new (MaNhanVien, HoTen)" 
    TableName="NHAN_VIENs" Where="LoaiNhanVien == @LoaiNhanVien">
    <WhereParameters>
        <asp:Parameter DefaultValue="4" Name="LoaiNhanVien" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>



<asp:DropDownList ID="ddlPhanCong" runat="server" AutoPostBack="True" 
    onselectedindexchanged="ddlPhanCong_SelectedIndexChanged" >
    <asp:ListItem Value="0">
        Chưa phân công
    </asp:ListItem>
    <asp:ListItem Value="1">
        Đã phân công
    </asp:ListItem>
    <asp:ListItem Value="2">Tất cả</asp:ListItem>
</asp:DropDownList>


<asp:GridView ID="gvXe" runat="server" AutoGenerateColumns="False"
    DataKeyNames="MaXe" onrowediting="gvXe_RowEditing" 
    onrowupdated="gvXe_RowUpdated" onrowupdating="gvXe_RowUpdating" 
    AllowPaging="True" onpageindexchanging="gvXe_PageIndexChanging" 
    onrowcancelingedit="gvXe_RowCancelingEdit"  >
    <Columns>
        
        <asp:BoundField DataField="MaXe" HeaderText="Mã xe" InsertVisible="False" 
            ReadOnly="True" SortExpression="MaXe"/>
        <asp:BoundField DataField="BienSoXe" HeaderText="Biển số" ReadOnly="true"
            SortExpression="BienSoXe" />
        <asp:TemplateField HeaderText="Tài xế">
            <ItemTemplate>
                <%# Eval("NHAN_VIEN.HoTen") %>
            </ItemTemplate>
            
            <EditItemTemplate>
                <asp:DropDownList ID="ddlTaiXe" runat="server" DataSourceID="ldsNhanVien"
                     DataValueField="MaNhanVien" DataTextField="HoTen"></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="NgayNhap" HeaderText="Ngày nhập" ReadOnly="true"
            SortExpression="NgayNhap" />
        
        <asp:TemplateField HeaderText="Loại xe">
            <ItemTemplate>
                <%# Eval("LOAI_XE.HangSanXuat") %>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Tình trạng">
            <ItemTemplate>
                <%# Eval("TINH_TRANG_XE.TenTinhTrangXe") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:CommandField HeaderText="Cập nhật" ShowEditButton="True" EditText="Cập nhật" UpdateText="Lưu" CancelText="Hủy" />
    </Columns>
</asp:GridView>