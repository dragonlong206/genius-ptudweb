<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo_AJAX_Animation._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
   <link href=Stylesheet.css rel=Stylesheet type="text/css" />
   <script type="text/javascript" language="javascript">
      // Move an element directly on top of another element (and optionally
      // make it the same size)
      function Cover(bottom, top, ignoreSize) {
         var location = Sys.UI.DomElement.getLocation(bottom);
         top.style.position = 'absolute';
         top.style.top = location.y + 'px';
         top.style.left = location.x + 'px';
         if (!ignoreSize) {
             top.style.height = bottom.offsetHeight + 'px';
             top.style.width = bottom.offsetWidth + 'px';
             }
         }
      </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <div class="demoarea"> 
   <br /><br />
            <asp:Button ID="btnInfo" OnClientClick="return false;" runat="server" Text="Hello" />
            <div id="flyout" class="wireFrame"></div>
            <div id="info" style="display: none; width: 250px; z-index: 2; opacity: 0; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0); font-size: 12px; border: solid 1px #CCCCCC; background-color: #FFFFFF; padding: 5px;">
            <div id="btnCloseParent" style="float: right; opacity: 100; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=100);">
                <asp:LinkButton id="btnClose" runat="server" 
                         OnClientClick="return false;" 
                         Text="X" ToolTip="Close"
                         Style="background-color: #666666; color: #FFFFFF; text-align: center; font-weight: bold; text-decoration: none; border: outset thin #FFFFFF; padding: 5px;"></asp:LinkButton>
                  
            </div>
            Hello!
            <p>Nice to meet you!</p>
            </div>
            <asp:AnimationExtender ID="OpenAnimation" TargetControlID="btnInfo" runat="server">
            <Animations>
            <OnClick>
               <Sequence>
               <%-- Disable the button so it can't be clicked again --%>
               <EnableAction Enabled="false" />
               <%-- Position the wire frame and show it --%>
               <ScriptAction Script="Cover($get('btnInfo'), $get('flyout'));" />
               <StyleAction AnimationTarget="flyout" Attribute="display" Value="block"/>
               <%-- Move the wire frame from the button's bounds to the info panel's bounds --%>
               <Parallel AnimationTarget="flyout" Duration=".3" Fps="25">
                   <Move Horizontal="150" Vertical="-50" />
                   <Resize Width="260" Height="280" />
                   <Color PropertyKey="backgroundColor" StartValue="#AAAAAA" EndValue="#FFFFFF"/>
               </Parallel>
               <%-- Move the  panel on top of the wire frame, fade it in, and hide the frame --%>
               <ScriptAction Script="Cover($get('flyout'), $get('info'), true);" />
               <StyleAction AnimationTarget="info" Attribute="display" Value="block"/>
               <FadeIn AnimationTarget="info" Duration=".2"/>
               <StyleAction AnimationTarget="flyout" Attribute="display" Value="none"/>
               </Sequence>
            </OnClick>
         </Animations>
            </asp:AnimationExtender>
            <asp:AnimationExtender ID="CloseAnimation" TargetControlID="btnClose" runat="server">
            <Animations>
            <OnClick>
               <Sequence AnimationTarget="info">
               <%--  Shrink the panel out of view --%>
               <StyleAction Attribute="overflow" Value="hidden"/>
               <Parallel Duration=".3" Fps="15">
                  <Scale ScaleFactor="0.05" Center="true" ScaleFont="true" FontUnit="px" />
                  <FadeOut />
               </Parallel>
               <%--  Reset the target --%>
               <StyleAction Attribute="display" Value="none"/>
               <StyleAction Attribute="width" Value="250px"/>
               <StyleAction Attribute="height" Value=""/>
               <StyleAction Attribute="fontSize" Value="12px"/>
               <%--  Enable the button --%>
               <EnableAction AnimationTarget="btnInfo" Enabled="true" />
               </Sequence>
            </OnClick>
         </Animations>
            </asp:AnimationExtender>
        </div>
        </div>
        
    </form>
</body>
</html>
