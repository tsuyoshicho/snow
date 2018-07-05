if lightline#colorscheme#background() ==# 'light'
  let s:gry0 = '#ffffff'
  let s:gry1 = '#ebedf1'
  let s:gry2 = '#67788a'
  let s:gryy = '#273441'
  let s:red_ = '#b65d1a'
  let s:yllw = '#fcd900'
  let s:gren = '#008740'
  let s:blue = '#0077db'
else
  let s:gry0 = '#202a35'
  let s:gry1 = '#2b3846'
  let s:gry2 = '#8091a4'
  let s:gryy = '#202a35'
  let s:red_ = '#b08970'
  let s:yllw = '#dac264'
  let s:gren = '#6e9c7e'
  let s:blue = '#7e93bb'
endif

let s:p = { 'normal' : {} , 'inactive': {} , 'insert'  : {} ,
          \ 'replace': {} , 'visual'  : {} , 'tabline' : {} }

let s:p.normal.left     = [[ s:gry0, s:gry2 ], [ s:gry2, s:gry1 ]]
let s:p.normal.middle   = [[ s:gry2, s:gry1 ]]
let s:p.normal.right    = [[ s:gry0, s:gry2 ], [ s:gry0, s:gry2 ]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:gry0, s:gren ]]
let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]

let s:p.visual.left     = [[ s:gry0, s:blue ]]
let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = [[ s:gry0, s:gry2 ]]
let s:p.tabline.tabsel  = copy(s:p.normal.middle)
let s:p.tabline.right   = [[ s:gry0, s:gry2 ]]

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:yllw, s:gryy ]]

let g:lightline#colorscheme#snow_blueshift#palette =
  \ lightline#colorscheme#fill(s:p)