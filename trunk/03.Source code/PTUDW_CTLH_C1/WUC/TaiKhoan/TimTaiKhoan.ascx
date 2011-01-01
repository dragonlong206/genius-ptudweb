<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimTaiKhoan.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.TaiKhoan.TimTaiKhoan" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<h2>Tra cứu tài khoản</h2>
<asp:Label ID="Label1" runat="server" Text="Tên tài khoản:"></asp:Label>
<asp:TextBox ID="txtTaiKhoan" runat="server"></asp:TextBox>
<asp:Button ID="btTimKiem" runat="server" Text="Tìm kiếm" 
    onclick="btTimKiem_Click" />
<asp:LinqDataSource ID="ldsDSNhanVien" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TAI_KHOANs" 
    Where="Username.Contains(@Username)" EnableDelete="True" 
    EnableUpdate="True">
    <WhereParameters>
        <asp:ControlParameter ControlID="txtTaiKhoan" DefaultValue="&quot;Nam&quot;" 
            Name="Username" PropertyName="Text" Type="String" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaTaiKhoan" DataSourceID="ldsDSNhanVien">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="MaTaiKhoan" HeaderText="Mã tài khoản" 
            InsertVisible="False" ReadOnly="True" SortExpression="MaTaiKhoan" />
        <asp:BoundField DataField="Username" HeaderText="Tên tài khoản" 
            SortExpression="Username" />
        <asp:BoundField DataField="Password" HeaderText="Mật khẩu" 
            SortExpression="Password" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="NgayKichHoat" HeaderText="Ngày kích hoạt" 
            SortExpression="NgayKichHoat" />
        <asp:TemplateField HeaderText="Nhân viên" >
            <ItemTemplate>
                <%#Eval("NHAN_VIEN.HoTen") %>
            </ItemTemplate>
        </asp:TemplateField>
      
    </Columns>
</asp:GridView>

