<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WucCapNhapXe.ascx.cs" Inherits="PTUDW_CTLH_C1.WUC.Xe.WucCapNhapXe" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

            
<asp:LinqDataSource ID="ldsDSTaiXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="NHAN_VIENs" 
    Where="LoaiNhanVien == @LoaiNhanVien">
    <WhereParameters>
        <asp:Parameter DefaultValue="4" Name="LoaiNhanVien" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:LinqDataSource ID="ldsCapNhapXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    Select="new (MaXe, BienSoXe)">
</asp:LinqDataSource>

<asp:LinqDataSource ID="LdsXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="XEs" 
    Where="MaXe == @MaXe" EnableUpdate="true" EnableDelete="true">
    <WhereParameters>
        <asp:ControlParameter ControlID="cboDanhSachXe" Name="MaXe" 
            PropertyName="SelectedValue" Type="Int32"/>
    </WhereParameters>
</asp:LinqDataSource>

<asp:LinqDataSource ID="ldsLoaiXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="LOAI_XEs">
</asp:LinqDataSource>

<asp:LinqDataSource ID="ldsTinhTrangXe" runat="server" 
    ContextTypeName="DTO.CongTyLuHanhDataContext" TableName="TINH_TRANG_XEs">
</asp:LinqDataSource>

<asp:ComboBox ID="cboDanhSachXe" runat="server" 
    AutoCompleteMode="SuggestAppend" DataSourceID="ldsCapNhapXe" 
    DataTextField="BienSoXe" DataValueField="MaXe" MaxLength="0" 
    style="display: inline;" 
    onselectedindexchanged="cboDanhSachXe_SelectedIndexChanged">
</asp:ComboBox>
<br />
<br />
<asp:FormView ID="fvXe" runat="server" DataSourceID="LdsXe" DataKeyNames="MaXe" 
    DefaultMode="Edit">
    <EditItemTemplate>
        <table>
            <tr>
                <td>
                    Biển số xe
                </td>
                <td>
                    <asp:TextBox ID="BienSoXeTextBox" runat="server" 
            Text='<%# Bind("BienSoXe") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    Tài xế
                </td>
                <td>
                    <asp:DropDownList ID="ddlTaiXe" DataSourceID="ldsDSTaiXe" DataTextField="HoTen" 
                    DataValueField="MaNhanVien" SelectedValue='<%# Bind("MaTaiXe") %>' runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Ngày nhập
                </td>
                <td>
                    <asp:TextBox ID="txtNgayNhap" Text='<%#Bind("NgayNhap") %>' runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="ceNgayNhap" TargetControlID="txtNgayNhap" runat="server">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td>
                    Loại xe
                </td>
                <td>
                    <asp:DropDownList ID="ddlLoaiXe" DataSourceID="ldsLoaiXe"
                     DataTextField="TenLoaiXe" DataValueField="MaLoaiXe" SelectedValue='<%#Bind("MaLoaiXe") %>' runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Tình trạng
                </td>
                <td>
                    <asp:DropDownList ID="ddlTinhTrang" DataSourceID="ldsTinhTrangXe"
                     DataTextField="TenTinhTrangXe" DataValueField="MaTinhTrangXe" SelectedValue='<%#Bind("TinhTrang") %>' runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
       
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Cập nhật" OnClick="return confirm('Bạn muốn cập nhật lại xe vừa sửa?');"/>
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </EditItemTemplate>
   
</asp:FormView>

