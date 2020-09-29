# Install script for directory: /Users/iminakov/Desktop/tmp/3dparty/taglib/taglib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/iminakov/.brew")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/iminakov/.brew/lib/libtag.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/iminakov/.brew/lib" TYPE STATIC_LIBRARY FILES "/Users/iminakov/Desktop/tmp/build/3dparty/taglib/taglib/libtag.a")
  if(EXISTS "$ENV{DESTDIR}/Users/iminakov/.brew/lib/libtag.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/iminakov/.brew/lib/libtag.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}/Users/iminakov/.brew/lib/libtag.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/iminakov/.brew/include/taglib/tag.h;/Users/iminakov/.brew/include/taglib/fileref.h;/Users/iminakov/.brew/include/taglib/audioproperties.h;/Users/iminakov/.brew/include/taglib/taglib_export.h;/Users/iminakov/.brew/include/taglib/taglib_config.h;/Users/iminakov/.brew/include/taglib/taglib.h;/Users/iminakov/.brew/include/taglib/tstring.h;/Users/iminakov/.brew/include/taglib/tlist.h;/Users/iminakov/.brew/include/taglib/tlist.tcc;/Users/iminakov/.brew/include/taglib/tstringlist.h;/Users/iminakov/.brew/include/taglib/tbytevector.h;/Users/iminakov/.brew/include/taglib/tbytevectorlist.h;/Users/iminakov/.brew/include/taglib/tbytevectorstream.h;/Users/iminakov/.brew/include/taglib/tiostream.h;/Users/iminakov/.brew/include/taglib/tfile.h;/Users/iminakov/.brew/include/taglib/tfilestream.h;/Users/iminakov/.brew/include/taglib/tmap.h;/Users/iminakov/.brew/include/taglib/tmap.tcc;/Users/iminakov/.brew/include/taglib/tpropertymap.h;/Users/iminakov/.brew/include/taglib/trefcounter.h;/Users/iminakov/.brew/include/taglib/tdebuglistener.h;/Users/iminakov/.brew/include/taglib/mpegfile.h;/Users/iminakov/.brew/include/taglib/mpegproperties.h;/Users/iminakov/.brew/include/taglib/mpegheader.h;/Users/iminakov/.brew/include/taglib/xingheader.h;/Users/iminakov/.brew/include/taglib/id3v1tag.h;/Users/iminakov/.brew/include/taglib/id3v1genres.h;/Users/iminakov/.brew/include/taglib/id3v2.h;/Users/iminakov/.brew/include/taglib/id3v2extendedheader.h;/Users/iminakov/.brew/include/taglib/id3v2frame.h;/Users/iminakov/.brew/include/taglib/id3v2header.h;/Users/iminakov/.brew/include/taglib/id3v2synchdata.h;/Users/iminakov/.brew/include/taglib/id3v2footer.h;/Users/iminakov/.brew/include/taglib/id3v2framefactory.h;/Users/iminakov/.brew/include/taglib/id3v2tag.h;/Users/iminakov/.brew/include/taglib/attachedpictureframe.h;/Users/iminakov/.brew/include/taglib/commentsframe.h;/Users/iminakov/.brew/include/taglib/eventtimingcodesframe.h;/Users/iminakov/.brew/include/taglib/generalencapsulatedobjectframe.h;/Users/iminakov/.brew/include/taglib/ownershipframe.h;/Users/iminakov/.brew/include/taglib/popularimeterframe.h;/Users/iminakov/.brew/include/taglib/privateframe.h;/Users/iminakov/.brew/include/taglib/relativevolumeframe.h;/Users/iminakov/.brew/include/taglib/synchronizedlyricsframe.h;/Users/iminakov/.brew/include/taglib/textidentificationframe.h;/Users/iminakov/.brew/include/taglib/uniquefileidentifierframe.h;/Users/iminakov/.brew/include/taglib/unknownframe.h;/Users/iminakov/.brew/include/taglib/unsynchronizedlyricsframe.h;/Users/iminakov/.brew/include/taglib/urllinkframe.h;/Users/iminakov/.brew/include/taglib/chapterframe.h;/Users/iminakov/.brew/include/taglib/tableofcontentsframe.h;/Users/iminakov/.brew/include/taglib/podcastframe.h;/Users/iminakov/.brew/include/taglib/oggfile.h;/Users/iminakov/.brew/include/taglib/oggpage.h;/Users/iminakov/.brew/include/taglib/oggpageheader.h;/Users/iminakov/.brew/include/taglib/xiphcomment.h;/Users/iminakov/.brew/include/taglib/vorbisfile.h;/Users/iminakov/.brew/include/taglib/vorbisproperties.h;/Users/iminakov/.brew/include/taglib/oggflacfile.h;/Users/iminakov/.brew/include/taglib/speexfile.h;/Users/iminakov/.brew/include/taglib/speexproperties.h;/Users/iminakov/.brew/include/taglib/opusfile.h;/Users/iminakov/.brew/include/taglib/opusproperties.h;/Users/iminakov/.brew/include/taglib/flacfile.h;/Users/iminakov/.brew/include/taglib/flacpicture.h;/Users/iminakov/.brew/include/taglib/flacproperties.h;/Users/iminakov/.brew/include/taglib/flacmetadatablock.h;/Users/iminakov/.brew/include/taglib/apefile.h;/Users/iminakov/.brew/include/taglib/apeproperties.h;/Users/iminakov/.brew/include/taglib/apetag.h;/Users/iminakov/.brew/include/taglib/apefooter.h;/Users/iminakov/.brew/include/taglib/apeitem.h;/Users/iminakov/.brew/include/taglib/mpcfile.h;/Users/iminakov/.brew/include/taglib/mpcproperties.h;/Users/iminakov/.brew/include/taglib/wavpackfile.h;/Users/iminakov/.brew/include/taglib/wavpackproperties.h;/Users/iminakov/.brew/include/taglib/trueaudiofile.h;/Users/iminakov/.brew/include/taglib/trueaudioproperties.h;/Users/iminakov/.brew/include/taglib/rifffile.h;/Users/iminakov/.brew/include/taglib/aifffile.h;/Users/iminakov/.brew/include/taglib/aiffproperties.h;/Users/iminakov/.brew/include/taglib/wavfile.h;/Users/iminakov/.brew/include/taglib/wavproperties.h;/Users/iminakov/.brew/include/taglib/infotag.h;/Users/iminakov/.brew/include/taglib/asffile.h;/Users/iminakov/.brew/include/taglib/asfproperties.h;/Users/iminakov/.brew/include/taglib/asftag.h;/Users/iminakov/.brew/include/taglib/asfattribute.h;/Users/iminakov/.brew/include/taglib/asfpicture.h;/Users/iminakov/.brew/include/taglib/mp4file.h;/Users/iminakov/.brew/include/taglib/mp4atom.h;/Users/iminakov/.brew/include/taglib/mp4tag.h;/Users/iminakov/.brew/include/taglib/mp4item.h;/Users/iminakov/.brew/include/taglib/mp4properties.h;/Users/iminakov/.brew/include/taglib/mp4coverart.h;/Users/iminakov/.brew/include/taglib/modfilebase.h;/Users/iminakov/.brew/include/taglib/modfile.h;/Users/iminakov/.brew/include/taglib/modtag.h;/Users/iminakov/.brew/include/taglib/modproperties.h;/Users/iminakov/.brew/include/taglib/itfile.h;/Users/iminakov/.brew/include/taglib/itproperties.h;/Users/iminakov/.brew/include/taglib/s3mfile.h;/Users/iminakov/.brew/include/taglib/s3mproperties.h;/Users/iminakov/.brew/include/taglib/xmfile.h;/Users/iminakov/.brew/include/taglib/xmproperties.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/iminakov/.brew/include/taglib" TYPE FILE FILES
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/tag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/fileref.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/audioproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/taglib_export.h"
    "/Users/iminakov/Desktop/tmp/build/3dparty/taglib/taglib/../taglib_config.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/taglib.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tstring.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tlist.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tlist.tcc"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tstringlist.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tbytevector.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tbytevectorlist.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tbytevectorstream.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tiostream.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tfilestream.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tmap.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tmap.tcc"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tpropertymap.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/trefcounter.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/toolkit/tdebuglistener.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/mpegfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/mpegproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/mpegheader.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/xingheader.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v1/id3v1tag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v1/id3v1genres.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2frame.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2header.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2footer.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/id3v2tag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/eventtimingcodesframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/privateframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/synchronizedlyricsframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/chapterframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/tableofcontentsframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpeg/id3v2/frames/podcastframe.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/oggfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/oggpage.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/oggpageheader.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/xiphcomment.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/vorbis/vorbisfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/vorbis/vorbisproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/flac/oggflacfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/speex/speexfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/speex/speexproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/opus/opusfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ogg/opus/opusproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/flac/flacfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/flac/flacpicture.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/flac/flacproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/flac/flacmetadatablock.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ape/apefile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ape/apeproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ape/apetag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ape/apefooter.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/ape/apeitem.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpc/mpcfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mpc/mpcproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/wavpack/wavpackfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/wavpack/wavpackproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/trueaudio/trueaudiofile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/trueaudio/trueaudioproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/riff/rifffile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/riff/aiff/aifffile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/riff/aiff/aiffproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/riff/wav/wavfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/riff/wav/wavproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/riff/wav/infotag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/asf/asffile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/asf/asfproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/asf/asftag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/asf/asfattribute.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/asf/asfpicture.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mp4/mp4file.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mp4/mp4atom.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mp4/mp4tag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mp4/mp4item.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mp4/mp4properties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mp4/mp4coverart.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mod/modfilebase.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mod/modfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mod/modtag.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/mod/modproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/it/itfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/it/itproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/s3m/s3mfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/s3m/s3mproperties.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/xm/xmfile.h"
    "/Users/iminakov/Desktop/tmp/3dparty/taglib/taglib/xm/xmproperties.h"
    )
endif()

