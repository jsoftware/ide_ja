NB. x context
NB. y text[;duration]
NB. duration: 0 short, 1 long
MakeToast=: 0&$: : (4 : 0)
ctx=. x
'text duration'=. 2{.(boxopen y), <0
if. -.MAIN_THREAD do. EMPTY return. end.
cctx=. getjactivity ctx
assert. 0~:cctx
jniCheck toast=. 'android.widget.Toast' ('makeText (LContext;LCharSequence;I)LToast;' jniStaticMethod)~ cctx;text;duration
jniCheck toast ('show ()V' jniMethod)~ ''
jniCheck DeleteLocalRef< toast
if. 0=ctx do. jniCheck DeleteLocalRef <cctx end.
EMPTY
)
