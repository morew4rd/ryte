F="./deps/licenses.txt"

rm -f $F
touch $F

### GLFW

printf "\n\n## kyte dependency: GLFW 3.4.  https://github.com/glfw/glfw  \n\n\n" >> $F
cat "./deps/glfw-3.4/LICENSE.md" >> $F


### SOKOL

printf "\n\n## kyte dependency: sokol  https://github.com/floooh/sokol  \n\n\n" >> $F
cat "./deps/sokol_547f455/LICENSE" >> $F


### SOKOL_GP

printf "\n\n## kyte dependency: sokol_gp  https:/https://github.com/edubart/sokol_gp  \n\n\n" >> $F
cat "./deps/sokol_gp_a6ce39f/LICENSE" >> $F


### STB

printf "\n\n## kyte dependency: stb  https://github.com/nothings/stb  \n\n\n" >> $F
cat "./deps/stb_013ac3b/LICENSE" >> $F


### Freetype

printf "\n\n## kyte dependency: FreeType https://freetype.org  \n\n\n" >> $F
cat "./deps/freetype-2.13.2/LICENSE.TXT" >> $F
cat "./deps/freetype-2.13.2/docs/FTL.TXT" >> $F


### Fontstash

printf "\n\n## kyte dependency: Fontstash  https://github.com/memononen/fontstash  \n\n\n" >> $F
cat "./deps/fontstash_b5ddc97/LICENSE.txt" >> $F


### PhysFS

printf "\n\n## kyte dependency: PhysFS  https://github.com/icculus/physfs  \n\n\n" >> $F
cat "./deps/physfs-3.2.0/LICENSE.txt" >> $F


### Raudio

printf "\n\n## kyte dependency: RAudio  https://github.com/raysan5/raudio  \n\n\n" >> $F
cat "./deps/raudio_fe56fa7/LICENSE" >> $F

