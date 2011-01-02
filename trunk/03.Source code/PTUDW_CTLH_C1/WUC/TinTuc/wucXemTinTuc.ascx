<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemTinTuc.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.TinTuc.wucXemTinTuc" %>
    
<script type="text/javascript">
    function resizeTextArea(txtBox) {
        nCols = txtBox.cols;
        sVal = txtBox.value;
        nVal = sVal.length;
        nRowCnt = 1;

        for (i = 0; i < nVal; i++)
        { if (sVal.charAt(i).charCodeAt(0) == 13) { nRowCnt += 1; } }

        if (nRowCnt < (nVal / nCols)) { nRowCnt = 1 + (nVal / nCols); }
        txtBox.rows = nRowCnt;
    }
</script>

<asp:Repeater ID="rptTinTuc" runat="server" 
    onitemcommand="rptTinTuc_ItemCommand">
    <ItemTemplate>
        <div style="display: block; margin: 10px 5px">
            <div>
                <asp:Label CssClass="TieuDe" ID="lblTieuDe" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
            </div>
            <br />
            <div class="NgayDang">
                <asp:Label ID="lblNgayDang" Text='<%# Eval("NgayDang") %>' runat="server"></asp:Label>
            </div>
            <div class="HinhAnh">
                <asp:Image ID="imgHinhAnh" ImageUrl='<%# "~/Images/TinTuc/" + Eval("HinhAnh") %>'
                    AlternateText='<%# Eval("TieuDe") %>' runat="server" />
            </div>
            <asp:TextBox ID="txtTomTat" runat="server" CssClass="TomTat" ReadOnly="true"
                BorderStyle="None" Text='<%# Eval("TomTat") %>' Columns="25" TextMode="MultiLine" />            
        </div>
        <asp:LinkButton ID="btnChiTiet" CommandName="ChiTiet" CommandArgument='<%# Eval("MaTinTuc") %>' CssClass="ChiTiet" Text="Chi tiết" runat="server"></asp:LinkButton>
        <br />
    </ItemTemplate>
    
    <SeparatorTemplate>
        <div style="width: 100%; height: 15px"; ></div>
    </SeparatorTemplate>
</asp:Repeater>
