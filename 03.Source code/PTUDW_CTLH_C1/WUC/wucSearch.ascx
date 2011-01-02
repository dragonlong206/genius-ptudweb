<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSearch.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.wucSearch" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<div id="search_block">
    <p class="mytitle">
        Tìm chuyến xe</p>
    <div class="search_bg">
        <table class="table_search">
            <tr>
                <td class="row_label">
                    Nơi khởi hành
                </td>
                <td>
                    <asp:DropDownList ID="ddlNoiKhoiHanh" CssClass="combobox_search" runat="server" DataSourceID="ldsDSTram"
                        DataTextField="TenTramXe" DataValueField="MaTramXe">
                       
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="row_label">
                    Nơi đến
                </td>
                <td>
                    <asp:DropDownList ID="ddlNoiDen" CssClass="combobox_search" runat="server" DataSourceID="ldsDSTram"
                        DataTextField="TenTramXe" DataValueField="MaTramXe">
                     
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="row_label">
                    Giá
                </td>
                <td>
                    <asp:TextBox ID="txtGia" runat="server">0</asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftxtGia" runat="server" TargetControlID="txtGia" FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td class="row_label">
                    Thời gian đi
                </td>
                <td>
                    <asp:TextBox ID="txtThoiGianDi" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="cdsThoiGianDi" runat="server" TargetControlID="txtThoiGianDi">
                    </asp:CalendarExtender>
                </td>
            </tr>
        </table>
        <div class="green_button">
            <asp:LinkButton ID="btnSearch" CssClass="search_button" runat="server" 
                Width="72px" onclick="btnSearch_Click" 
                >Tìm kiếm</asp:LinkButton>
        </div>'
    </div>
</div>
<asp:LinqDataSource ID="ldsDSTram" runat="server" ContextTypeName="DTO.CongTyLuHanhDataContext"
    Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
</asp:LinqDataSource>
