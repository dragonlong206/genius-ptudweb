<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimNhanVien.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.NhanVien.wucTimNhanVien" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<table>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="lblTieuDe" runat="server" Text="Tra cứu nhân viên" Font-Size="X-Large"></asp:Label> 
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblHoTen" runat="server" Text="Họ tên có chứa: "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Chưa nhập tên nhân viên cần tìm" Text="(*)" 
                ControlToValidate="txtHoTen">(*)</asp:RequiredFieldValidator>
        </td>
        <td colspan="2" style="text-align:center">
            <asp:Button ID="btnTim" runat="server" Text="Tìm kiếm" onclick="btnTim_Click" />
        </td>
    </tr>
    <tr>
        <asp:ValidationSummary ID="vldThongBaoLoi" runat="server" />
    </tr>
</table>

<asp:Label ID="lblThongBao" runat="server" Text="" CssClass="ThongBao"></asp:Label>
<asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="False" AllowPaging="true"
    DataSourceID="ldsNhanVien" Visible="False" DataKeyNames="MaNhanVien" CssClass="mGrid"
    PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
    onrowupdated="gvNhanVien_RowUpdated">
    <Columns>
        <asp:TemplateField HeaderText="STT">  
            <ItemTemplate>  
                <%# Container.DataItemIndex + 1 %>  
            </ItemTemplate>  
        </asp:TemplateField> 
        <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" ReadOnly="True" Visible="false"
            SortExpression="MaNhanVien" InsertVisible="False" />
        <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" ReadOnly="True"/>
        <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" 
            SortExpression="DienThoai" ReadOnly="True"/>
        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" 
            SortExpression="DiaChi" ReadOnly="True"/>
        <asp:TemplateField HeaderText="Loại nhân viên" SortExpression="LoaiNhanVien">
            <ItemTemplate>        
                <%#Eval("LOAI_NHAN_VIEN.TenLoai")%>                
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlLoaiNhanVien" runat="server" DataSourceID="ldsLoaiNhanVien"
                     DataValueField="MaLoaiNhanVien" DataTextField="TenLoai" SelectedValue='<%#Bind("LoaiNhanVien")%>'></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="LuongTrongThang" HeaderText="Lương trong tháng" 
            SortExpression="LuongTrongThang" />
         
        <asp:TemplateField HeaderText="Trạm">
            <ItemTemplate>        
                <%#Eval("TRAM_XE.TenTramXe")%>                
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlTramXe" runat="server" DataSourceID="ldsTramXe"
                     DataValueField="MaTramXe" DataTextField="TenTramXe" SelectedValue='<%#Bind("MaTram")%>'></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lbtnCapNhat" runat="server" CommandName="Edit">Cập nhật</asp:LinkButton>
                <asp:LinkButton ID="lbtnXoa" runat="server" OnClientClick="return confirm('Có muốn xóa nhân viên vừa chọn?');" CommandName="Delete">Xóa</asp:LinkButton>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:LinkButton ID="lbtnCapNhat" runat="server" OnClientClick="return confirm('Có muốn cập nhật nhân viên vừa sửa?');" CommandName="Edit">Cập nhật</asp:LinkButton>
                <asp:LinkButton ID="lbtnHuy" Text="Hủy" Width="55" CommandName="Cancel" runat="server" />
            </EditItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<p>

<asp:Label ID="lblKetQua" runat="server" ForeColor="#CC0000"></asp:Label> 

</p>
<asp:LinqDataSource ID="ldsNhanVien" runat="server"  EnableUpdate="True" EnableDelete="true"
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    TableName="NHAN_VIENs" Where="HoTen.Contains(@HoTen)">
    <WhereParameters>
        <asp:ControlParameter ControlID="txtHoTen" DefaultValue="&quot;Nam&quot;" 
            Name="HoTen" PropertyName="Text" Type="String" />
    </WhereParameters>
</asp:LinqDataSource>


<asp:LinqDataSource ID="ldsLoaiNhanVien" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" 
    Select="new (MaLoaiNhanVien, TenLoai)" TableName="LOAI_NHAN_VIENs">
</asp:LinqDataSource>



<asp:LinqDataSource ID="ldsTramXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TRAM_XEs">
</asp:LinqDataSource>




