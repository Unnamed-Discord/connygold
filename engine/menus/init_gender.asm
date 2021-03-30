; this file is ported from crystal
InitGender:
	call InitGenderScreen
	call LoadGenderScreenPal
	call LoadGenderScreenLightBlueTile
	call WaitBGMap2
	call SetPalettes
	ld hl, AreYouABoyOrAreYouAGirlText
	call PrintText
	ld hl, .MenuHeader
	call LoadMenuHeader
	call WaitBGMap2
	call VerticalMenu
	call CloseWindow
	ld a, [wMenuCursorY]
	dec a
	
	call SetPlayerGender
	
	ld c, 10
	call DelayFrames
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 6, 3, 12, 10
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Boy@"
	db "Girl@"
	db "Enby@"

AreYouABoyOrAreYouAGirlText:
	text "What do you"
	line "identify as?"
	done
	text_end

; use Option2 bits 1-2 to store gender
SetPlayerGender:
	; change 2 to 3 for enby
	cp 2
	jr nz, .ok
	inc a
.ok
	sla a
	ld c, a
	ld a, [wOptions2]
	and %11111001
	or c
	ld [wOptions2], a
	ret

; use Option2 bits 1-2 to store gender
GetPlayerGender:
    ld a, [wOptions2]
    sra a
	and 3
    ret

InitGenderScreen:
	ld a, $10
	ld [wMusicFade], a
	ld a, LOW(MUSIC_NONE)
	ld [wMusicFadeID], a
	ld a, HIGH(MUSIC_NONE)
	ld [wMusicFadeID + 1], a
	ld c, 8
	call DelayFrames
	call ClearBGPalettes
	;call InitCrystalData
	call LoadFontsExtra
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	ld a, $0
	call ByteFill
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	xor a
	call ByteFill
	ret

LoadGenderScreenPal:
;	ld hl, .Palette
;	ld de, wBGPals1
;	ld bc, 1 palettes
;	ld a, BANK(wBGPals1)
;	call FarCopyWRAM
;	farcall ApplyPals
	ret

.Palette:
INCLUDE "gfx/new_game/gender_screen.pal"

LoadGenderScreenLightBlueTile:
	ld de, .LightBlueTile
	ld hl, vTiles2 tile $00
	lb bc, BANK(.LightBlueTile), 1
	call Get2bpp
	ret

.LightBlueTile:
INCBIN "gfx/new_game/gender_screen.2bpp"
