let s:gry0 = "#f0f2f4"
let s:gry1 = "#e1e5eb"
let s:gry2 = "#768294"
let s:gry3 = "#545f70"
let s:gryy = "#2a2e34"
let s:red_ = "#c04c48"
let s:gold = "#a07d19"
let s:blue = "#0779c5"
let s:mgnt = "#a8559e"

let s:p = { "normal" : {} , "inactive": {} , "insert"  : {} ,
          \ "replace": {} , "visual"  : {} , "tabline" : {} }

let s:p.normal.left     = [[ s:gry0, s:gry3 ], [ s:gry3, s:gry1 ]]
let s:p.normal.middle   = [[ s:gry3, s:gry1 ]]
let s:p.normal.right    = [[ s:gry0, s:gry3 ], [ s:gry0, s:gry3 ]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:gry0, s:blue ]]
let s:p.insert.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]

let s:p.visual.left     = [[ s:gry0, s:mgnt ]]
let s:p.visual.right    = [[ s:gry0, s:mgnt ], [ s:gry0, s:mgnt ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = [[ s:gry0, s:gry3 ]]
let s:p.tabline.tabsel  = copy(s:p.normal.middle)
let s:p.tabline.right   = [[ s:gry0, s:gry3 ]]

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:gold, s:gryy ]]

let g:lightline#colorscheme#snow_light#palette =
  \ lightline#colorscheme#fill(s:p)

