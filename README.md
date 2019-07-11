# 8bitDave's own repo for BASIC vs C: RPG

This is my repository for Amstrad GameDev Challenge.

Here I will (trying to) follow up the challenge, code my own game and learn a lot, Git included.

My BASIC is as rusty as my C skills, so I want to do both projects and learn.

My background: 20 years ago I got my Senior Technician (Técnico Superior) on App Development and after that I dropped off university (UPV) before getting my grade.
Now I'm part-time a Filemaker database freelance developer and part-time a teacher of CAD software for garment industry and fashion designers.

### + Reference materials:
- I find this [AMSTRAD BASIC manual interesting.] (https://archive.org/details/Manual_de_Referencia_Amstrad_BASIC_1984_AMSOFT_ES)
- Also, I always go to [Locomotive BASIC online reference on CPCWiki.] (http://www.cpcwiki.eu/index.php/Locomotive_BASIC)

### My system:
- macOS Mojave, if I keep myself busy with this challenge, I won't install Catalina betas, but sure I will install it when gold.
- Homebrew installed, with g++, bison, flex and all needed stuff to run CPCtelera.
- Also Wine installed with 64bit version.
- CPCtelera stable version, with some modifications ↓↓↓.

### Some changes I've made in my installation:
- Put cpct_rvm script in cpctelera/tools/scripts from 1.5 WIP to run Retro Virtual Machine.
- Modified the app bundle of Retro Virtual Machine 2 to get the sript recognize the path. I named the bundled just rvm2 and the binary inside /Contents/MacOS/ also rvm2.
- In cpct_winape script, modified wine to run wine64 and get rid of that Mojave message about 32bit apps. Also to be prepared for Catalina.


Below you'll find basic challenge info:
# BASIC vs C: RPG

Desarrollo en directo de un juego de rol en BASIC y C para Amstrad CPC. 

Seguidnos en Twitter: [@FranGallegoBR](https://twitter.com/FranGallegoBR), [@Hec_Linares](https://twitter.com/Hec_Linares), [#TeamBASIC](https://twitter.com/hashtag/TeamBASIC), [#TeamC](https://twitter.com/hashtag/TeamC), [#AGC01](https://twitter.com/hashtag/AGC01)

## EPISODIO 1 [#AGC01](https://twitter.com/hashtag/AGC01)

<a href="https://www.youtube.com/watch?v=TFEnGYmOOLI"><img align="left" src="https://github.com/AmstradGameDevChallenge/BASICvsC-RPG/blob/master/materials/scrshots/agc01_teamBASIC_thumb.png" alt="Amstrad GameDev Challenge: BASIC vs C. Episodio 1. #AGC01"/></a>

**Fecha**: Martes, 9 de julio de 2019, 21:00h

[**>> Vídeo <<**](https://www.youtube.com/watch?v=TFEnGYmOOLI)

[**>> Código fuente <<**](https://github.com/AmstradGameDevChallenge/BASICvsC-RPG/archive/agc01.zip)
<br/><br/>

__Resumen__:
- Presentación de la serie
- Herramientas a utilizar y organización
- Implementado un esquema inicial muy básico de juego y bucle principal emergente, sin apenas estructurar.
- Primeros pasos con variables
- Player y enemigo con energía, ataque y defensa
- Player y enemigo atacan y defienden

__Materiales__:
- [Solicitud de inscripción a la organización de Github](http://bit.ly/AGC01)
- [CPCtelera](http://lronaldo.github.io/cpctelera/)
- [CPCtelera 1.5 WIP](https://github.com/lronaldo/cpctelera/tree/development)
- [CPCtelera Manual de Referencia](http://lronaldo.github.io/cpctelera/files/readme-txt.html)
- [Manual del usuario de Amstrad CPC 464 1987](https://archive.org/details/Amstrad_CPC464_Manual_del_Usuario_1987_Amstrad_ES_a)
- [Manual del firmware del Amstrad CPC](http://www.cantrell.org.uk/david/tech/cpc/cpc-firmware/)

Cread vuestros repositorios en [AmstradGameDevChallenge](https://github.com/AmstradGameDevChallenge/) y empezad vuestros propios RPG en BASIC y C. En el próximo episodio los analizaremos en directo y compartiremos las ideas de programación entre todos.
