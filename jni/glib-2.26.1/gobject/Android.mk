LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gatomicarray.c          \
    gboxed.c                \
    genums.c                \
    gparam.c                \
    gsignal.c               \
    gtypemodule.c           \
    gtypeplugin.c           \
    gvalue.c                \
    gvaluetypes.c           \
    gclosure.c              \
    gobject.c               \
    gparamspecs.c           \
    gtype.c                 \
    gvaluearray.c           \
    gvaluetransform.c       \
    gsourceclosure.c

LOCAL_SHARED_LIBRARIES := glib-2.0 gthread-2.0
LOCAL_MODULE := gobject-2.0

LOCAL_C_INCLUDES := \
	  $(GLIB_TOP)/android

LOCAL_CFLAGS += \
    -DG_LOG_DOMAIN=\"GLib-GObject\" \
    -DGOBJECT_COMPILATION           \
    -DG_DISABLE_CONST_RETURNS       \
    -DG_DISABLE_DEPRECATED 

include $(BUILD_SHARED_LIBRARY)
