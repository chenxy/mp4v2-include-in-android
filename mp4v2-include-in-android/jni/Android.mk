#mp4v2 android so 
#make file Written by turkeyzhu<turkeyzhu@gmail.com>
LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)
NDK=/home/turkeyzhu/myFixed/android-ndk-r9
#NDK_PROJECT_PATH=$(NDK)
	LOCAL_SRC_FILES:= \
	src/3gp.cpp src/atom_ac3.cpp \
	src/atom_amr.cpp src/atom_avc1.cpp src/atom_avcC.cpp \
	src/atom_chpl.cpp src/atom_colr.cpp src/atom_d263.cpp \
	src/atom_dac3.cpp src/atom_damr.cpp src/atom_dref.cpp \
	src/atom_elst.cpp src/atom_enca.cpp src/atom_encv.cpp \
	src/atom_free.cpp src/atom_ftyp.cpp src/atom_ftab.cpp \
	src/atom_gmin.cpp src/atom_hdlr.cpp src/atom_hinf.cpp \
	src/atom_hnti.cpp src/atom_href.cpp src/atom_mdat.cpp \
	src/atom_mdhd.cpp src/atom_meta.cpp src/atom_mp4s.cpp \
	src/atom_mp4v.cpp src/atom_mvhd.cpp src/atom_nmhd.cpp \
	src/atom_ohdr.cpp src/atom_pasp.cpp src/atom_root.cpp \
	src/atom_rtp.cpp src/atom_s263.cpp src/atom_sdp.cpp \
	src/atom_sdtp.cpp src/atom_smi.cpp src/atom_sound.cpp \
	src/atom_standard.cpp src/atom_stbl.cpp src/atom_stdp.cpp \
	src/atom_stsc.cpp src/atom_stsd.cpp src/atom_stsz.cpp \
	src/atom_stz2.cpp src/atom_text.cpp src/atom_tfhd.cpp \
	src/atom_tkhd.cpp src/atom_treftype.cpp src/atom_trun.cpp \
	src/atom_tx3g.cpp src/atom_udta.cpp src/atom_url.cpp \
	src/atom_urn.cpp src/atom_uuid.cpp src/atom_video.cpp \
	src/atom_vmhd.cpp src/atoms.h src/cmeta.cpp \
	src/descriptors.cpp src/descriptors.h src/exception.cpp \
	src/exception.h src/enum.h src/enum.tcc src/impl.h \
	src/isma.cpp src/log.h src/log.cpp src/mp4.cpp src/mp4array.h \
	src/mp4atom.cpp src/mp4atom.h src/mp4container.cpp \
	src/mp4container.h src/mp4descriptor.cpp src/mp4descriptor.h \
	src/mp4file.cpp src/mp4file.h src/mp4file_io.cpp \
	src/mp4info.cpp src/mp4property.cpp src/mp4property.h \
	src/mp4track.cpp src/mp4track.h src/mp4util.cpp src/mp4util.h \
	src/ocidescriptors.cpp src/ocidescriptors.h src/odcommands.cpp \
	src/odcommands.h src/qosqualifiers.cpp src/qosqualifiers.h \
	src/rtphint.cpp src/rtphint.h src/src.h src/text.cpp \
	src/text.h src/util.h src/bmff/bmff.h src/bmff/impl.h \
	src/bmff/typebmff.cpp src/bmff/typebmff.h \
	src/itmf/CoverArtBox.cpp src/itmf/CoverArtBox.h \
	src/itmf/Tags.cpp src/itmf/Tags.h src/itmf/generic.cpp \
	src/itmf/generic.h src/itmf/impl.h src/itmf/itmf.h \
	src/itmf/type.cpp src/itmf/type.h \
	src/qtff/ColorParameterBox.cpp src/qtff/ColorParameterBox.h \
	src/qtff/PictureAspectRatioBox.cpp \
	src/qtff/PictureAspectRatioBox.h src/qtff/coding.cpp \
	src/qtff/coding.h src/qtff/impl.h src/qtff/qtff.h \
	libplatform/endian.h libplatform/impl.h \
	libplatform/io/File.cpp libplatform/io/File.h \
	libplatform/io/FileSystem.cpp libplatform/io/FileSystem.h \
	libplatform/number/random.h libplatform/platform.h \
	libplatform/platform_base.h libplatform/platform_posix.h \
	libplatform/process/process.h \
	libplatform/prog/option.cpp libplatform/prog/option.h \
	libplatform/sys/error.cpp libplatform/sys/error.h \
	libplatform/time/time.cpp libplatform/time/time.h \
	libplatform/warning.h libplatform/io/File_posix.cpp \
	libplatform/io/FileSystem_posix.cpp \
	libplatform/number/random_posix.cpp \
	libplatform/process/process_posix.cpp \
	libplatform/time/time_posix.cpp \
	libutil/Database.cpp \
	libutil/Database.h libutil/Timecode.cpp libutil/Timecode.h \
	libutil/TrackModifier.cpp libutil/TrackModifier.h \
	libutil/Utility.cpp libutil/Utility.h libutil/crc.cpp \
	libutil/crc.h libutil/impl.h libutil/other.cpp libutil/other.h \
	libutil/util.h
LOCAL_ARM_MODE := arm 
LOCAL_CFLAGS := -fexceptions
  
	LOCAL_LDFLAGS := \
	$(NDK)/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a/libsupc++.a
  
LOCAL_LDLIBS := -llog  
	  
LOCAL_SHARED_LIBRARIES := \
	libutils \
	libbinder \
	libcutils
LOCAL_CXXFLAGS :=-fexceptions -Wno-write-strings
  
LOCAL_MODULE:= libmp4v2_hs_turkey
LOCAL_CPPFLAGS := -O2 -fexceptions -DHAVE_SOCKLEN_T -DHAVE_STRUCT_IOVEC
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
