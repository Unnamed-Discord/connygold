Music_PokemonMarch:
	musicheader 3, 1, Music_PizzaTime_Ch1
	musicheader 1, 2, Music_PizzaTime_Ch2
	musicheader 1, 3, Music_PizzaTime_Ch3

Music_PizzaTime_Ch1:
	tempo $5D
	volume $77
	stereopanning $77
Music_PizzaTime_Ch1_loop:
	dutycycle 1
	vibrato $00, $13
	octave 3
	notetype $C, $A7
	callchannel Music_PizzaTime_Ch1_Ditty3
	octave 2
	note B_, 2
	octave 3
	callchannel Music_PizzaTime_Ch1_Ditty4
Music_PizzaTime_Ch1_loop_1:
	callchannel Music_PizzaTime_Ch1_Ditty1
	loopchannel 19, Music_PizzaTime_Ch1_loop_1
Music_PizzaTime_Ch1_loop_2:
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	loopchannel 3, Music_PizzaTime_Ch1_loop_2
Music_PizzaTime_Ch1_loop_3:
	callchannel Music_PizzaTime_Ch1_Ditty1
	loopchannel 14, Music_PizzaTime_Ch1_loop_3
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty6
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty6
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty7
	octave 4
	callchannel Music_PizzaTime_Ch1_Ditty8
	octave 3
	callchannel Music_PizzaTime_Ch1_Ditty7
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty7
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty2
Music_PizzaTime_Ch1_loop_4:
	callchannel Music_PizzaTime_Ch1_Ditty10
	callchannel Music_PizzaTime_Ch1_Ditty7
	callchannel Music_PizzaTime_Ch1_Ditty7
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty7
	callchannel Music_PizzaTime_Ch1_Ditty7
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty9
	callchannel Music_PizzaTime_Ch1_Ditty6
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty2
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty1
	loopchannel 2, Music_PizzaTime_Ch1_loop_4
	loopchannel 0, Music_PizzaTime_Ch1_loop

Music_PizzaTime_Ch1_Ditty10:
	note A_, 6
	note G_, 1
	note __, 5
	note A_, 6
	note G_, 1
	note __, 5
	note A#, 4
	note A_, 1
	note __, 1
	note G_, 4
	note A#, 1
	note __, 1
	note A_, 12
	octave 4
	note C_, 6
	octave 3
	note A#, 1
	note __, 5
	octave 4
	note C_, 6
	octave 3
	note A#, 1
	note __, 5
	octave 4
	note D_, 4
	note C_, 1
	note __, 1
	octave 3
	note A#, 4
	octave 4
	note D_, 1
	note __, 1
	octave 3
	endchannel

Music_PizzaTime_Ch1_Ditty9:
	note D_, 12
	note D#, 2
	note __, 2
	note D#, 1
	note __, 1
	endchannel

Music_PizzaTime_Ch1_Ditty8:
	note C_, 2
	note __, 2
	note C_, 1
	note __, 1
	endchannel

Music_PizzaTime_Ch1_Ditty7:
	note A#, 2
	note __, 2
	note A#, 1
	note __, 1
	endchannel

Music_PizzaTime_Ch1_Ditty5:
	note A_, 2
	note __, 2
	note A_, 1
	note __, 1
	endchannel

Music_PizzaTime_Ch1_Ditty4:
	note C_, 2
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	endchannel

Music_PizzaTime_Ch1_Ditty3:
	note A#, 2
	note A_, 2
	note A#, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note G#, 2
	note F#, 2
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	endchannel

Music_PizzaTime_Ch1_Ditty2:
	note G_, 2
	note __, 2
	note G_, 1
	note __, 1
	endchannel
	
Music_PizzaTime_Ch1_Ditty1:
	note F_, 2
	note __, 2
	note F_, 1
	note __, 1
	endchannel
	
Music_PizzaTime_Ch2:
Music_PizzaTime_Ch2_loop:
	dutycycle 1
	vibrato $00, $13
	octave 4
	notetype $C, $F7
	callchannel Music_PizzaTime_Ch1_Ditty3
	octave 3
	note B_, 2
	octave 4
	callchannel Music_PizzaTime_Ch1_Ditty4
	note __, 16
	note __, 16
	note __, 14
Music_PizzaTime_Ch2_loop1:
	octave 4
	note F_, 2
	note A#, 15
	note __, 1
	note A#, 1
	note __, 1
	callchannel Music_PizzaTime_Ch1_Ditty5
	callchannel Music_PizzaTime_Ch1_Ditty1
	callchannel Music_PizzaTime_Ch1_Ditty2
	note D_, 3
	note __, 3
	note D_, 8
	note __, 2
	callchannel Music_PizzaTime_Ch2_Ditty1
	note A#, 13
	note __, 3
	octave 4
	callchannel Music_PizzaTime_Ch2_Ditty1
	note A#, 14
	note __, 8
	loopchannel 2, Music_PizzaTime_Ch2_loop1
	octave 4
	note D_, 1
	note __, 1
	note D_, 13
	note __, 3
	callchannel Music_PizzaTime_Ch2_Ditty2
	note D_, 2
	note __, 2
	callchannel Music_PizzaTime_Ch2_Ditty2
	note D_, 3
	note __, 3
	octave 3
	note A_, 8
	note __, 2
	note A_, 1
	note __, 1
	callchannel Music_PizzaTime_Ch1_Ditty5
	note A_, 14
	note __, 8
	octave 4
	note F_, 1
	note __, 1
	note F_, 13
	note __, 3
	callchannel Music_PizzaTime_Ch2_Ditty3
	note F_, 2
	note __, 2
	callchannel Music_PizzaTime_Ch2_Ditty3
	note F_, 3
	note __, 3
	note C_, 8
	note __, 2
	note C_, 1
	note __, 1
	callchannel Music_PizzaTime_Ch1_Ditty8
	note C_, 16
	notetype $1, $F7
	note __, 12
	notetype $C, $F7
	note __, 7
Music_PizzaTime_Ch2_loop2:	
	callchannel Music_PizzaTime_Ch2_Ditty4
	loopchannel 2, Music_PizzaTime_Ch2_loop2
	callchannel Music_PizzaTime_Ch2_Ditty7
Music_PizzaTime_Ch2_loop3:	
	callchannel Music_PizzaTime_Ch2_Ditty4
	loopchannel 2, Music_PizzaTime_Ch2_loop3
	callchannel Music_PizzaTime_Ch2_Ditty6
Music_PizzaTime_Ch2_loop7:
	note D_, 4
	note D_, 1
	note __, 1
	loopchannel 7, Music_PizzaTime_Ch2_loop7
	callchannel Music_PizzaTime_Ch2_Ditty5
	octave 4
Music_PizzaTime_Ch2_loop4:	
	callchannel Music_PizzaTime_Ch2_Ditty4
	loopchannel 2, Music_PizzaTime_Ch2_loop4
	callchannel Music_PizzaTime_Ch2_Ditty7
Music_PizzaTime_Ch2_loop5:	
	callchannel Music_PizzaTime_Ch2_Ditty4
	loopchannel 2, Music_PizzaTime_Ch2_loop5
	callchannel Music_PizzaTime_Ch2_Ditty6
Music_PizzaTime_Ch2_loop6:
	note D_, 4
	note D_, 1
	note __, 1
	loopchannel 7, Music_PizzaTime_Ch2_loop6
	callchannel Music_PizzaTime_Ch2_Ditty5
	loopchannel 0, Music_PizzaTime_Ch2_loop

Music_PizzaTime_Ch2_Ditty7:
	note A#, 4
	note A_, 1
	note __, 1
	note G_, 4
	note A#, 1
	note __, 1
	note A_, 11
	note __, 1
	endchannel

Music_PizzaTime_Ch2_Ditty6:
	note A#, 4
	note A_, 1
	note __, 1
	note G_, 4
	note A#, 1
	note __, 1
	note F_, 4
	note D_, 1
	note __, 1
	endchannel
	
Music_PizzaTime_Ch2_Ditty5:
	note A#, 11
	note __, 1
	octave 5
	note C_, 4
	octave 4
	note A#, 1
	note __, 1
	note G_, 4
	note A#, 1
	note __, 1
	note F_, 4
	note D_, 1
	note __, 1
	note D_, 4
	note D#, 1
	note __, 1
	note F_, 4
	note D#, 1
	note __, 1
	note D_, 4
	note C_, 1
	note __, 1
	octave 3
	note A#, 11
	note __, 1
	endchannel
	
Music_PizzaTime_Ch2_Ditty4:
	note A_, 6
	note G_, 1
	note __, 5
	endchannel
	
Music_PizzaTime_Ch2_Ditty3:
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	endchannel
	
Music_PizzaTime_Ch2_Ditty2:
	note D_, 1
	note __, 1
Music_PizzaTime_Ch1_Ditty6:	
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	endchannel

Music_PizzaTime_Ch2_Ditty1:
	note D_, 1
	note __, 1
	note C_, 2
	note __, 2
	octave 3
	note A#, 1
	note __, 1
	endchannel
	
Music_PizzaTime_Ch3:
Music_PizzaTime_Ch3_loop:
	octave 2
	notetype $C, $17
	callchannel Music_PizzaTime_Ch1_Ditty3
	octave 1
	note B_, 2
	octave 2
	note C_, 2
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	octave 1
	note F_, 2
	octave 2
	note D_, 2
	note C_, 2
	note D_, 2
	octave 1
	note A#, 2
	note __, 4
	octave 2
	note F_, 2
	note __, 4
	octave 1
Music_PizzaTime_Ch3_loop_1:
	callchannel Music_PizzaTime_Ch3_Ditty2
	loopchannel 11, Music_PizzaTime_Ch3_loop_1
	callchannel Music_PizzaTime_Ch3_Ditty1
Music_PizzaTime_Ch3_loop_2:	
	callchannel Music_PizzaTime_Ch3_Ditty2
	loopchannel 7, Music_PizzaTime_Ch3_loop_2
	callchannel Music_PizzaTime_Ch3_Ditty1
	note A#, 2
	note __, 4
	note A#, 2
	note __, 4
Music_PizzaTime_Ch3_loop_3:
	octave 2
	note D_, 2
	note __, 4
	octave 1
	note A_, 2
	note __, 4
	loopchannel 7, Music_PizzaTime_Ch3_loop_3
Music_PizzaTime_Ch3_loop_4:
	octave 1
	note F_, 2
	note __, 4
	octave 2
	note C_, 2
	note __, 4
	loopchannel 7, Music_PizzaTime_Ch3_loop_4
Music_PizzaTime_Ch3_loop_5:
	callchannel Music_PizzaTime_Ch3_Ditty3
	loopchannel 3, Music_PizzaTime_Ch3_loop_5
	octave 1
	note F_, 6
	octave 2
	note C_, 2
	note D_, 2
	note C_, 2
Music_PizzaTime_Ch3_loop_6:
	callchannel Music_PizzaTime_Ch3_Ditty3
	loopchannel 3, Music_PizzaTime_Ch3_loop_6
	octave 1
	note A#, 6
	note A#, 6
	note A_, 6
	note A_, 6
	note __, 4
	octave 2
	note G_, 2
	note G_, 4
	note G_, 1
	note __, 1
	note F#, 4
	note F#, 1
	note __, 1
	note D_, 4
	note D_, 1
	note __, 1
	note G_, 6
	note D_, 6
	note D#, 6
	note E_, 6
	note F_, 6
	note G_, 6
	note F_, 6
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 12
Music_PizzaTime_Ch3_loop_7:
	octave 2
	note F_, 6
	octave 3
	note C_, 2
	note __, 4
	loopchannel 2, Music_PizzaTime_Ch3_loop_7
	octave 2
	callchannel Music_PizzaTime_Ch3_Ditty4
	note F_, 6
	note C_, 2
	note D_, 2
	note E_, 2
Music_PizzaTime_Ch3_loop_8:	
	callchannel Music_PizzaTime_Ch3_Ditty4
	loopchannel 3, Music_PizzaTime_Ch3_loop_8
	octave 1
	note A#, 4
	octave 2
	note A#, 1
	note __, 1
	note A#, 4
	note A#, 1
	note __, 1
	note A_, 4
	note A_, 1
	note __, 1
	note A_, 4
	note A_, 1
	note __, 1
	note G_, 4
	note G_, 1
	note __, 1
	note G_, 4
	note G_, 1
	note __, 1
	note F#, 4
	note F#, 1
	note __, 1
	note D_, 4
	note D_, 1
	note __, 1
	octave 1
	note G_, 12
	octave 2
	note D#, 4
	note D#, 1
	note __, 1
	note E_, 4
	note E_, 1
	note __, 1
	note F_, 4
	note F_, 1
	note __, 1
	note G_, 4
	note G_, 1
	note __, 1
	note F_, 4
	note F_, 1
	note __, 1
	note G_, 4
	note A_, 1
	note __, 1
	note A#, 6
	note F_, 2
	note G_, 2
	note A_, 2
	loopchannel 0, Music_PizzaTime_Ch3_loop

Music_PizzaTime_Ch3_Ditty4:
	note F_, 6
	note C_, 2
	note __, 4
	endchannel

Music_PizzaTime_Ch3_Ditty3:
	octave 1
	note F_, 6
	octave 2
	note C_, 2
	note __, 4
	endchannel
	
Music_PizzaTime_Ch3_Ditty2:
	note A#, 2
	note __, 4
	note F_, 2
	note __, 4
	endchannel
	
Music_PizzaTime_Ch3_Ditty1:
	note A#, 2
	note __, 4
	note F_, 2
	note G_, 2
	note A_, 2
	endchannel
	