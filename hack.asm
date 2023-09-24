incbin "dkong24k.col"

FREE_ROM:               equ     $e000
CUR_LEVEL:              equ     $7062
ITEM_POINTS_LEVEL_1:    equ     300
ITEM_POINTS_LEVEL_2:    equ     500
ITEM_POINTS_LEVEL_3:    equ     800

myorg: macro addr
        seek    addr-$8000
        org     addr
endm

myorg $d205
        call    injection

myorg FREE_ROM
injection:
        ld      a, (CUR_LEVEL)
        dec     a
        jr      z, .level1
        dec     a
        jr      z, .level2
.level3:
        ld      de, ITEM_POINTS_LEVEL_3/10
        ret
.level1:
        ld      de, ITEM_POINTS_LEVEL_1/10
        ret
.level2:
        ld      de, ITEM_POINTS_LEVEL_2/10
        ret
