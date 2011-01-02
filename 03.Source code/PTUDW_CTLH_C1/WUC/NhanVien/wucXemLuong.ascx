<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucXemLuong.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.NhanVien.wucXemLuong" %>
    <link href="../../Shared/Css/GridView.css" rel ="Stylesheet"  type="text/css" />
    <link href="../../Shared/Css/Style.css" rel="Stylesheet" type="text/css"/>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
 
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
       
        <asp:Label ID="lblTieuDe" runat="server" Text="Xem lương trong tháng" CssClass="ThongBao"></asp:Label>
        <table  >
            <tr>
                <td colspan="2" style="text-align: center">
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNam" runat="server" Text="Năm"></asp:Label>
                </td>
                <td class="row_table">
                   <asp:DropDownList ID="ddlNam" runat="server" CssClass="dropdown_Style"  >
                        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblThang" runat="server" Text="Tháng"></asp:Label>
                </td>
                <td class="row_table">
                    <asp:DropDownList ID="ddlThang" runat="server" CssClass="dropdown_Style">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnOk" runat="server" Text="OK" Width="91px" OnClick="btnOk_Click" />
        <br />
        <div style="width: 612px; margin-left: 105px">
            <asp:Label ID="lblThongBao"  ForeColor="Red"
                Font-Size="X-Large" runat="server" Text = "KHÔNG TÌM  THẤY KẾT QUẢ NÀO" Visible="false"></asp:Label>
        </div>
        <asp:GridView ID="gvChuyenDaChay" runat="server" AutoGenerateColumns="False" DataKeyNames="MaChuyenXe"
            DataSourceID="ldsChuyenXe" CssClass="mGrid" PagerStyle-CssClass="pgr">
            <Columns>
                <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" InsertVisible="False"
                    ReadOnly="True" SortExpression="MaChuyenXe" />
                <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" SortExpression="KhoiHanh" />
                <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" SortExpression="DuKienDen" />
                <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên Tuyến xe" SortExpression="MaTuyenXe" />
                <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" SortExpression="GiaVe" />
                <asp:BoundField DataField="LuongTaiXe" HeaderText="Lương tài xế" SortExpression="LuongTaiXe" />
                <asp:BoundField DataField="BienSoXe" HeaderText="Mã xe" SortExpression="MaXe" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblLuong" runat="server" CssClass="thongbao"></asp:Label>
        
    </ContentTemplate>
</asp:UpdatePanel>
<asp:LinqDataSource ID="ldsChuyenXe" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    TableName="CHUYEN_XEs" OnSelecting="ldsChuyenXe_Selecting">
</asp:LinqDataSource>
