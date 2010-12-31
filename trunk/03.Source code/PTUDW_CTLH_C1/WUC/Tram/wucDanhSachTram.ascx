<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDanhSachTram.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Tram.wucDanhSachTram" %>

<asp:Repeater ID="rptDanhSachTram" runat="server" DataSourceID="ldsTramXe">
    <ItemTemplate>
        <table border="0" width="100%">
            <tr>
                <td>
                    <asp:LinkButton runat="server" Text='<%# Eval("TenTramXe") %>'
                        PostBackUrl='<%# "~/Common/CacChuyenTrongNgay.aspx?MaTramXe=" + Eval("MaTramXe") %>'>
                    </asp:LinkButton>
                </td>
            </tr>        
    </ItemTemplate>
    <SeparatorTemplate>
            <tr>
                <td colspan="0"><hr /></td>
            </tr>
    </SeparatorTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<asp:LinqDataSource ID="ldsTramXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" Select="new (TenTramXe, MaTramXe)" 
    TableName="TRAM_XEs">
</asp:LinqDataSource>

