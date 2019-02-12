LOCAL_PATH := $(call my-dir)

##################################################################
# CONFIGURATION TOP FILE
##################################################################

ifeq ($(BUILD_AUDIO_POLICY_EXAMPLE_CONFIGURATION), phone_default)

include $(CLEAR_VARS)
LOCAL_MODULE := audio_policy_engine_configuration_phone.xml
LOCAL_MODULE_STEM := audio_policy_engine_configuration.xml

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := phone/$(LOCAL_MODULE_STEM)

LOCAL_REQUIRED_MODULES := \
    audio_policy_engine_product_strategies_phone.xml

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := audio_policy_engine_product_strategies_phone.xml
LOCAL_MODULE_STEM := audio_policy_engine_product_strategies.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := phone/$(LOCAL_MODULE_STEM)
include $(BUILD_PREBUILT)

endif # ifeq ($(BUILD_AUDIO_POLICY_EXAMPLE_CONFIGURATION), phone_default)
