<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemPhanHoiChiTiet.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.PhanHoi.wucXemPhanHoiChiTiet" %>
<asp:LinqDataSource ID="ldsPhanHoi" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="PHAN_HOIs" 
    Where="MaPhanHoi == @MaPhanHoi">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="MaPhanHoi" 
            QueryStringField="MaPhanHoi" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:DetailsView ID="dvPhanHoi" runat="server" Height="50px" Width="125px" 
    AutoGenerateRows="False" DataKeyNames="MaPhanHoi" 
    DataSourceID="ldsPhanHoi" ForeColor="Black">
    <Fields>
        <asp:BoundField DataField="MaPhanHoi" HeaderText="MaPhanHoi" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaPhanHoi" />
        <asp:TemplateField HeaderText= "Nội dung">
            <ItemTemplate>
                <asp:TextBox runat="server" ReadOnly="true"  Text='<%# Eval("PHAN_HOI_KHACH_HANG.NoiDung") %>' TextMode="MultiLine" BackColor="White"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="MaNhanVienDuyet" HeaderText="MaNhanVienDuyet" 
            SortExpression="MaNhanVienDuyet" />
        <asp:BoundField DataField="TinhTrangDoc" HeaderText="TinhTrangDoc" 
            SortExpression="TinhTrangDoc" />
    </Fields>
</asp:DetailsView>
