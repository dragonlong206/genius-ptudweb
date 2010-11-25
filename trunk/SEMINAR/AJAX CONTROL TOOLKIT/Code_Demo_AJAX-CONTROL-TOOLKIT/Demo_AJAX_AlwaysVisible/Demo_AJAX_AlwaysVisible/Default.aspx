<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_AJAX_AlwaysVisible._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href=Style.css rel=Stylesheet type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class=page>
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:AlwaysVisibleControlExtender runat="server"
            ID="AlwaysVisibleControlExtender1"
            TargetControlID="allwaysOnMessage" 
            VerticalSide="Top" 
            VerticalOffset="10" 
            HorizontalSide="Right" 
            HorizontalOffset="10" 
            ScrollEffectDuration=".1">
        </asp:AlwaysVisibleControlExtender>
        <asp:Panel ID="allwaysOnMessage" runat="server" Height="100px" Width="220px" BackColor="Maroon" ForeColor="White" BorderWidth="2" BorderStyle="Solid" BorderColor="Black">
        <div style="vertical-align: middle; text-align: center;">
            <p>Hello World</p>
            
                <br />
            </div>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
