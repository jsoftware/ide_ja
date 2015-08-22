NB. multimedia demo
NB. depends on platform support
NB. android does not support video output

coclass 'demovideo'

onCreate=: demo_run

NB. =========================================================
MULTIMEDIA=: 0 : 0
pc multimedia;
bin v;
wh _1 200;
cc mm videoview;
bin h;
cc open button;cn "open local";
wh _1 _2;
cc localurl edit;
bin zh;
bin z;
bin h;
cc openurl button;cn "open url";
wh _1 _2;
cc url edit;
bin z;
bin z;
)

NB. =========================================================
multimedia_open_button=: 3 : 0
mmfile=. wd 'get localurl text'
if. #mmfile do.
  wd 'set mm stop'
  wd 'set mm media ', dquote mmfile
  wd 'set mm play'
end.
)

NB. =========================================================
multimedia_openurl_button=: 3 : 0
mmfile=. wd 'get url text'
if. #mmfile do.
  wd 'set mm stop'
  wd 'set mm media ', dquote mmfile
  wd 'set mm play'
end.
)

NB. =========================================================
multimedia_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
demo_run=: 3 : 0
wd MULTIMEDIA
wd 'set url text "https://archive.org/download/test-mpeg/test-mpeg_512kb.mp4"'
wd 'set localurl text "file:///sdcard/sample.mp4"'
wd 'pshow'
)

NB. =========================================================
wd 'activity ', >coname''

