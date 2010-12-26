﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucTimChuyen.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.ChuyenXe.wucTimChuyen" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

    <asp:LinqDataSource ID="ldsTramXe" runat="server" 
        ContextTypeName="DTO.CongTyLuHanhDataContext" 
        Select="new (MaTramXe, TenTramXe)" TableName="TRAM_XEs">
    </asp:LinqDataSource>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="pnlWrapper" runat="server">
    <ContentTemplate>

        <table>
            
            <tr>
               <td> 
                     <asp:Label ID="Label1" runat="server" Text="Trạm đi:"></asp:Label> 
                </td>
               <td>
                    <asp:ComboBox ID="cbTramDi" runat="server" AutoCompleteMode="SuggestAppend" 
                       DataSourceID="ldsTramXe" DataTextField="TenTramXe" DataValueField="MaTramXe" 
                       MaxLength="0" style="display: inline;"></asp:ComboBox>
               </td>
               <td>
                    <asp:Label ID="Label2" runat="server" Text="Trạm Đến:"></asp:Label>
                </td>
                <td>
                    <asp:ComboBox ID="cbTramDen" runat="server" DataSourceID="ldsTramXe" 
                            DataTextField="TenTramXe" DataValueField="MaTramXe" MaxLength="0" 
                            style="display: inline;"></asp:ComboBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Ngày khởi hành:"></asp:Label>
                </td>                 
                  
                <td>
                    <asp:TextBox ID="txtNgayKhoiHanh" runat="server"></asp:TextBox>
                     <asp:CalendarExtender ID="cleNgayKhoiHanh" runat="server" Format="dd/MM/yyyy" TargetControlID="txtNgayKhoiHanh">
                     </asp:CalendarExtender>
                </td>
            </tr>
                
            <tr>
                
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Giờ xuất phát:"></asp:Label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtGioXuatPhat" runat="server"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" 
                        TargetControlID="txtGioXuatPhat" FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                </td>
                
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Giờ đến:"></asp:Label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtGioDen" runat="server"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" 
                        TargetControlID="txtGioDen" FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                </td>
                
            </tr>
            
        </table>
        <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" 
            onclick="btnTimKiem_Click" />
        <br />
        <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        <br />
        <p>
            <asp:GridView ID="gvChuyenXe" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="MaChuyenXe" 
                onrowcommand="gvChuyenXe_RowCommand">
                <Columns>
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã Chuyến" />
                    <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên Tuyến Xe" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Ngày khởi hành" />
                    <asp:BoundField DataField="DuKienDen" HeaderText="Ngày đến" />
                    <asp:TemplateField HeaderText="Chi tiết">
                        <ItemTemplate>
                            <asp:HyperLink ID="hplChiTiet" runat="server" NavigateUrl='<%#"~/Common/ChiTietChuyen.aspx?MaChuyenXe=" + Eval("MaChuyenXe")%>' Text="Chi tiết"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>                
            </asp:GridView>
            </ContentTemplate>
    </asp:UpdatePanel>
