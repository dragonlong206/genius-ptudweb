<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_AJAX_HoverMenu._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href=Style.css rel=Stylesheet type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:HoverMenuExtender ID="HoverMenuExtender1"
                         runat="server" 
                         TargetControlID="btnProduct" 
                         PopupControlID="PanelPopUp" 
                         PopupPosition="bottom" 
                         OffsetX="6" 
                         PopDelay="25" HoverCssClass="popupHover">
        
        </asp:HoverMenuExtender>
        <asp:Panel ID="PanelPopUp" runat="server" Height="50px" Width="125px" CssClass="popupMenu">
            <asp:LinkButton ID="BtnUpDate" runat="server" CausesValidation="true" CommandName="Update" Text="Update Record"></asp:LinkButton>
            <asp:LinkButton ID="BtnCancel" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
        </asp:Panel>
        <asp:LinkButton ID="btnProduct" runat="server">Here</asp:LinkButton>
    </div>
    </form>
</body>
</html>
