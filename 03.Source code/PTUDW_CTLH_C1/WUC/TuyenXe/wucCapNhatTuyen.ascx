<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCapNhatTuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucCapNhatTuyen" %>
<asp:LinqDataSource ID="ldsTuyen" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" EnableUpdate="True" 
    TableName="TUYEN_XEs" Where="MaTuyenXe == @MaTuyenXe">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="MaTuyenXe" 
            QueryStringField="MaTuyenXe" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>

<asp:DetailsView ID="DetailsView1" runat="server" Height="150px" Width="300px" 
    DataSourceID="ldsTuyen" AutoGenerateRows="False" DataKeyNames="MaTuyenXe" 
    CellPadding="4" ForeColor="#333333" GridLines="None" 
    style="margin-right: 0px">
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <Fields>
    <asp:TemplateField>
        <EditItemTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Rows="4" TextMode="MultiLine" Text='<%# Bind("MaTuyenXe") %>'></asp:TextBox>
            
        </EditItemTemplate>
        <InsertItemTemplate>       
                        <asp:TextBox ID="TextBox2" runat="server" Rows="4" TextMode="MultiLine" Text='<%# Bind("MaTuyenXe") %>'></asp:TextBox>
                   </InsertItemTemplate>
                   <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaTuyenXe") %>'></asp:Label>
                  </ItemTemplate>

    </asp:TemplateField>
    <asp:CommandField ShowSelectButton="true" />
        <asp:BoundField DataField="MaTuyenXe" HeaderText="Mã tuyến xe" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaTuyenXe" />
        <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến xe" 
            SortExpression="TenTuyenXe" />
        <asp:BoundField DataField="KhoangThoiGianDi" HeaderText="Khoảng thời gian đi" 
            SortExpression="KhoangThoiGianDi" />
        <asp:BoundField DataField="TanSuatChuyen" HeaderText="Tần suất chuyến" 
            SortExpression="TanSuatChuyen" />
        <asp:BoundField DataField="LuongTaiXe" HeaderText="Lương tài xế" 
            SortExpression="LuongTaiXe" />
        <asp:BoundField DataField="MaTramDi" HeaderText="Trạm đi" 
            SortExpression="MaTramDi" />
        <asp:BoundField DataField="MaTramDen" HeaderText="Trạm đến" 
            SortExpression="MaTramDen" />
        <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" SortExpression="GiaVe" />
        <asp:BoundField DataField="GioChayChuyenDauTienTrongNgay" 
            HeaderText="Giờ chạy chuyến đầu trong ngày" 
            SortExpression="GioChayChuyenDauTienTrongNgay" />
        <asp:BoundField DataField="GioChayChuyenCuoiCungTrongNgay" 
            HeaderText="Giờ chạy chuyến cuối cùng trong ngày" 
            SortExpression="GioChayChuyenCuoiCungTrongNgay" />
       
    </Fields>
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:DetailsView>

