
var PageName = 'ThemTuyen';
var PageId = 'p69fbd34839a449028f4ea822f897d6e6'
var PageUrl = 'ThemTuyen.html'
document.title = 'ThemTuyen';

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

var u20 = document.getElementById('u20');

var u31 = document.getElementById('u31');

var u11 = document.getElementById('u11');
gv_vAlignTable['u11'] = 'top';
var u27 = document.getElementById('u27');

var u6 = document.getElementById('u6');
gv_vAlignTable['u6'] = 'top';
var u4 = document.getElementById('u4');

var u2 = document.getElementById('u2');
gv_vAlignTable['u2'] = 'top';
var u10 = document.getElementById('u10');

var u0 = document.getElementById('u0');

var u26 = document.getElementById('u26');
gv_vAlignTable['u26'] = 'top';
var u29 = document.getElementById('u29');

var u8 = document.getElementById('u8');
gv_vAlignTable['u8'] = 'top';
var u14 = document.getElementById('u14');
gv_vAlignTable['u14'] = 'top';
var u28 = document.getElementById('u28');
gv_vAlignTable['u28'] = 'top';
var u33 = document.getElementById('u33');
gv_vAlignTable['u33'] = 'top';
var u22 = document.getElementById('u22');

var u13 = document.getElementById('u13');
gv_vAlignTable['u13'] = 'top';
var u12 = document.getElementById('u12');

var u21 = document.getElementById('u21');
gv_vAlignTable['u21'] = 'center';
var u7 = document.getElementById('u7');

var u17 = document.getElementById('u17');

var u5 = document.getElementById('u5');

var u15 = document.getElementById('u15');

var u3 = document.getElementById('u3');
gv_vAlignTable['u3'] = 'top';
var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'center';
var u25 = document.getElementById('u25');
gv_vAlignTable['u25'] = 'center';
var u16 = document.getElementById('u16');
gv_vAlignTable['u16'] = 'top';
var u19 = document.getElementById('u19');

var u9 = document.getElementById('u9');
gv_vAlignTable['u9'] = 'top';
var u30 = document.getElementById('u30');

var u24 = document.getElementById('u24');

var u18 = document.getElementById('u18');
gv_vAlignTable['u18'] = 'top';
var u32 = document.getElementById('u32');
gv_vAlignTable['u32'] = 'center';
var u23 = document.getElementById('u23');
gv_vAlignTable['u23'] = 'center';
if (window.OnLoad) OnLoad();
