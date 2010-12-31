<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCacChuyenChayTrongNgay.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucCacChuyenChayTrongNgay" %>
<asp:Label ID="lblThongBao" runat="server" Text="" Font-Size="X-Large" ForeColor="Red"></asp:Label>
<asp:GridView ID="gvChuyenXe" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaChuyenXe" DataSourceID="ldsChuyenXe" 
    onrowcreated="gvChuyenXe_RowCreated">
    <Columns>
        <asp:TemplateField HeaderText="STT">   
            <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>
            </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Tuyến">
            <ItemTemplate>
                <%# Eval("TUYEN_XE.TenTuyenXe") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành"
            SortExpression="KhoiHanh" />
        <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" 
            SortExpression="DuKienDen" />
       
        <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" SortExpression="GiaVe" />
        <asp:TemplateField HeaderText="Tình trạng">
            <ItemTemplate>
                <%# Eval("TINH_TRANG_CHUYEN.MoTa") %>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:LinqDataSource ID="ldsChuyenXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="CHUYEN_XEs" >
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="MaTramXe" 
            QueryStringField="MaTramXe" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
