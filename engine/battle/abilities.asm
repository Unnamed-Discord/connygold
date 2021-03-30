; Ability Stuff

; i'm going in BLIND!
AbilityCheck_SendOut:
	call _GetMonAbility
	cp ABILITIES_ATTACK
	ret nc ; return if an attack-based ability
	jr AbilityJump
	
AbilityCheck_TurnBased:
	ldh a, [hBattleTurn]
	;push af
	xor a
	ldh [hBattleTurn], a

;	call SetPlayerTurn
	call _GetMonAbility
	cp ABILITIES_TURN
	ret c ; return if not a turn based abilitiy
	cp ABILITIES_ATTACK
	ret nc
	
	call AbilityJump
;	call SetEnemyTurn

	;pop af
	;ldh [hBattleTurn], a
	
	ret

AbilityCheck_AttackBased:
	ldh a, [hBattleTurn]
	;push af
	xor a
	ldh [hBattleTurn], a

	call _GetMonAbility
	cp ABILITIES_ATTACK
	ret c ; return if not a attack based ability
	jr AbilityJump

AbilityJump:
	ld hl, AbilityJumptable
	rst JumpTable
	ret

AbilityJumptable:
	dw AbilityNone
	dw AbilityDrizzle
	dw AbilitySandStream
	dw AbilityDrought
	dw AbilityIntimidate
	dw AbilitySwiftSwim
	dw AbilityChlorophyll
	dw AbilitySandRush
	dw AbilityLimber
	dw AbilityInsomnia
	dw AbilityImmunity
	dw AbilityOblivious
	dw AbilityOwnTempo
	dw AbilityWaterVeil
	dw AbilityShedSkin
	dw AbilityInnerFocus
	dw AbilityStatic
	dw AbilityCuteCharm
	dw AbilityFlameBody
	dw AbilityPsnPoint
	dw AbilityEffectSpore
	dw AbilityKeenEye
	dw AbilitySturdy
	dw AbilityLevitate
	dw AbilityBlaze
	dw AbilityOvergrow
	dw AbilityTorrent

_GetMonAbility:
	ld a, [wOptions2]
	bit 3, a
	jr z, .abilities_off
	
	ld a, [wBattleMonSpecies]
	ld b, a
	farcall FarGetMonAbility
	ld a, b
	ret

.abilities_off:
	ld a, 0
	ret

AbilityBlaze:
AbilityOvergrow:
AbilityTorrent:
AbilityNone:
	ret
	
AbilityDrizzle:
	ld a, [wBattleWeather]

	cp WEATHER_RAIN
	ret z
	
	call DisplayAbilityText
	farcall BattleCommand_StartRain
	ret

AbilitySandStream:
	ld a, [wBattleWeather]

	cp WEATHER_SANDSTORM
	ret z
	
	call DisplayAbilityText
	farcall BattleCommand_StartSandstorm
	ret

AbilityDrought:
	ld a, [wBattleWeather]

	cp WEATHER_SUN
	ret z
	
	call DisplayAbilityText
	farcall BattleCommand_StartSun
	ret
	
AbilityIntimidate:
	call DisplayAbilityText
	farcall BattleCommand_AttackDown
	callfar BattleCommand_StatDownMessage
	ret	

AbilitySwiftSwim:
	ld a, [wBattleWeather]

	cp WEATHER_RAIN
	ret nz
	
	jr AbilitySpeedUp
	
AbilityChlorophyll:
	ld a, [wBattleWeather]

	cp WEATHER_SUN
	ret nz
	
	jr AbilitySpeedUp

AbilitySandRush:
	ld a, [wBattleWeather]

	cp WEATHER_SANDSTORM
	ret nz
	
	jr AbilitySpeedUp
	
AbilitySpeedUp:
	call DisplayAbilityText
	
	farcall BattleCommand_SpeedUp
	callfar BattleCommand_StatUpMessage
	ret

AbilityLimber:
	ld a, [wBattleMonStatus]
	bit PAR, a
	ret z
	
	res PAR, a
	ld [wBattleMonStatus], a
	call DisplayAbilityText
	call DisplayStatusPrevented
	
	ret

AbilityInsomnia:
	ld a, [wBattleMonStatus]
	and SLP
	cp SLP
	ret c ; not asleep
	
	and %11111000 ; remove sleep
	ld [wBattleMonStatus], a
	call DisplayAbilityText
	call DisplayStatusPrevented
	
	ret

AbilityImmunity:
	ld a, [wBattleMonStatus]
	bit PSN, a
	ret z
	
	res PSN, a
	ld [wBattleMonStatus], a
	call DisplayAbilityText
	call DisplayStatusPrevented
	
	ret

AbilityOblivious:
	ld a, [wPlayerSubStatus1]
	
	bit SUBSTATUS_IN_LOVE, a
	ret z
	
	res SUBSTATUS_IN_LOVE, a
	ld [wPlayerSubStatus1], a
	
	call DisplayAbilityText
	call DisplayStatusPrevented
	
	ret

AbilityOwnTempo:
	ld a, [wPlayerSubStatus3]
	
	bit SUBSTATUS_CONFUSED, a
	ret z
	
	res SUBSTATUS_CONFUSED, a
	ld [wPlayerSubStatus3], a
	
	call DisplayAbilityText
	call DisplayStatusPrevented
	
	ret

AbilityWaterVeil:
	ld a, [wBattleMonStatus]
	bit BRN, a
	ret z
	
	res BRN, a
	ld [wBattleMonStatus], a
	call DisplayAbilityText
	call DisplayStatusPrevented
	
	ret

AbilityShedSkin:
	ld a, [wBattleMonStatus]
	cp 0
	ret z
	
	; 30% chance of curing status
	call BattleRandom
	cp 30 percent + 1
	ret nc
	
	xor a
	ld [wBattleMonStatus], a
	
	call DisplayAbilityText
	call DisplayStatusPrevented
	ret
	
	
AbilityInnerFocus:
	ld a, [wPlayerSubStatus3]

	bit SUBSTATUS_FLINCHED, a
	ret z
	
	res SUBSTATUS_FLINCHED, a
	ld [wPlayerSubStatus3], a
	
	ret

AbilityStatic:
	ld a, [wEnemyMonStatus]
	bit PAR, a
	ret nz
	
	; 20% chance
	call BattleRandom
	cp 20 percent + 1
	ret nc
StaticDoPrz:
	ld a, [wEnemyMonStatus]
	set PAR, a
	ld [wEnemyMonStatus], a

	call DisplayAbilityText
	ld hl, ParalyzedText
	call StdBattleTextbox
	
	ret

AbilityCuteCharm:
	ld a, [wEnemySubStatus1]
	bit SUBSTATUS_IN_LOVE, a
	ret nz
	
	; 20% chance
	call BattleRandom
	cp 20 percent + 1
	ret nc

	ld a, [wEnemySubStatus1]
	set SUBSTATUS_IN_LOVE, a
	ld [wEnemySubStatus1], a
	
	call DisplayAbilityText
	ld hl, FellInLoveText
	call StdBattleTextbox
	
	ret

AbilityFlameBody:
	ld a, [wEnemyMonStatus]
	bit BRN, a
	ret nz
	
	; 20% chance
	call BattleRandom
	cp 20 percent + 1
	ret nc
FlameBodyDoBrn:
	ld a, [wEnemyMonStatus]
	set BRN, a
	ld [wEnemyMonStatus], a
	
	call DisplayAbilityText
	ld hl, WasBurnedText
	call StdBattleTextbox
	
	ret

AbilityPsnPoint:
	ld a, [wEnemyMonStatus]
	bit PSN, a
	ret nz
	
	; 20% chance
	call BattleRandom
	cp 20 percent + 1
	ret nc

	ld a, [wEnemyMonStatus]
	set PSN, a
	ld [wEnemyMonStatus], a
	
	call DisplayAbilityText
	ld hl, WasPoisonedText
	call StdBattleTextbox
	
	ret

AbilityEffectSpore:
	; 4% chance
	call BattleRandom
	cp 4 percent + 1
	jr nc, .failed1
	call StaticDoPrz
	ret
	
.failed1:
	; 4% chance
	call BattleRandom
	cp 4 percent + 1
	jr nc, .failed2
	call FlameBodyDoBrn

.failed2:
	; 4% chance
	call BattleRandom
	cp 4 percent + 1
	ret nc
	
	ld a, [wEnemyMonStatus]
	or 3 ; sleep for 3 turns
	ld [wEnemyMonStatus], a
	
	call DisplayAbilityText
	ld hl, WentToSleepText
	call StdBattleTextbox
	ret

AbilityKeenEye:
	ld a, [wPlayerAccLevel]
	cp 7
	ret nc
	
	ld a, 7
	ld [wPlayerAccLevel], a
	
	call DisplayAbilityText
	call DisplayStatusPrevented
	ret
	
	
AbilitySturdy:
	ld a, [wBattleMonHP]
	ld c, a
	ld a, [wBattleMonMaxHP]
	cp c
	ret nz
	
	ld a, [wBattleMonHP+1]
	ld c, a
	ld a, [wBattleMonMaxHP+1]
	cp c
	ret nz
	
	farcall SetPlayerTurn
	;call DisplayAbilityText

	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	set SUBSTATUS_ENDURE, [hl]
	farcall SetEnemyTurn
	ret

AbilityLevitate:
	ld a, [wEnemyMoveStructType]
	cp GROUND
	ret nz
	
	farcall SetPlayerTurn
	call DisplayAbilityText
	
	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	set SUBSTATUS_PROTECT, [hl]
	farcall SetEnemyTurn
	ret	

DisplayAbilityText:
	farcall FarGetAbilityName
	ld hl, AbilityText
	call StdBattleTextbox
	ret

DisplayStatusPrevented:
	ld hl, AbilityPreventedStatusText
	call StdBattleTextbox
	ret