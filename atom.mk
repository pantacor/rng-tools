LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := rng-tools
LOCAL_DESCRIPTION := rng-tools
LOCAL_LIBRARIES := openssl gnulib

LOCAL_EXPORT_LDLIBS = 

LOCAL_AUTOTOOLS_VERSION := 2.0.4
LOCAL_AUTOTOOLS_CONFIGURE_ARGS := \
	--without-nistbeacon \
	--without-pkcs11 \
	--without-qrypt \
	--without-rtlsdr
LOCAL_AUTOTOOLS_CONFIGURE_ENV :=  

include $(BUILD_AUTOTOOLS)

