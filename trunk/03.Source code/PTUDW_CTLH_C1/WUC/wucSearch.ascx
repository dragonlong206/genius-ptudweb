<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSearch.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.wucSearch" %>
<div id="search_block">
    <p class="mytitle">Tìm chuyến xe</p>
    <div class="search_bg">
        <table class="table_search">
            <tr>
                <td class="row_label">
                    Nơi khởi hành
                </td>
                <td>
                    <asp:DropDownList ID="ddlNoiKhoiHanh" CssClass="combobox_search" runat="server">
                        <asp:ListItem>--TP.HCM--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td class="row_label">
                    Nơi đến
                </td>
                <td>
                    <asp:DropDownList ID="ddlNoiDen" CssClass="combobox_search" runat="server">
                        <asp:ListItem>--Tất cả--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td class="row_label">
                    Giá
                </td>
                <td>
                    <asp:DropDownList ID="ddlGia" CssClass="combobox_search" runat="server">
                        <asp:ListItem>--Tất cả--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td class="row_label">
                    Thời gian đi
                </td>
                <td>
                    <asp:DropDownList ID="ddlDateTimePicker" CssClass="combobox_search" runat="server">
                        <asp:ListItem>06/10/2010</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <div class="green_button">
            <asp:LinkButton ID="btnSearch" CssClass="search_button" runat="server" 
                Width="72px">Tìm kiếm</asp:LinkButton>
        </div>
    </div>
</div>

