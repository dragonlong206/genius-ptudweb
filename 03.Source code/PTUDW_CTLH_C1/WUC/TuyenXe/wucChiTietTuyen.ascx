<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucChiTietTuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TuyenXe.wucChiTietTuyen" %>
<link href="../../Shared/Css/Style.css" rel="Stylesheet" type="text/css" />
<div>
<asp:DetailsView ID="dvChiTietTuyen" runat="server" Height="50px" Width="400px"  CssClass="Detailview"
    AutoGenerateRows="False" DataKeyNames="MaTuyenXe" DataSourceID="ldsTuyen" Font-Size="14pt" 
    CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" >
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black"/>
    <CommandRowStyle Font-Size="12" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <FieldHeaderStyle Width="250px" CssClass="Detailview"/>
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" 
        CssClass="Detailview" />
    <Fields>
    
        <%-- <asp:TemplateField>
            <HeaderTemplate>
                <asp:HyperLink ID="hlThemTuyen" NavigateUrl="~/Administration/DieuHanhCongTy/ThemTuyen.aspx" runat="server">Thêm tuyến</asp:HyperLink>
            </HeaderTemplate>
        </asp:TemplateField>
        --%>
            
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
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="#DCDCDC" />
</asp:DetailsView>
</div>
<asp:LinqDataSource ID="ldsTramXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs" >

</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsTuyen" runat="server" EnableInsert="true" EnableUpdate="true" EnableDelete="true"
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TUYEN_XEs" 
    Where="MaTuyenXe == @MaTuyenXe">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="MaTuyenXe" 
            QueryStringField="MaTuyenXe" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>

