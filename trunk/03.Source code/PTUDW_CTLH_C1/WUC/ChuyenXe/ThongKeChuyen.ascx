<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongKeChuyen.ascx.cs"
    Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.ThongKeChuyen" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Label ID="Label1" runat="server" Text="Chế độ:"></asp:Label>
<asp:DropDownList ID="ddlCheDoChon" runat="server" AutoPostBack="True" 
    onselectedindexchanged="ddlCheDoChon_SelectedIndexChanged">
    <asp:ListItem>Năm</asp:ListItem>
    <asp:ListItem>Qúy</asp:ListItem>
    <asp:ListItem>Tháng</asp:ListItem>
</asp:DropDownList>

<asp:Panel ID="pnlNam" runat="server">
    <asp:Label ID="lbNam" runat="server" Text="Năm:"></asp:Label>
    <asp:TextBox ID="txtNam" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtNam"
        DefaultView="Years" DaysModeTitleFormat="yyyy" Format="yyyy" TodaysDateFormat=" yyyy"
        ClearTime="True" EnableViewState="False" PopupPosition="BottomRight">
    </asp:CalendarExtender>
</asp:Panel>

<br />
<asp:Panel ID="pnlNam_Quy" runat="server" Visible="false">
    <asp:Label ID="Label4" runat="server" Text="Năm:"></asp:Label>
    <asp:TextBox ID="txtNam_Quy" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtNam_Quy"
        DefaultView="Years" DaysModeTitleFormat="yyyy" Format="yyyy" TodaysDateFormat=" yyyy"
        ClearTime="True" EnableViewState="False" PopupPosition="BottomRight">
    </asp:CalendarExtender>
    <asp:Label ID="Label5" runat="server" Text="Qúy "></asp:Label>
    <asp:DropDownList ID="ddlQuy" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>
</asp:Panel>
<br />
<asp:Panel ID="pnlNam_Thang" runat="server" Visible="false">
    <asp:Label ID="Label2" runat="server" Text="Năm:"></asp:Label>
    <asp:TextBox ID="txtNam_Thang" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtNam_Thang"
        DefaultView="Years" DaysModeTitleFormat="yyyy" Format="yyyy" TodaysDateFormat=" yyyy"
        ClearTime="True" EnableViewState="False" PopupPosition="BottomRight">
    </asp:CalendarExtender>
    <asp:Label ID="Label3" runat="server" Text="Tháng"></asp:Label>
    <asp:DropDownList ID="ddlThang" runat="server">
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
</asp:Panel>

<br />
<asp:Button ID="btTimKiem" runat="server" Text="Tìm kiếm" OnClick="btTimKiem_Click" />
<asp:GridView ID="dgvThongKeTuyen" runat="server" AutoGenerateColumns="False" DataKeyNames="MaTuyenXe">
    <Columns>
        <asp:BoundField DataField="MaTuyenXe" HeaderText="Mã tuyến xe" InsertVisible="False"
            ReadOnly="True" SortExpression="MaTuyenXe" />
        <asp:BoundField DataField="TramDi" HeaderText="Mã trạm đi" SortExpression="MaTramDi" />
        <asp:BoundField DataField="TramDen" HeaderText="Mã trạm đến" SortExpression="MaTramDen" />
        <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến xe" SortExpression="TenTuyenXe" />
        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng chuyến" SortExpression="SoLuong" />
        <asp:BoundField DataField="SoLuongKhach" HeaderText="Số khách" SortExpression="SoLuongKhach" />
    </Columns>
</asp:GridView>
