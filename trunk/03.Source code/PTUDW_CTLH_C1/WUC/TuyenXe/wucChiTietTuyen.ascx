<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucChiTietTuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucChiTietTuyen" %>
<asp:DetailsView ID="dvChiTietTuyen" runat="server" Height="50px" Width="300px" 
    AutoGenerateRows="False" DataKeyNames="MaTuyenXe" DataSourceID="ldsTuyen" 
    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
    CellPadding="4">
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <Fields>
    
        <%-- <asp:TemplateField>
            <HeaderTemplate>
                <asp:HyperLink ID="hlThemTuyen" NavigateUrl="~/Administration/DieuHanhCongTy/ThemTuyen.aspx" runat="server">Thêm tuyến</asp:HyperLink>
            </HeaderTemplate>
        </asp:TemplateField>
        --%>
            
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
        
        <asp:TemplateField HeaderText="Trạm đi">
            <ItemTemplate>        
                <%#Eval("TRAM_XE1.TenTramXe")%>
            </ItemTemplate>

            <EditItemTemplate>
                <asp:DropDownList id="ddlTramDi" runat="server" BackColor="White" ForeColor="Black" DataSourceID="ldsTramXe" DataValueField="MaTramXe" DataTextField="TenTramXe" SelectedValue='<%#Bind("MaTramDi")%>'></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Trạm đến">
            <ItemTemplate>        
                <%#Eval("TRAM_XE.TenTramXe")%>                
            </ItemTemplate>
            
            <EditItemTemplate>
                <asp:DropDownList id="ddlTramDen" runat="server" BackColor="White" ForeColor="Black" DataSourceID="ldsTramXe" DataValueField="MaTramXe" DataTextField="TenTramXe" SelectedValue='<%#Bind("MaTramDen")%>'></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="GiaVe" HeaderText="Giá Vé" SortExpression="GiaVe" />
        <asp:BoundField DataField="GioChayChuyenDauTienTrongNgay" 
            HeaderText="Giờ chạy chuyến đầu tiên trong ngày" 
            SortExpression="GioChayChuyenDauTienTrongNgay" />
        <asp:BoundField DataField="GioChayChuyenCuoiCungTrongNgay" 
            HeaderText="Giờ chạy chuyến cuối cùng trong ngày" 
            SortExpression="GioChayChuyenCuoiCungTrongNgay" />
        
        <asp:CommandField CancelText="Hủy" InsertText="Thêm" NewText="Thêm mới" 
            ShowInsertButton="True" />
        <asp:CommandField ShowEditButton="True" EditText="Cập nhật" CancelText="Hủy" 
            UpdateText="Cập nhật" />
        <asp:CommandField ShowDeleteButton="True" DeleteText="Xóa tuyến" />
    </Fields>
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
</asp:DetailsView>
<asp:LinqDataSource ID="ldsTramXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs" >

</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTuyen" runat="server" EnableInsert="true" EnableUpdate="true" EnableDelete="true"
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TUYEN_XEs" 
    Where="MaTuyenXe == @MaTuyenXe">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="MaTuyenXe" 
            QueryStringField="MaTuyenXe" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>

