divert(`-1')
include(`m4/capitalize.m4')
define(`IMF', `import $2 from "$1"')
define(`IMDF', IMF($1,{$2}))
define(`XC',`const [$1`Change$, set'_capitalize($1)`] = createSignal<'$3`>(), [use'_capitalize($1)`, '$1`$] = bind('$1`Change$, '$2)')
define(`RFC',`function $1($2) {$4; RR($3, $5)}')
define(`RUS',`const [$1`, set'_capitalize($1)] = useState($2)')
define(`RUX',`const $1` = use'_capitalize($1)()')
define(`RR',`return (<$1>$2</$1>)')
define(`RC',`<$1 $2>$3</$1>')
define(`PC',`className="$1"')
define(`PO',`on$1={($2)=>$3}')
define(`POC',PO(Click,$1,$2))
divert`'dnl
IMDF(react,useState); IMDF(@react-rxjs/core,bind); IMDF(@react-rxjs/utils,createSignal)

XC(text,"",string)

RFC(TextInput,,div, RUX(text),
  RC(input, type="text" value={text} placeholder="Type something..." PO(Change,e,setText(e.target.value)),)
  <br /> RX: {text})

RFC(App,,div, RUS(count,0),
  <TextInput />
  RC(button,PC(p-2 bg-red-500 text-white) POC(,setCount(count+1)), State: {count}))

export default App
