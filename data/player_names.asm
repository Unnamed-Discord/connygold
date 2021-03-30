ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; default option
	db 0 ; ????

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "UNNAMED@"
	db "GOLD@"
	db "ERIC@"
	db "HARVEY@"
	db 2 ; displacement
	db " NAME @" ; title

KrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ????

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "NAMELYS@"
	db "KRIS@"
	db "RAVEN@"
	db "JENN@"
	db 2 ; title indent
	db " NAME @" ; title
	
EnbyNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .EnbyNames
	db 1 ; default option
	db 0 ; ????

.EnbyNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
EnbyPlayerNameArray:
	db "NANASHI@"
	db "COBALT@"
	db "WES@"
	db "AVERY@"
	db 2 ; title indent
	db " NAME @" ; title
