1 REM 
1 REM BASIC DUNGEONS
1 REM My RPG game for Amstrad GameDev Challenge, BASIC version
1 REM by 8bitDave <david.novella@me.com>
1 REM Created: 20190711
1 REM Last updated: 20190719



1 REM VARIABLE INIT
100 DEFINT a-z
120 pe=100:pa=30:pd=15
130 ee=80:ea=20:ed=10
140 game$="BASIC DUNGEONS"
150 a$="":m$=""
1 REM Flag for attack, 0 the enemy attacks player, 1 player attacks
160 fa=0 

1 REM SPLASH SCREEN
210 MODE 1:INK 0,0:INK 1,26:INK 2,6:INK 3,9
220 ORIGIN 160,300:DRAW 300,0,2:DRAW 300,-100:DRAW 0,-100:DRAW 0,0
230 BORDER 0:LOCATE 13,8:PRINT game$
240 LOCATE 15,10:PRINT"#TeamBASIC"
250 LOCATE 16,11:PRINT"8bitDave"
251 LOCATE 1,15:PRINT"Help: OPQA/arrows to move/attack"
252 PRINT"TAB to inventory; ENTER to select"
260 LOCATE 14,20:PRINT"Key to START!"
270 a$=INKEY$
280 IF a$="" THEN GOTO 270

1 REM DRAW GAME SCREEN AND WINDOW DEFS
310 CLS
1 REM **** GAME WINDOW ****
320 WINDOW #1,1,32,1,19:PEN #1,1 
1 REM **** MESSAGES WINDOW ****
325 WINDOW #2,1,40,21,25:PEN #2,1
1 REM **** PLAYER STATUS WINDOW ****
330 WINDOW #3,35,40,3,8:PEN #3,3
331 WINDOW #6,34,40,1,8:PEN #6,3
1 REM **** ENEMY STATUS WINDOW ****
340 WINDOW #4,34,40,12,19:PEN #4,2
350 ORIGIN 0,82:DRAW 640,0,2
351 ORIGIN 0,86:DRAW 640,0,1
352 ORIGIN 0,88:DRAW 640,0,1         
353 ORIGIN 0,92:DRAW 514,0,2
354 ORIGIN 514,92:DRAW 0,308,2
355 ORIGIN 518,86:DRAW 0,314,1      
356 ORIGIN 520,86:DRAW 0,314,1
357 ORIGIN 524,92:DRAW 0,308,3
358 ORIGIN 524,92:DRAW 116,0,3
360 SYMBOL 244,3,7,14,92,56,48,72,128
370 SYMBOL 245,254,238,198,238,254,254,124,16
371 SYMBOL 246,24,0,24,36,66,66,126,60
372 SYMBOL 247,0,6,12,88,112,32,80,128
373 SYMBOL 252,0,0,124,108,124,108,56,16
374 SYMBOL 253,24,0,24,36,126,126,126,60
375 SYMBOL 254,124,108,124,108,124,108,56,16

1 REM PLAYER AND ENEMY LOCATION AND FIRST DRAWING
400 px=15:py=10
410 LOCATE #1,px,py:PRINT #1,CHR$(249)
420 ex=20:ey=15
430 LOCATE #1,ex,ey:PRINT #1,CHR$(225)
440 GOSUB 2000

1 REM GAME LOGIC
500 WHILE (1)
510 a$=INKEY$
520 IF a$="O" OR a$="o" OR a$=chr$(242) THEN GOSUB 1000
530 IF a$="P" or a$="p" OR a$=chr$(243) THEN GOSUB 1200
540 IF a$="Q" or a$="q" OR a$=chr$(240) THEN GOSUB 1400
550 IF a$="A" or a$="a" OR a$=chr$(241) THEN GOSUB 1600
555 IF a$="I" or a$="i" OR a$=chr$(9) THEN GOSUB 2200
560 IF a$="R" or a$="r" THEN GOTO 100
570 GOSUB 3000
990 WEND

1 REM SUBROUTINE FOR MOVING LEFT THE PLAYER
1000 IF px>1 THEN px=px-1
1010 IF px=ex AND py=ey THEN px=px+1:fa=1:GOSUB 1800:RETURN
1020 LOCATE #1,px,py:PRINT #1,CHR$(249);CHR$(32);
1190 RETURN

1 REM SUBROUTINE FOR MOVING RIGHT THE PLAYER
1200 IF px<32 THEN px=px+1
1210 IF px=ex AND py=ey THEN px=px-1:fa=1:GOSUB 1800:RETURN
1220 LOCATE #1,px-1,py:PRINT #1,CHR$(32);CHR$(249);
1390 RETURN

1 REM SUBROUTINE FOR MOVING UP THE PLAYER
1400 IF py>1 THEN py=py-1
1410 IF px=ex AND py=ey THEN py=py+1:fa=1:GOSUB 1800:RETURN
1420 LOCATE #1,px,py:PRINT #1,CHR$(249);
1430 IF py<19 THEN LOCATE #1,px,py+1:PRINT #1,CHR$(32);
1590 RETURN

1 REM SUBROUTINE FOR MOVING DOWN THE PLAYER
1600 IF py<19 THEN py=py+1
1610 IF px=ex AND py=ey THEN py=py-1:fa=1:GOSUB 1800:RETURN
1620 LOCATE #1,px,py:PRINT #1,CHR$(249);
1630 IF py>1 THEN LOCATE #1,px,py-1:PRINT #1,CHR$(32);
1790 RETURN

1 REM SUBROUTINE FOR ATTACKING AN ENEMY
1800 IF fa=1 THEN PRINT #2,"Player attacks" ELSE PRINT #3,"Enemy attacks"
1990 RETURN


2000 PRINT #6," Player";
2005 PRINT #6,"  "
2010 PRINT #6,CHR$(228)
2020 PRINT #6,CHR$(244)
2030 PRINT #6,CHR$(245)
2040 LOCATE 34,9:PRINT CHR$(246);CHR$(247);CHR$(252);CHR$(253);CHR$(244);CHR$(254);CHR$(238)

2100 CLS #3
2110 PRINT #3,pe
2120 PRINT #3," ";pa
2130 PRINT #3," ";pd
2190 RETURN

1 REM INVENTORY
2200 ix=34:in=0
2210 WHILE (in=0)
2220 a$=INKEY$
2230 IF ix >33 AND ix<41 THEN LOCATE ix,10:PRINT CHR$(208); 
2240 IF a$="O" OR a$="o" OR a$=chr$(242) AND ix>34 THEN ix=ix-1:LOCATE ix+1,10:PRINT " ";
2250 IF a$="P" or a$="p" OR a$=chr$(243) AND ix<40 THEN ix=ix+1:LOCATE ix-1,10:PRINT " ";
2260 IF a$=CHR$(13) THEN in=ix-33:GOSUB 2400:LOCATE ix,10:PRINT " ":a$=""
2265 a$=""
2270 WEND
2390 RETURN

2400 IF in=1 THEN i$="small potion"
2410 IF in=2 THEN i$="small sword"
2420 IF in=3 THEN i$="small shield"
2430 IF in=4 THEN i$="big potion"
2440 IF in=5 THEN i$="big sword"
2450 IF in=6 THEN i$="big shield"
2460 IF in=7 THEN i$="anihilation"

2500 PRINT #2,"You selected ";i$
2510 PRINT #2,"Use it?(Y/N)";
2520 a$=INKEY$
2530 IF a$="n" or a$="N" THEN CLS #2:in=0:RETURN
2540 IF a$="y" OR a$="Y" THEN GOTO 2560
2550 IF a$="" THEN GOTO 2520
2560 IF in=1 THEN pe=pe+10:CLS #2:GOSUB 2100
2570 IF in=2 THEN pa=pa+10:CLS #2:GOSUB 2100
2580 IF in=3 THEN pd=pd+5:CLS #2:GOSUB 2100
2590 IF in=4 THEN pe=pe+25:CLS #2:GOSUB 2100
2600 IF in=5 THEN pa=pa+15:CLS #2:GOSUB 2100
2610 IF in=6 THEN pd=pd+15:CLS #2:GOSUB 2100
2620 IF in=7 THEN RETURN



2790 RETURN

1 REM ENEMY IS IN NEAR LOCATION
2800 PRINT #4," Enemy";
2810 PRINT #4,"  "
2820 PRINT #4,CHR$(228);pe
2830 PRINT #4,CHR$(244);" ";pa
2840 PRINT #4,CHR$(245);" ";pd
2990 RETURN

1 REM ENEMY NEAR?
3000 CLS #4: CLS #2
3010 IF px=ex AND (py-1=ey OR py+1=ey) THEN GOTO 3100
3020 IF py=ey AND (px-1=ex OR px+1=ex) THEN GOTO 3100

3040 RETURN
3100 PRINT #2,"An enemy is near you"
3110 GOSUB 2800
3120 RETURN






1
