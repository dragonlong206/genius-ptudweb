
var PageName = 'TimNhanhTuyen';
var PageId = 'pf7459e23143a49978b87edace9babe8a'
var PageUrl = 'TimNhanhTuyen.html'
document.title = 'TimNhanhTuyen';

if (top.location != self.location)
{
	if (parent.HandleMainFrameChanged) {
		parent.HandleMainFrameChanged();
	}
}

var $OnLoadVariable = '';

var $CSUM;

var hasQuery = false;
var query = window.location.hash.substring(1);
if (query.length > 0) hasQuery = true;
var vars = query.split("&");
for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    if (pair[0].length > 0) eval("$" + pair[0] + " = decodeURIComponent(pair[1]);");
} 

if (hasQuery && $CSUM != 1) {
alert('Prototype Warning: Variable values were truncated.');
}

function GetQuerystring() {
    return '#OnLoadVariable=' + encodeURIComponent($OnLoadVariable) + '&CSUM=1';
}

function PopulateVariables(value) {
  value = value.replace(/\[\[OnLoadVariable\]\]/g, $OnLoadVariable);
  value = value.replace(/\[\[PageName\]\]/g, PageName);
  return value;
}

function OnLoad(e) {

}

eval(GetDynamicPanelScript('u0', 2));

var u20 = document.getElementById('u20');
gv_vAlignTable['u20'] = 'top';
var u51 = document.getElementById('u51');
gv_vAlignTable['u51'] = 'top';
var u31 = document.getElementById('u31');

var u45 = document.getElementById('u45');

var u11 = document.getElementById('u11');
gv_vAlignTable['u11'] = 'top';
var u25 = document.getElementById('u25');

var u27 = document.getElementById('u27');

var u6 = document.getElementById('u6');

u6.style.cursor = 'pointer';
if (bIE) u6.attachEvent("onclick", Clicku6);
else u6.addEventListener("click", Clicku6, true);
function Clicku6(e)
{

if (true) {

	SetPanelStateu0("pd1u0");

}

}

var u23 = document.getElementById('u23');

var u4 = document.getElementById('u4');
gv_vAlignTable['u4'] = 'top';
var u2 = document.getElementById('u2');
gv_vAlignTable['u2'] = 'top';
var u10 = document.getElementById('u10');

var u0 = document.getElementById('u0');

x = 0;
y = 0;
InsertAfterBegin(document.getElementById('u0ann'), "<div id='u0Note' class='annnoteimage' style='left:" + x + ";top:" + y + "' onclick=\"ToggleWorkflow(event, 'u0', 300, 300, false)\"></div>");

eval(annwindow.replace(/\[\[id\]\]/g, 'u0').replace(/\[\[label\]\]/g, "pnlTimNhanhTuyen"));

InsertAfterBegin(document.body, "<div id='u0based' style='z-index:1; visibility:hidden; position:absolute'></div><div id='u0base' style='z-index:1; visibility:hidden; position:absolute'></div>");
var u0based = document.getElementById('u0based');
            
InsertBeforeEnd(u0based, "<div class='anncontent'><span class='annfieldname'>Assigned To:</span> Bùi<BR><BR></div>");

var u15 = document.getElementById('u15');

var u26 = document.getElementById('u26');
gv_vAlignTable['u26'] = 'top';
var u35 = document.getElementById('u35');

var u29 = document.getElementById('u29');

var u8 = document.getElementById('u8');
gv_vAlignTable['u8'] = 'top';
var u34 = document.getElementById('u34');
gv_vAlignTable['u34'] = 'top';
var u22 = document.getElementById('u22');
gv_vAlignTable['u22'] = 'top';
var u14 = document.getElementById('u14');

var u32 = document.getElementById('u32');
gv_vAlignTable['u32'] = 'top';
var u28 = document.getElementById('u28');
gv_vAlignTable['u28'] = 'top';
var u42 = document.getElementById('u42');
gv_vAlignTable['u42'] = 'top';
var u50 = document.getElementById('u50');
gv_vAlignTable['u50'] = 'top';
var u30 = document.getElementById('u30');
gv_vAlignTable['u30'] = 'top';
var u13 = document.getElementById('u13');

var u47 = document.getElementById('u47');

var u41 = document.getElementById('u41');

var u21 = document.getElementById('u21');

var u37 = document.getElementById('u37');

var u7 = document.getElementById('u7');
gv_vAlignTable['u7'] = 'top';
var u40 = document.getElementById('u40');
gv_vAlignTable['u40'] = 'top';
var u17 = document.getElementById('u17');

var u5 = document.getElementById('u5');

var u38 = document.getElementById('u38');
gv_vAlignTable['u38'] = 'top';
var u3 = document.getElementById('u3');

var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'top';
var u36 = document.getElementById('u36');
gv_vAlignTable['u36'] = 'top';
var u49 = document.getElementById('u49');

var u16 = document.getElementById('u16');
gv_vAlignTable['u16'] = 'top';
var u39 = document.getElementById('u39');

var u48 = document.getElementById('u48');
gv_vAlignTable['u48'] = 'top';
var u19 = document.getElementById('u19');

var u9 = document.getElementById('u9');
gv_vAlignTable['u9'] = 'top';
var u44 = document.getElementById('u44');
gv_vAlignTable['u44'] = 'top';
var u24 = document.getElementById('u24');
gv_vAlignTable['u24'] = 'top';
var u46 = document.getElementById('u46');
gv_vAlignTable['u46'] = 'top';
var u33 = document.getElementById('u33');

var u18 = document.getElementById('u18');
gv_vAlignTable['u18'] = 'top';
var u43 = document.getElementById('u43');

var u12 = document.getElementById('u12');

if (window.OnLoad) OnLoad();
