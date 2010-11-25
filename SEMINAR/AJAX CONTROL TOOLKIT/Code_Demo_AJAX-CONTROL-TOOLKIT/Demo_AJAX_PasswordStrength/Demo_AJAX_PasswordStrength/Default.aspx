<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_AJAX_PasswordStrength._Default" %>

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
        Text<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />Status Bar<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />Help<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        
        <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox1" 
                DisplayPosition="RightSide"
                StrengthIndicatorType="Text" 
                PreferredPasswordLength="10" 
                PrefixText="Strength:" 
                TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent" 
                MinimumNumericCharacters="0" 
                MinimumSymbolCharacters="0" 
                HelpStatusLabelID="Label1" 
                TextCssClass="TextIndicator_TextBox1" 
                RequiresUpperAndLowerCaseCharacters="false">
        </asp:PasswordStrength>
        <asp:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="TextBox2" 
                DisplayPosition="RightSide"
                StrengthIndicatorType="BarIndicator" 
                BarIndicatorCssClass="BarIndicator_TextBox2" 
                BarBorderCssClass="BarBorder_TextBox2"
                PreferredPasswordLength="10" 
                PrefixText="Strength:" 
                TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent" 
                MinimumNumericCharacters="1" 
                MinimumSymbolCharacters="1" 
                HelpStatusLabelID="Label2" 
                RequiresUpperAndLowerCaseCharacters="true">
        </asp:PasswordStrength>
        <asp:PasswordStrength ID="PasswordStrength3" runat="server"              TargetControlID="TextBox3" 
                TextCssClass="TextIndicator_TextBox3" 
                DisplayPosition="RightSide"
                StrengthIndicatorType="Text"
                PreferredPasswordLength="20" 
                PrefixText="Meets Polixy : " 
                MinimumNumericCharacters="2" 
                MinimumSymbolCharacters="2" 
                HelpStatusLabelID="Label3" 
                HelpHandleCssClass="TextIndicator_TextBox3_Handle" 
                HelpHandlePosition="BelowRight" 
                TextStrengthDescriptions="Not at all; Very Low Compliance; Low Compliance; Average Compliance; Good Compliance; High Compliance; Yes" 
                RequiresUpperAndLowerCaseCharacters="true">
        </asp:PasswordStrength>
    </div>
    </form>
</body>
</html>
