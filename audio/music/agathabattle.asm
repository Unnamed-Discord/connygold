;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_AgathaBattle:
	musicheader 4, 1, Music_Placeholder_Ch1
	musicheader 1, 2, Music_Placeholder_Ch2
	musicheader 1, 3, Music_Placeholder_Ch3
	musicheader 1, 4, Music_Placeholder_Ch4

Music_Placeholder_Ch1:
	volume 7, 7
	duty_cycle 3
	pitch_offset 2
	vibrato 18, 1, 5
	note_type 12, 11, 2
	tempo 109
;Bar 1
	note __, 16
	note __, 16
;Bar 3
	octave 4
	intensity $b7
	note E_, 4
	octave 3
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 4
	note B_, 4
	note A_, 2
	note G_, 4
	note F#, 4
	
Music_Agatha_Ch1Loop:
;Bar 5
	intensity $a7
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note G_, 2
	note F#, 2
	note E_, 2
	note __, 2
;Bar 6
	note F_, 2
	note A#, 2
	note __, 2
	note F_, 2
	note __, 4
	note F_, 2
	note G_, 2
;Bar 7
	note A_, 2
	note G_, 2
	note F_, 2
	note __, 2
	note B_, 2
	note __, 2
	note D#, 2
	note __, 2
;Bar 8
	octave 4
	note E_, 2
	note __, 2
	octave 3
	intensity $b7
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 9
	note B_, 4
	note A_, 2
	note G_, 4
	note F#, 4
;Bar 10
	intensity $a7
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note G_, 2
	note F#, 2
	note E_, 2
	note E_, 2
;Bar 11
	note F_, 2
	note A#, 2
	note __, 2
	note F_, 2
	note __, 4
	note F_, 2
	note G_, 2
;Bar 12
	note A_, 2
	note G_, 2
	note F_, 2
	note __, 2
	note B_, 2
	note __, 2
	note D#, 2
	note __, 2
;Bar 13
	octave 4
	note E_, 2
	note __, 2
	octave 3
	intensity $b7
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 14
	note B_, 4
	note A_, 2
	note G_, 4
	note B_, 4
;Bar 15
	octave 4
	note C_, 2
	note __, 2
	intensity $a7
	note C_, 2
	note __, 2
	note C_, 4
	note __, 4
;Bar 16
	octave 3
	note B_, 2
	note A_, 2
	note __, 2
	note B_, 2
	note __, 12
;Bar 17
	octave 4
	note C_, 2
	note __, 2
	note C_, 4
	note __, 4
;Bar 18
	note C_, 2
	note D_, 2
	note __, 2
	note E_, 2
	note __, 12
;Bar 19
	octave 3
	intensity $b7
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
;Bar 20
	octave 4
	note A_, 2
	note __, 2
	note F_, 2
	note __, 2
	note F_, 2
	note __, 2
	note E_, 2
	note __, 2
;Bar 21
	note D#, 2
	note D_, 2
	note D#, 2
	octave 2
	note B_, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note __, 2
;Bar 22
	note B_, 2
	note B_, 2
	note A_, 2
	note A_, 2
	note G_, 2
	note G_, 2
	note F#, 2
	note F#, 2
	sound_loop 0, Music_Agatha_Ch1Loop

; ============================================================================================================

Music_Placeholder_Ch2:
	duty_cycle 2
	vibrato 8, 3, 6
	pitch_offset 1
	note_type 12, 12, 2
;Bar 1
	octave 2
	intensity $b7
	note E_, 4
	octave 1
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 2
	note B_, 4
	note A_, 2
	note G_, 4
	note F#, 4
;Bar 3
	octave 2
	note E_, 4
	octave 1
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 4
	note B_, 4
	note A_, 2
	note G_, 4
	note F#, 4
	
Music_Agatha_Ch2Loop:
;Bar 5
	note __, 16
	note __, 16
	note __, 16
;Bar 8
	octave 2
	note E_, 4
	octave 1
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 9
	note B_, 4
	note A_, 2
	note G_, 4
	note F#, 4
;Bar 10
	note __, 16
	note __, 16
	note __, 16
;Bar 13
	octave 2
	note E_, 4
	octave 1
	note E_, 4
	note A#, 6
	note B_, 4
;Bar 14
	note B_, 4
	note E_, 2
	note A#, 4
	note B_, 4
;Bar 15
	octave 2
	note C_, 4
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 12
	sound_loop 0, Music_Agatha_Ch2Loop

; ============================================================================================================

Music_Placeholder_Ch3:
	notetype 12, $18
;Bar 1
	intensity $14
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	
Music_Agatha_Ch3Loop:
;Bar 5
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 6
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
;Bar 7
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 8
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note B_, 2
;Bar 9
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	octave 2
	note F#, 2
	octave 3
	note F#, 2
;Bar 10
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 11
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
;Bar 12
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 13
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note B_, 2
;Bar 14
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note A_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
;Bar 15
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
;Bar 16
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
;Bar 17
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
;Bar 18
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
;Bar 19
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
;Bar 20
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
;Bar 21
	note B_, 2
	note B_, 2
	note B_, 2
	note __, 2
	octave 2
	note B_, 2
	note B_, 2
	note B_, 2
	note __, 2
;Bar 22
	note B_, 2
	note B_, 2
	note A_, 2
	note A_, 2
	note G_, 2
	note G_, 2
	note F#, 2
	note F#, 2
    sound_loop 0, Music_Agatha_Ch3Loop

; ============================================================================================================

Music_Placeholder_Ch4:
	togglenoise 5 ; WARNING: this might sound bad.
	notetype 12
;Bar 1
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	
Music_Agatha_Ch4Loop:
;Bar 5
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 6
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 7
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 8
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 9
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 10
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 11
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 12
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 13
	note B_, 4
	note D_, 4
	note B_, 4
	note D_, 4
;Bar 14
	note B_, 4
	note D_, 4
	note B_, 8
;Bar 15
	note B_, 4
	note D_, 4
	note B_, 4
	note D_, 4
;Bar 16
	note B_, 4
	note D_, 4
	note B_, 2
	note A_, 2
	note G_, 2
	note F_, 2
;Bar 17
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 18
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 19
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 20
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 21
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
;Bar 22
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 4
	sound_loop 0, Music_Agatha_Ch4Loop

; ============================================================================================================

