<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemPhanHoi.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.PhanHoi.wucXemPhanHoi" %>
<link href="../../Shared/Css/GridView.css" rel="Stylesheet" type="text/css" />
<asp:LinqDataSource ID="ldsPhanHoi" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="PHAN_HOIs" Where="MaTaiXe == 1">
    <WhereParameters>
        <asp:SessionParameter DefaultValue="1" Name="MaTaiXe" SessionField="MaNhanVien" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<br />
<br />
<asp:UpdatePanel ID="udpnlDSPhanHoi" runat="server">
    <ContentTemplate>
        <asp:Label ID="lblThongBao" runat="server" Text="Danh Sách Các Phản Hồi" Style="text-align: center"
            CssClass="ThongBao"></asp:Label>
        <asp:GridView ID="gvPhanHoi" runat="server" AutoGenerateColumns="False" DataKeyNames="MaPhanHoi"
            CssClass="mGrid" PagerStyle-CssClass="pgr" OnRowDataBound="gvPhanHoi_RowDataBound"
            OnSelectedIndexChanged="gvPhanHoi_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:BoundField DataField="MaPhanHoi" Visible="false" />
                <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nội dung">
                    <ItemTemplate>
                        <%# Eval("PHAN_HOI_KHACH_HANG.NoiDung") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày đăng">
                    <ItemTemplate>
                        <%# Eval("PHAN_HOI_KHACH_HANG.NgayDang") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Chi tiết">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnChiTiet" runat="server" Text="Chi tiết" PostBackUrl='<%# "~/Administration/TaiXe/XemPhanHoiChiTiet.aspx?MaPhanHoi=" + Eval("MaPhanHoi") %>'>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
