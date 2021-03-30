; ported from crystal

BetaLoadPlayerTrainerClass: ; unreferenced
	ret

ShowPlayerNamingChoices:
	ld hl, ChrisNameMenuHeader
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_header
	
	; female
	ld hl, KrisNameMenuHeader
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_header
	
	; enby
	ld hl, EnbyNameMenuHeader
	
.got_header
	call LoadMenuHeader
	call VerticalMenu
	ld a, [wMenuCursorY]
	dec a
	call CopyNameFromMenu
	call CloseWindow
	ret

INCLUDE "data/player_names.asm"

GetPlayerNameArray: ; unreferenced
	ld hl, wPlayerName
	ld de, MalePlayerNameArray
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_array
	
	; female
	ld de, FemalePlayerNameArray
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_array
	
	; enby
	ld de, EnbyPlayerNameArray
	
.got_array
	call InitName
	ret

GetPlayerIcon:
	ld de, ChrisSpriteGFX
	ld b, BANK(ChrisSpriteGFX)
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_gfx
	
	; female
	ld de, KrisSpriteGFX
	ld b, BANK(KrisSpriteGFX)
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_gfx
	
	; enby
	ld de, EnbySpriteGFX
	ld b, BANK(EnbySpriteGFX)	

.got_gfx
	ret

GetCardPic:
	ld hl, ChrisCardPic
	
	; Check Gender
	ld a, [wOptions2]

	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_pic
	
	; female
	ld hl, KrisCardPic
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_pic
	
	; enby
	ld hl, EnbyCardPic

.got_pic
	ld de, vTiles2 tile $00
	ld bc, $23 tiles
	ld a, BANK(ChrisCardPic) ; aka BANK(KrisCardPic)
	call FarCopyBytes
	ld hl, TrainerCardGFX
	ld de, vTiles2 tile $23
	ld bc, 6 tiles
	ld a, BANK(TrainerCardGFX)
	call FarCopyBytes
	ret

ChrisCardPic:
INCBIN "gfx/trainer_card/chris_card.2bpp"

KrisCardPic:
INCBIN "gfx/trainer_card/kris_card.2bpp"

EnbyCardPic:
INCBIN "gfx/trainer_card/enby_card.2bpp"

TrainerCardGFX:
INCBIN "gfx/trainer_card/trainer_card.2bpp"

GetPlayerBackpic:
	ld hl, ChrisBackpic
	ld b, BANK(ChrisBackpic)
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .ok
	
	; female
	ld hl, KrisBackpic
	ld b, BANK(KrisBackpic)
	bit PLAYERGENDER_ENBY_F, a
	jr z, .ok
	
	; enby
	ld hl, EnbyBackpic
	ld b, BANK(EnbyBackpic)
	
.ok
	ld de, vTiles2 tile $31
	ld c, 7 * 7
	predef DecompressGet2bpp
	ret

HOF_LoadTrainerFrontpic:
	call WaitBGMap
	xor a
	ldh [hBGMapMode], a

; Get class
	ld e, CHRIS
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_class
	
	; female
	ld e, KRIS
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_class
	
	; enby
	ld e, ENBY
	
.got_class
	ld a, e
	ld [wTrainerClass], a

; Load pic
	ld de, ChrisPic
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_pic
	
	; female
	ld de, KrisPic
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_pic
	
	; enby
	ld de, EnbyPic
	
.got_pic
	ld hl, vTiles2
	ld b, BANK(ChrisPic) ; aka BANK(KrisPic)
	ld c, 7 * 7
	call Get2bpp

	call WaitBGMap
	ld a, $1
	ldh [hBGMapMode], a
	ret

DrawIntroPlayerPic:
; Draw the player pic at (6,4).

; Get class
	ld e, CHRIS
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_class
	
	; female
	ld e, KRIS
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_class
	
	; enby
	ld e, ENBY
	
.got_class
	ld a, e
	ld [wTrainerClass], a

; Load pic
	ld de, ChrisPic
	
	; Check Gender
	ld a, [wOptions2]
	
	; male
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .got_pic
	
	; female
	ld de, KrisPic
	bit PLAYERGENDER_ENBY_F, a
	jr z, .got_pic
	
	; enby
	ld de, EnbyPic
	
.got_pic
	ld hl, vTiles2
	ld b, BANK(ChrisPic) ; aka BANK(KrisPic)
	ld c, 7 * 7 ; dimensions
	call Get2bpp

; Draw
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 6, 4
	lb bc, 7, 7
	predef PlaceGraphic
	ret

ChrisPic:
INCBIN "gfx/player/chris.2bpp"

EnbyPic:
INCBIN "gfx/player/enby.2bpp"

KrisPic:
INCBIN "gfx/player/kris.2bpp"

EnbyBackpic:
INCBIN "gfx/player/enby_back.2bpp.lz"

KrisBackpic:
INCBIN "gfx/player/kris_back.2bpp.lz"
