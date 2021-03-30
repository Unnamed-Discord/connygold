	object_const_def
	const SILVERCAVEROOM3_RED
	const SILVERCAVEROOM3_AGATHA

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

Red:
    special SetRedPokeNames  ; for cnstntn fight
	special FadeOutMusic
	faceplayer
	opentext
	writetext RedSeenText
	waitbutton
	closetext
	winlosstext RedWinLossText, RedWinLossText
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special UnsetRedPokeNames
	special FadeOutMusic
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	credits
	end

RedSeenText:
	text "JUMBO…"
	line "…"
	
	para "It's all JUMBO's"
	line "fault…"
	done

RedWinLossText:
	text "…"
	done

RedLeavesText:
    text "…"
	
	para "What happened?"
	
	para "Huh? It was AGATHA"
	line "all along?"
	
	para "I did not see"
	line "that coming."
	
	para "I'm sorry. JUMBO"
	line "scared me. But it"
	cont "wasn't her fault."
	
	para "Thank you."
	done

SummitAgathaLeft:
	moveobject SILVERCAVEROOM3_AGATHA, 9, 14
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear SILVERCAVEROOM3_AGATHA
	applymovement SILVERCAVEROOM3_AGATHA, AgathaApproachMovement
	scall AgathaNext
	applymovement SILVERCAVEROOM3_AGATHA, AgathaExitMovement1
	disappear SILVERCAVEROOM3_AGATHA
	setscene SCENE_FINISHED
	playmapmusic
	end

SummitAgathaRight:
    moveobject SILVERCAVEROOM3_AGATHA, 10, 14
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear SILVERCAVEROOM3_AGATHA
	applymovement SILVERCAVEROOM3_AGATHA, AgathaApproachMovement
	scall AgathaNext
	applymovement SILVERCAVEROOM3_AGATHA, AgathaExitMovement2
	disappear SILVERCAVEROOM3_AGATHA
	setscene SCENE_FINISHED
	playmapmusic
	end

AgathaNext:
    special SetRedPokeNames  ; for cnstntn fight
	opentext
	writetext AgathaBeforeText
	waitbutton
	closetext
	setevent EVENT_AGATHA
	winlosstext AgathaDefeatText, AgathaVictoryText
	setlasttalked AGATHA
	loadtrainer AGATHA, AGATHA1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special UnsetRedPokeNames
	opentext
	writetext AgathaAfterText
	waitbutton
	closetext
	special HealParty
	end

AgathaApproachMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end
	
AgathaExitMovement1:
    step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
AgathaExitMovement2:
    step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AgathaBeforeText:
	text "Bravo, honey."

	para "You made it this"
	line "far. I'm honestly"
	cont "shocked."

	para "My name is AGATHA."
	line "I was a member of"
	cont "the ELITE FOUR."
	
	para "Then, I was forced"
	line "to retire so that"
	cont "meathead BRUNO."

	para "They have no idea"
	line "who they were"
	cont "messing with!"
	
	para "I am a witch. I"
	line "have been around"
	cont "for a long time."
	
	para "Using my knowledge"
	line "of simple hexes,"
	cont "I took revenge!"
	
	para "The JUMBO thing,"
	line "that was me. I"
	cont "took control."
	
	para "And you, sweetie,"
	line "were just caught"
	cont "up in this mess."
	
	para "But now it's time"
	line "for the games to"
	cont "stop."

	para "I can't allow you"
	line "to see CNSTNTN."

	para "<PLAYER>!"
	line "This is the end!"
	done

AgathaDefeatText:
	text "…Impossible!"

	para "How can it be?"
	line "How could I lose?"
	done

AgathaAfterText:
	text "Fine. See him for"
	line "all I care. He's"
	cont "just a kid."
	
	para "You won't be able"
	line "to break the spell"
	cont "on him."

	para "This isn't over."
	line "It will never be"
	cont "over."
	done

AgathaVictoryText:
	text "…Humph!"

	para "You are weak."
	line "I expected nothing"
	cont "less."
	done

AgathaSecondTime:
    special SetRedPokeNames  ; for cnstntn fight
	faceplayer
	opentext
	writetext AgathaBeforeTextSecond
	waitbutton
	closetext
	setevent EVENT_AGATHA
	winlosstext AgathaDefeatText, AgathaVictoryText
	setlasttalked AGATHA
	loadtrainer AGATHA, AGATHA1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	disappear SILVERCAVEROOM3_AGATHA
	special UnsetRedPokeNames
	special HealParty
	opentext
	writetext AgathaAfterTextSecond
	waitbutton
	closetext
	playmapmusic
	end
	
AgathaBeforeTextSecond:
	text "…Huh?"
	
	para "Back so soon,"
	line "sweetie?"
	
	para "Hm. Caught me in"
	line "the act I suppose."
	
	para "No matter, this"
	line "time you stand"
	cont "no chance!"
	done
	
AgathaAfterTextSecond:
	text "She vanished into"
	line "thin air..."
	done
	
SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2

	def_coord_events
	coord_event 9, 18, SCENE_DEFAULT, SummitAgathaLeft
	coord_event 10, 18, SCENE_DEFAULT, SummitAgathaRight

	def_bg_events

	def_object_events
	object_event  9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
	object_event  9, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AgathaSecondTime, EVENT_AGATHA
