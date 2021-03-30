	object_const_def
	const MOVEDELETERSHOUSE_SUPER_NERD

MoveDeletersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MoveDeleter:
	; below was used during the live play through to prevent trolling
    ;jumptextfaceplayer MoveDeleterFakeoutText
	
	; this normal section was commented out
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	end

MoveDeleterFakeoutText:
	text "The man seems to"
	line "be unresponsive."

	para "His eyes are"
	line "glazed over."
	done

MoveDeletersHouseBookshelf:
	jumpstd DifficultBookshelfScript

MoveDeletersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 6
	warp_event  3,  7, BLACKTHORN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MoveDeletersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MoveDeletersHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveDeleter, -1
