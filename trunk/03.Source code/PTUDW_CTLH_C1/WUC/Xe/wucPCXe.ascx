<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucPCXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Xe.wucPCXe" %>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    Where="MaTaiXe @MaTaiXe" >
    <WhereParameters>
        <asp:ControlParameter ControlID="ddlPhanCong" DefaultValue="NULL" 
            Name="MaTaiXe" PropertyName="SelectedValue" Type="String" />
    </WhereParameters>

</asp:LinqDataSource>

<asp:DropDownList ID="ddlPhanCong" runat="server" AutoPostBack="True" >
    <asp:ListItem Value="==NULL">
        Chưa phân công
    </asp:ListItem>
    <asp:ListItem Value="==NULL">
        Đã phân công
    </asp:ListItem>
    <asp:ListItem Value="==NULL">Tất cả</asp:ListItem>
</asp:DropDownList>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaXe" DataSourceID="LinqDataSource1">
    <Columns>
        <asp:BoundField DataField="MaXe" HeaderText="MaXe" InsertVisible="False" 
            ReadOnly="True" SortExpression="MaXe" />
        <asp:BoundField DataField="BienSoXe" HeaderText="BienSoXe" 
            SortExpression="BienSoXe" />
        <asp:BoundField DataField="MaTaiXe" HeaderText="MaTaiXe" 
            SortExpression="MaTaiXe" />
        <asp:BoundField DataField="NgayNhap" HeaderText="NgayNhap" 
            SortExpression="NgayNhap" />
        <asp:BoundField DataField="MaLoaiXe" HeaderText="MaLoaiXe" 
            SortExpression="MaLoaiXe" />
        <asp:BoundField DataField="TinhTrang" HeaderText="TinhTrang" 
            SortExpression="TinhTrang" />
    </Columns>
</asp:GridView>
