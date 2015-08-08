
18!:4 <'base'
18!:55 <'jademo'
coclass 'jademo'

sububar=: I. @(e.&'_')@]}
maketitle=: ' '&sububar each @ cutopen ;._2
fexist=: 1:@(1!:4)@boxopen ::0:

rundemo=: 1 : 0
load bind ('~addons/ide/ja/demo/','.ijs',~m)
)

SOH=: 1{a.
toSOH=: [:;(SOH,~":)each

TITLES=: maketitle 0 : 0
controls dcontrols
datetime ddatetime
dial ddial
edit dedit
edith dedith
editm deditm
form_styles dpstyles
gl2 dgl2
glc dglc
grid_layout dgrid
ide dide
image dimage
isigrid disigrid
isigrid2 disigrid2
mbox dmbox
mbdialog dmbdialog
menu dmenu
msgs dmsgs
multimedia dmultimedia
pen_styles dpenstyles
plot dplot
plotc dplotc
progressbar dprogressbar
scrollarea dscrollarea
scrollbar dscrollbar
shader dshader
slider dslider
spinbox dspinbox
split dsplit
statusbar dstatusbar
table dtable
table2 dtable2
table3 dtable3
tabs dtabs
timer dtimer
toolbar dtoolbar
toolbarv dtoolbarv
viewmat dviewmat
webd3 dwebd3
webgl dwebgl
webview dwebview
)

NB. =========================================================
JCDEMO=: 0 : 0
pc jademo closeok;pn "Demos Select";
bin v;
cc static1 static;cn "static1";
bin h;
minwh 200 400;cc listbox listbox;
bin v;
cc ok button;cn "OK";
cc cancel button;cn "Cancel";
cc view button;cn "View Source";
bin s;
cc addons button;cn "Install addons";
bin zzz;
rem form end;
)

NB. =========================================================
jademo_run=: 3 : 0
wd JCDEMO
t=. 'Select a JAndroid demo from the list below.',LF2
t=. t,'Click "install addons" to install the addons',LF
t=. t,'needed for the demos.'
wd 'set static1 text *',t
wd 'set listbox items ',;DEL,each ({."1 TITLES),each DEL
wd 'set listbox select 0'
wd 'setfocus listbox'
wd 'pshow;'
)

NB. =========================================================
jademo_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
jademo_listbox_button=: 3 : 0
fn=. > {: (".listbox_select) { TITLES
fn~0
)

NB. =========================================================
jademo_enter=: jademo_ok_button=: jademo_listbox_button
jademo_cancel_button=: jademo_close

NB. =========================================================
dcontrols=: 'controls' rundemo
ddatetime=: 'datetime' rundemo
ddial=: 'dial' rundemo
dedit=: 'edit' rundemo
dedith=: 'edith' rundemo
deditm=: 'editm' rundemo
dgl2=: 'gl2' rundemo
dglc=: 'glc' rundemo
dgrid=: 'grid' rundemo
dide=: 'ide' rundemo`notsupport
dimage=: 'image' rundemo
disigrid=: 'isigrid' rundemo
disigrid2=: 'isigrid2' rundemo
dmbox=: 'mbox' rundemo
dmbdialog=: 'mbdialog' rundemo
dmenu=: 'menu' rundemo
dmsgs=: 'msgs' rundemo
dmultimedia=: 'multimedia' rundemo
dpenstyles=: 'penstyles' rundemo
dplot=: 'plot' rundemo
dplotc=: 'plotc' rundemo
dprogressbar=: 'progressbar' rundemo
dpstyles=: 'pstyles' rundemo
dscrollarea=: 'scrollarea' rundemo
dscrollbar=: 'scrollbar' rundemo
dshader=: 'shader' rundemo
dslider=: 'slider' rundemo
dspinbox=: 'spinbox' rundemo
dsplit=: 'split' rundemo
dstatusbar=: 'statusbar' rundemo
dtable=: 'table' rundemo
dtable2=: 'table2' rundemo
dtable3=: 'table3' rundemo
dtabs=: 'tabs' rundemo
dtimer=: 'timer' rundemo
dtoolbar=: 'toolbar' rundemo
dtoolbarv=: 'toolbarv' rundemo
dviewmat=: 'viewmat' rundemo
dwebd3=: 'webd3' rundemo
dwebgl=: 'webgl' rundemo
dwebsocket=: 'websocket' rundemo
dwebsocketclient=: 'websocketclient' rundemo
dwebview=: 'webview' rundemo

NB. =========================================================
jademo_view_button=: 3 : 0
f=. }. > {: (".listbox_select) { TITLES
textview f;1!:1 <jpath '~addons/ide/ja/demo/',f,'.ijs'
)

NB. =========================================================
jademo_addons_button=: 3 : 0
require 'pacman'
'update' jpkg ''
'install' jpkg 'api/gles graphics/bmp graphics/gl2 graphics/plot graphics/viewmat'
smoutput 'All JAndroid demo addons installed.'
)

NB. =========================================================
checkrequire=: 3 : 0
'req install'=. y
if. *./fexist getscripts_j_ req do. 1 return. end.
sminfo 'To run this demo, first install: ',install
0
)

NB. =========================================================
notsupport=: 3 : 0
sminfo 'This demo is not supported on ', UNAME, ' ', wd 'version'
)

NB. =========================================================
jademo_run''
