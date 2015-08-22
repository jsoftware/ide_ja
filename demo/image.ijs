NB. image demo

coclass 'demoimage'

onCreate=: imdemo_run

NB. =========================================================
imdemo_run=: 3 : 0
if. -. checkrequire_jademo_ 'bmp';'graphics/bmp' do. return. end.
wd 'pc imdemo closeok escclose'
wd 'bin v'
wd 'cc pic image'
wd 'cc jpg image '
wd 'cc png image fitxy'
wd 'cc red image center'
wd 'bin z'
wd 'pshow'
wd 'set pic image *',jpath '~addons/graphics/bmp/toucan.bmp'
NB. convert to jpg
d=. readimg_ja_ jpath '~addons/graphics/bmp/toucan.bmp'
d writeimg_ja_ jpath '~temp/toucan.jpg'
wd 'set jpg image *',jpath '~temp/toucan.jpg'
NB. flip and save as png
d1=. |."1 d
(<jpath '~temp/toucan.png') 1!:2~ d1 putimg_ja_ 'png'
wd 'set png image *',jpath '~temp/toucan.png'
NB. pure red
d2=. setalpha 20 200$255
d2 writeimg_ja_ jpath '~temp/red.png'
wd 'set red image *',jpath '~temp/red.png'
)

wd 'activity ', >coname''

