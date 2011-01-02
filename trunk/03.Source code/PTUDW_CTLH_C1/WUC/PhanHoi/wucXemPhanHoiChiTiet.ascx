<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemPhanHoiChiTiet.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.PhanHoi.wucXemPhanHoiChiTiet" %>
<asp:LinqDataSource ID="ldsPhanHoi" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="PHAN_HOIs" Where="MaPhanHoi == @MaPhanHoi">
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="MaPhanHoi" QueryStringField="MaPhanHoi"
            Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Label ID="lbTieuDe" runat="server" Text="Thông Tin Phản Hồi " CssClass="ThongBao"></asp:Label>
        <asp:DetailsView ID="dvPhanHoi" runat="server" Width="95%" AutoGenerateRows="False"
            DataKeyNames="MaPhanHoi" DataSourceID="ldsPhanHoi" ForeColor="#333333" CellPadding="4"
            GridLines="None">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" Width="140px" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <Fields>
                <asp:TemplateField HeaderText="Nội dung">
                    <ItemTemplate>
                        <asp:Label ID="lbNoiDung" runat="server" Text='<%# Eval("PHAN_HOI_KHACH_HANG.NoiDung") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nhân viên duyệt">
                    <ItemTemplate>
                        <%#Eval("NHAN_VIEN.HoTen") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:DetailsView>
    </ContentTemplate>
</asp:UpdatePanel>
