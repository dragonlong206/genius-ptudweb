<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_AJAX_FilteredTextBox._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" 
                         runat="server" TargetControlID="TextBox1" FilterType="Numbers">
        </asp:FilteredTextBoxExtender>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" 
                         runat="server" TargetControlID="TextBox2" FilterType="LowercaseLetters">
        </asp:FilteredTextBoxExtender>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" 
                         runat="server" TargetControlID="TextBox3" FilterType="Custom, Numbers" ValidChars="+-=/*().">
        </asp:FilteredTextBoxExtender>
        <table border="0">
                <tr>
                    <td>Chỉ được nhập số:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Chỉ được nhập ký tự thường</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server">
                        </asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        Chỉ được nhập những phép tính (+,-,*,/,=,.) và số</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
