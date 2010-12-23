<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestWUC.aspx.cs" Inherits="PTUDW_CTLH_C1.Common.TestWUC" %>
<%@ Register TagPrefix="wuc" TagName="TimTuyenNangCao" Src="~/WUC/TuyenXe/wucTimTuyenNangCao.ascx" %>
<%@ Register TagPrefix="wuc" TagName="TimNhanhTuyen" Src="~/WUC/TuyenXe/wucTimNhanhTuyen.ascx" %>
<%@ Register TagPrefix="wuc" TagName="ThemTuyen" Src="~/WUC/TuyenXe/wucThemTuyen.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <wuc:TimNhanhTuyen ID="wucTimNhanhTuyen" runat="server" />
        <br />
        <br />
        <wuc:TimTuyenNangCao ID="wucTimTuyenNangCao" runat="server" />
        <br />
        <br />
        <wuc:ThemTuyen ID="wucThemTuyen" runat="server" />
    </div>
    </form>
</body>
</html>
