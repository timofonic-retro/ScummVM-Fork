#!/bin/bash
chmod +x configure
./configure --host=x86_64-w64-mingw32 --disable-debug --enable-release --enable-all-engines --enable-engine=dreamweb --enable-freetype2 --enable-fluidsynth|| exit 1
make clean || exit 1
make -j3 || exit 1

x86_64-w64-mingw32-g++ -static backends/platform/sdl/sdl.o backends/platform/sdl/sdl-window.o backends/platform/sdl/win32/win32-main.o backends/platform/sdl/win32/win32-window.o backends/platform/sdl/win32/win32.o scummvmwinres.o base/libbase.a engines/scumm/libscumm.a engines/access/libaccess.a engines/adl/libadl.a engines/agi/libagi.a engines/agos/libagos.a engines/avalanche/libavalanche.a engines/bbvs/libbbvs.a engines/bladerunner/libbladerunner.a engines/cge/libcge.a engines/cge2/libcge2.a engines/chewy/libchewy.a engines/cine/libcine.a engines/composer/libcomposer.a engines/cruise/libcruise.a engines/cryo/libcryo.a engines/darkseed2/libdarkseed2.a engines/director/libdirector.a engines/dm/libdm.a engines/draci/libdraci.a engines/drascula/libdrascula.a engines/dreamweb/libdreamweb.a engines/fullpipe/libfullpipe.a engines/gnap/libgnap.a engines/gob/libgob.a engines/groovie/libgroovie.a engines/hopkins/libhopkins.a engines/hugo/libhugo.a engines/kyra/libkyra.a engines/lab/liblab.a engines/lastexpress/liblastexpress.a engines/lure/liblure.a engines/macventure/libmacventure.a engines/made/libmade.a engines/mads/libmads.a engines/mohawk/libmohawk.a engines/mortevielle/libmortevielle.a engines/neverhood/libneverhood.a engines/parallaction/libparallaction.a engines/pegasus/libpegasus.a engines/plumbers/libplumbers.a engines/prince/libprince.a engines/queen/libqueen.a engines/saga/libsaga.a engines/sci/libsci.a engines/sherlock/libsherlock.a engines/sky/libsky.a engines/sludge/libsludge.a engines/sword1/libsword1.a engines/sword2/libsword2.a engines/sword25/libsword25.a engines/teenagent/libteenagent.a engines/testbed/libtestbed.a engines/tinsel/libtinsel.a engines/titanic/libtitanic.a engines/toltecs/libtoltecs.a engines/tony/libtony.a engines/toon/libtoon.a engines/touche/libtouche.a engines/tsage/libtsage.a engines/tucker/libtucker.a engines/voyeur/libvoyeur.a engines/wage/libwage.a engines/wintermute/libwintermute.a engines/xeen/libxeen.a engines/zvision/libzvision.a gui/libgui.a backends/libbackends.a engines/libengines.a video/libvideo.a image/libimage.a graphics/libgraphics.a audio/libaudio.a common/libcommon.a audio/softsynth/mt32/libmt32.a   -lmingw32 -lwinmm -lgdi32 -L/mingw64/lib -lmingw32 -lSDLmain -lSDL -mwindows -liconv -lm -luser32 -lgdi32 -lwinmm -ldxguid -lm   -lvorbisfile -lvorbis -logg   -lFLAC -logg  -lmad  -ljpeg  -lpng -lz  -ltheoradec  -lfaad -lz  -lmpeg2 -lfluidsynth -L/mingw64/lib -lfreetype -lz -lbz2 -lole32 -luuid -o scummvm.exe  -static-libgcc -static-libstdc++ -Wl,-Bstatic -lfluidsynth -lfreetype -lbz2 -lstdc++ -lpthread -lSDL -lfaad -lvorbisfile -lvorbis -logg -ljpeg -lpng -ltheoradec -lfaad -lmpeg2 -lportaudio -lwinmm -lm -ldsound -lole32 -lwinmm -lm -luuid -lsetupapi -lole32 -lwinmm -lm -lole32 -luuid -lwinmm -lm -lole32 -luuid -lreadline -lncurses || exit 1




