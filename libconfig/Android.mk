LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libconfig

LIBRARIES_DIR	:= $(LOCAL_PATH)/../

LIBGZF_INC := $(LIBRARIES_DIR)/libgzf/

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LIBGZF_INC)

# Add your application source files here...
INI_SRC_FILES	:= ini/iniparser.c ini/dictionary.c ini/ini_config.c
LOCAL_SRC_FILES := libconfig.c $(INI_SRC_FILES)

include $(BUILD_SHARED_LIBRARY)
