LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := event
LOCAL_SRC_FILES := $(LOCAL_PATH)/libevent.a
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a

include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE    := event_core
LOCAL_SRC_FILES := $(LOCAL_PATH)/libevent_core.a
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a

include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE    := event_extra
LOCAL_SRC_FILES := $(LOCAL_PATH)/libevent_extra.a
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a

include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE    := event_pthreads
LOCAL_SRC_FILES := $(LOCAL_PATH)/libevent_pthreads.a
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a

include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

# This is the target being built.
LOCAL_MODULE := demo_libevent

# All of the source files that we will compile.
LOCAL_SRC_FILES := demo_libevent.c

LOCAL_STATIC_LIBRARIES := event event_core event_extra event_pthreads

LOCAL_LDLIBS := -llog

include $(BUILD_EXECUTABLE)
