if lightline#colorscheme#background() ==# 'light'
  let s:gry0 = '#f4faff'
  let s:gry1 = '#e0e8f3'
  let s:gry2 = '#61758a'
  let s:gry4 = '#273441'
  let s:red_ = '#e70021'
  let s:yllw = '#efcd00'
  let s:gren = '#008600'
  let s:blue = '#0068ff'
else
  let s:gry0 = '#273441'
  let s:gry1 = '#324252'
  let s:gry2 = '#889db3'
  let s:red_ = '#d1877f'
  let s:yllw = '#e0c869'
  let s:gren = '#68a87b'
  let s:blue = '#7b9bd4'
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

let s:p.visual.left     = [[ s:gryy, s:yllw ]]
let s:p.visual.right    = [[ s:gryy, s:yllw ], [ s:gryy, s:yllw ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = [[ s:gry0, s:gry2 ]]
let s:p.tabline.tabsel  = copy(s:p.normal.middle)
let s:p.tabline.right   = [[ s:gry0, s:gry2 ]]

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:blue, s:gry0 ]]

let g:lightline#colorscheme#snow#palette =
  \ lightline#colorscheme#fill(s:p)