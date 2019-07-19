10 ' 
20 '              BASIC DUNGEONS
30 ' My RPG game for Amstrad GameDev Challenge, BASIC version
40 ' by 8bitDave <david.novella@me.com>
50 ' Created: 20190711; Last updated: 20190711
60 '



100 'VARIABLE INIT
110 DEFINT a-z
120 pe=100:pa=30:pd=15
130 ee=80:ea=20:ed=10
140 game$="BASIC DUNGEONS"
150 a$="":m$=""

200 'SPLASH SCREEN
210 MODE 1:ORIGIN 160,300:INK 2,4:
220 DRAW 300,0,2:DRAW 300,-100:DRAW 0,-100:DRAW 0,0
230 BORDER 3:LOCATE 13,8:PRINT game$
240 LOCATE 15,10:PRINT"#TeamBASIC"
250 LOCATE 16,11:PRINT"8bitDave"
260 LOCATE 12,20:PRINT"Press a key to START!"
270 a$=INKEY$
280 IF a$="" THEN GOTO 270

400 'GAME SCREEN DRAW
410 CLS
420 ORIGIN 0,96:DRAW 640,0,2
430 LOCATE 20,22: PRINT"P1:"pe"A:"pa"D:"pd


460 LOCATE 2,20: m$="You face an enemy":PRINT m$
470 LOCATE 22,20: PRINT": "ee"A:"ea"D:"ed



500 'PLAYER ACTIONS
510 IF pe<1 THEN GOTO 900
520 LOCATE 2,24: PRINT"Choose (A)ttack/(D)efense...":a$=INKEY$
530 IF a$="A" or a$="a" THEN ee=ee-pa:GOTO 600
540 IF a$="D" or a$="d" THEN pe=pe+pd:GOTO 600
550 GOTO 500

600 'ATTACKING ACTIONS

600 'ENEMY ACTIONS
610 IF ee<1 THEN PRINT"The enemy DIED":a$=INKEY$:GOTO 200
620 IF RND<0.25 THEN pe=pe-ea:GOTO 500
630 GOTO 400

900 'END GAME
910 CLS
920 PRINT "Your quest is OVER"
930 PRINT "Press to begin again"
940 a$=INKEY$
950 IF a$="" THEN GOTO 940
960 GOTO 100
