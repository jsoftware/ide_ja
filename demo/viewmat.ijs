
coclass 'demoviewmat'

onCreate=: test1

NB. =========================================================
test1=: 3 : 0
if. -. checkrequire_jademo_ 'viewmat';'graphics/viewmat' do. return. end.
require 'viewmat'
viewmat i.5 5
viewmat (] +./ .*. |:) 3&#. inverse i.243
)

NB. =========================================================
wd 'activity ', >coname''
