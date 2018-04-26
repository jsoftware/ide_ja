NB. other

dirmatch=: 3 : 'wd ''dirmatch '', ; dquote&.> 2 {. boxopen y'
open=: 3 : 'wd ''openj *'' , > {. getscripts_j_ y'
immexj=: [: wd 'immexj *'&,
smact=: wd bind 'smact'

clipread=: clipread_ja_
clipwrite=: clipwrite_ja_
getsha1=: getsha1_ja_
gethash=: gethash_ja_
textview=: textview_ja_

mbinfo_ja_=: wdinfo
