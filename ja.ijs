NB. JAndroid

require 'project'

coclass 'ja'
boxj2utf8=: 3 : 0
if. 1 < #$y do. y return. end.
b=. (16+i.11) { a.
if. -. 1 e. b e. y do. y return. end.
y=. ucp y
a=. ucp '┌┬┐├┼┤└┴┘│─'
x=. I. y e. b
utf8 (a {~ b i. x { y) x } y
)
clipread=: wd@('clippaste'"_)
clipwrite=: 3 : 0
txt=. boxj2utf8 flatten ":y
wd 'clipcopy *',txt
#txt
)
dbjc=: 3 : 0
if. y do.
  if. _1 = 4!:0 <'jdb_open_jdebug_' do.
    0!:0 <jpath '~addons/ide/ja/debugs.ijs'
  end.
  jdb_open_jdebug_''
else.
  jdb_close_jdebug_ :: ] ''
end.
)
flatten=: 3 : 0
dat=. ": y
select. # $ dat
case. 1 do.
case. 2 do.
  }. , LF ,. dat
case. do.
  dat=. 1 1}. _1 _1}. ": < dat
  }: (,|."1 [ 1,.-. *./\"1 |."1 dat=' ')#,dat,.LF
end.
)
getsha1=: 3 : 0
gethash 'sha1';y
)
gethash=: 3 : 0
't m'=. y
t gethash m
:
m=. ,y
c=. '"',libjqt,'" gethash i *c *c i * *i'
'r t m w p n'=. c cd (tolower x);m;(#m);(,2);,0
res=. memr p,0,n
if. r do.
  res (13!:8) 3
end.
res
)
gridindex=: 3 : 0
'rws cls sel ndx shp'=. y
d=. (sel,rws,cls) |: i.shp
r=. (sel{shp),(*/rws{shp),*/cls{shp
,(<ndx) { r ($,) d
)
logcat=: empty @: (('"',libjqt,'" logcat n *c') cd <@,)
showevents=: 3 : 0
select. {. y,1
case. 0 do.
  4!:55 <'wdhandler_debug_z_'
case. 1 do.
  wdhandler_debug_z_=: 3 : 'smoutput sysevent'
case. 2 do.
  wdhandler_debug_z_=: 3 : 'smoutput wdq'
case. 3 do.
  wdhandler_debug_z_=: 3 : 'if. -. ''_mmove''-:_6{.sysevent do. smoutput sysevent end.'
case. 4 do.
  wdhandler_debug_z_=: 3 : 'if. -. ''_mmove''-:_6{.sysevent do. smoutput wdq end.'
end.
EMPTY
)
textview=: 3 : 0
if. 2=#p=. boxopen y do.
  p=. 1 0 1 #^:_1 p
end.
'title caption text'=. _3 {. p
wd 'textview *;',title,';',caption,';',flatten text
)
wdhandlerx=: 3 : 0
try.
  loc=. <,y
  if. 0 <: 18!:0 loc do. wdhandler__loc'' end.
catch.
  smoutput 'error in handler for event: ',sysevent__loc
end.
EMPTY
)
addons_msg=: 0 : 0
The XX are not yet installed.

To install, select menu Tools|Package Manager and install package YY.
)
addons_missing=: 3 : 0
'name addon script'=. y
if. fexist script do. 0 return. end.
sminfo name;addons_msg rplc 'XX';name;'YY';addon
1
)
demojc=: 3 : 0
p=. jpath '~addons/ide/ja/demo/jcdemo.ijs'
if. addons_missing 'jandroid demos';'ide/ja';p do. return. end.
load p
)
demowd=: 3 : 0
p=. jpath '~addons/demos/wd/demos.ijs'
if. addons_missing 'Showcase demos';'demos/wd';p do. return. end.
load p
)
labs_run=: 3 : 0
smfocus_jijs_=: 0:
closewindows_jijs_=: 0:
smclose_jijs_=: 0:
smopen_jijs_=: open
smsel_jijs_=: 0:
smselout_jijs_=: 0:
smsetsaved_jijs_=: 0:
smwrite_jijs_=: 0:
tile_jijs_=: 0:
coinsert_jijs_ (,copath) coname''

p=. jpath '~addons/labs/labs/lab.ijs'
if. addons_missing 'labs';'labs/labs';p do. return. end.
require p
lab_jlab_ y
)
helpcontext0=: 3 : 0
require '~addons/ide/ja/help.ijs'
helpcontext y
)

helpcontext1=: 3 : 0
require '~addons/ide/ja/help.ijs'
helpcontext1 y
)
RGBSEQ=: 1
getimg=: 3 : 0
if. m=. wdgetimg y;(#y);wh=. 2$2-2 do.
  d=. _2 ic memr m,0,(*/wh,4),2
  wdreadimg 2#<<0
  (|.wh)$ fliprgb^:(-.RGBSEQ) d
else.
  0 0$2-2
end.
)
readimg=: 3 : 0
if. m=. wdreadimg (utf8 ,y);wh=. 2$2-2 do.
  d=. _2 ic memr m,0,(*/wh,4),2
  wdreadimg 2#<<0
  (|.wh)$ fliprgb^:(-.RGBSEQ) d
else.
  0 0$2-2
end.
)
putimg=: 4 : 0
if3=. (3=#$x) *. 3={:$x
if. if3 do.
  x=. setalpha 256&#. x
end.
'h w'=. $x
d=. ,x
type=. 'jpeg'
opt=. ''
quality=. _1
if. 1= #y=. boxxopen y do.
  type=. >@{.y
elseif. 2< #y do.
  type=. >@{.y
  opt=. 2{.}.y
end.
if. 'jpg'-:type do. type=. 'jpeg'
elseif. 'tif'-:type do. type=. 'tiff'
end.
type=. toupper type
if. 'quality'-:>@{.opt do. quality=. <. >@{:opt end.
d=. fliprgb^:(-.RGBSEQ) d
m=. wdputimg (2 ic d); (w,h); (len=. ,_1); type; quality
if. m do.
  z=. memr m,0,len,2
  wdputimg (4#(<<0)),<0
  z
else.
  ''
end.
)
writeimg=: 4 : 0
if3=. (3=#$x) *. 3={:$x
if. if3 do.
  x=. setalpha 256&#. x
end.
'h w'=. $x
d=. ,x
y=. boxopen y
f=. > fboxname {. y
type=. 'jpeg'
opt=. ''
quality=. _1
if. 1= #y do.
  type=. }. (}.~ i:&'.') f
else.
  type=. >1{y
  opt=. 2{.2}.y
end.
type=. tolower type
if. 'jpg'-:type do. type=. 'jpeg'
elseif. 'tif'-:type do. type=. 'tiff'
end.
type=. toupper type
if. 'quality'-:>@{.opt do. quality=. <. >@{:opt end.
d=. fliprgb^:(-.RGBSEQ) d
r=. wdwriteimg (2 ic d); (w,h); f; type; quality
EMPTY
)
require 'jni'
GetJNIENV_jni_''

cocurrent 'z'
wd=: 3 : 0"1
'r p'=. wd1_jni_ ,y
select. r
case. 0 do.
  EMPTY
case. _1 do.
  p
case. _2 do.
  _2 [\ <;._2 p
case. _3 do.
  smoutput '**wd JNI error: ',p
  p (13!:8) 3
case. do.
  (LF,~wd ::(''"_)'qer') (13!:8) 3
end.
)

wd1_jni_=: 3 : 0
try.
  jniCheck app=. ('theApp Lcom/jsoftware/j/android/JConsoleApp;' jniStaticField) 'com/jsoftware/j/android/JConsoleApp'
  jniCheck cls=. FindClass <'java/lang/Object'
  jniCheck arr=. NewObjectArray 1; cls; 0
  jniCheck SetObjectArrayElement arr; 0; 0
  jniCheck rc=. app ('wd (Ljava/lang/String;[Ljava/lang/Object;)I' jniMethod)~ y;arr
  if. rc<0 do.
    jniCheck array=. GetObjectArrayElement arr; 0
    jniCheck len=. GetArrayLength <array
    jniCheck GetByteArrayRegion array; 0; len; buffer=. len#{.a.
    jniCheck DeleteLocalRef"0 app;cls;arr;array
    rc;buffer
  else.
    jniCheck DeleteLocalRef"0 app;cls;arr
    rc;''
  end.
catch.
  if. 0~:exc=. ExceptionOccurred'' do.
    if. ''-:err=. jniException exc do.
      err=. 'JNI exception'
    end.
  else.
    err=. 13!:12''
  end.
  _3;err
end.
)

gl2_jni_=: 3 : 0
try.
  buffer=. ''
  jniCheck app=. ('theApp Lcom/jsoftware/j/android/JConsoleApp;' jniStaticField) 'com/jsoftware/j/android/JConsoleApp'
  jniCheck cls=. FindClass <'java/lang/Object'
  jniCheck arr=. NewObjectArray 1; cls; 0
  jniCheck SetObjectArrayElement arr; 0; 0
  jniCheck iarr=. NewIntArray <#y
  jniCheck SetIntArrayRegion iarr; 0; (#y); ,y
  jniCheck rc=. app ('gl2 ([I[Ljava/lang/Object;)I' jniMethod)~ iarr;arr
  if. rc<0 do.
    jniCheck array=. GetObjectArrayElement arr; 0
    jniCheck len=. GetArrayLength <array
    jniCheck GetIntArrayRegion array; 0; len; buffer=. len#2-2
    jniCheck DeleteLocalRef"0 app;cls;arr;iarr;array
  else.
    jniCheck DeleteLocalRef"0 app;cls;arr;iarr
  end.
catch.
  rc=. _3
  if. 0~:exc=. ExceptionOccurred'' do.
    if. ''-:err=. jniException exc do.
      err=. 'JNI exception'
    end.
  else.
    err=. 13!:12''
  end.
end.
glresult_jgl2_=: EMPTY
select. rc
case. _1 do.
  glresult_jgl2_=: buffer
case. _2 do.
  glresult_jgl2_=: _2 [\ <;._2 buffer
case. _3 do.
  smoutput 'gl2 ', ":2{.y
  smoutput '**gl2 JNI error: ', err
  err (13!:8) 3
end.
rc
)
wdhandler=: 3 : 0
wdq=: wd 'q'
wd_val=. {:"1 wdq
({."1 wdq)=: wd_val
if. 3=4!:0<'wdhandler_debug' do.
  try. wdhandler_debug'' catch. end.
end.
wd_ndx=. 1 i.~ 3 = 4!:0 [ 3 {. wd_val
if. 3 > wd_ndx do.
  wd_fn=. > wd_ndx { wd_val
  if. 13!:17'' do.
    wd_fn~''
  else.
    try. wd_fn~''
    catch.
      wd_err=. 13!:12''
      if. 0=4!:0 <'ERM_j_' do.
        wd_erm=. ERM_j_
        ERM_j_=: ''
        if. wd_erm -: wd_err do. i.0 0 return. end.
      end.
      wd_err=. LF,,LF,.(}.^:(':|'e.~{.));._2 LF,~ wd_err
      wdinfo 'wdhandler';'error in: ',wd_fn,wd_err
    end.
  end.
end.
i.0 0
)
wdclippaste=: (wd bind 'clippaste') :: (''"_)
wdqq=: (wd bind 'q') :: (''"_)
wdqchildxywh=: (0 ". [: wd 'qchildxywh ' , ]) :: (0 0 0 0"_)
wdqcolor=: (0 ". [: wd 'qcolor ' , ":) :: ( 0 0 0"_)
wdqd=: (wd bind 'qd') :: (''"_)
wdqer=: (wd bind 'qer') :: (''"_)
wdqform=: (0 ". wd bind 'qform') :: (0 0 800 600"_)
wdqhinst=: (0 ". wd bind 'qhinst') :: 0:
wdqhwndc=: (0 ". [: wd 'qhwndc ' , ]) :: 0:
wdqhwndp=: (0 ". wd bind 'qhwndp') :: 0:
wdqhwndx=: (0 ". wd bind 'qhwndx') :: 0:
wdqm=: (0 ". wd bind 'qm') :: (800 600 8 16 1 1 3 3 4 4 19 19 0 0 800 570"_)
wdqp=: (wd bind 'qp') :: (''"_)
wdqpx=: (wd bind 'qpx') :: (''"_)
wdqscreen=: (0 ". wd bind 'qscreen') :: (264 211 800 600 96 96 32 1 _1 36 36 51"_)
wdqwd=: (wd bind 'qwd') :: ('ja'"_)
wdcenter=: 0:
wdfit=: 0:

wdreset=: wd bind 'reset'
wdforms=: <;._2;._2 @ wd bind 'qpx'
wdisparent=: (boxopen e. 0: {"1 wdforms) ::0:
wdishandle=: (boxopen e. 1: {"1 wdforms) ::0:
wdinfo=: 3 : 0
'a b'=. _2{. boxopen y
if. 2=#$b=. ":b do. b=. }.,LF,.b end.
f=. 8 u: DEL&, @ (,&DEL) @ -.&(0 127{a.)
empty wd 'mb info ',(f a),' ',(f b)
)
wdquery=: 3 : 0
0 3 wdquery y
:
msg=. ' mb_'&,&.> res=. ;:'ok cancel yes no save discard'
t=. x [ 'a b'=. _2{. boxopen y
if. 2=#$b=. ":b do. b=. }.,LF,.b end.
f=. 8 u: DEL&, @ (,&DEL) @ -.&(0 127{a.)
m=. 'mb query', (;t{msg), ' ', (f a),' ',(f b)
res i. <wd m
)
mbopen=: 3 : 0
jpathsep wd 8 u: 'mb open1 ',y
)
mbsave=: 3 : 0
jpathsep wd 8 u: 'mb save ',y
)

wdreadimg=: ('"',libjqt,'" wdreadimg > x *c *i')&cd
wdgetimg=: ('"',libjqt,'" wdgetimg > x *c i *i')&cd
wdwriteimg=: ('"',libjqt,'" wdwriteimg > i *c *i *c *c i')&cd
wdputimg=: ('"',libjqt,'" wdputimg > x *c *i *i *c i')&cd
wdget=: 4 : 0
nms=. {."1 y
vls=. {:"1 y
if. L. x do. vls {~ nms i. ,&.>x
else. > vls {~ nms i. <,x
end.
)

wdpclose=: [: wd :: empty 'psel ' , ';pclose' ,~ ":
dirmatch=: 3 : 'wd ''dirmatch '', ; dquote&.> 2 {. boxopen y'
open=: 3 : 'wd ''openj *'' , > {. getscripts_j_ y'
immexj=: [: wd 'immexj *'&,
smact=: wd bind 'smact'

clipread=: clipread_ja_
clipwrite=: clipwrite_ja_
getsha1=: getsha1_ja_
gethash=: gethash_ja_
textview=: textview_ja_
coclass 'ja'
JCREQ=: '1.0.5'
checkjcversion=: 3 : 0
f=. 1000 #. 0 ". ' ' I.@('.'=])} ]
ver=. wd 'version'
act=. f (<./ ver i.'/s') {. ver
req=. f JCREQ
if. req <: act do. return. end.
msg=. 'The JAndroid application needs updating.',LF2
msg=. msg,'Please download and install the latest Android apk.'
sminfo 'JAndroid';msg
)
checkjcversion''

cocurrent 'base'
