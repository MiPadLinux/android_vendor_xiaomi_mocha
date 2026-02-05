# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

#Keyboard
include $(CLEAR_VARS)
LOCAL_MODULE := SimpleKeyboard
LOCAL_SRC_FILES := keyboard/keyboard.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_APPS)
LOCAL_OVERRIDES_PACKAGES := LatinIME 
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := NvAudioSvc
LOCAL_MODULE_TAGS          := optional
LOCAL_SRC_FILES            := NvAudioSvc/NvAudioSvc.apk
LOCAL_CERTIFICATE          := PRESIGNED
LOCAL_MODULE_CLASS         := APPS
LOCAL_MODULE_SUFFIX        := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := DolbyAudioService
LOCAL_MODULE_TAGS          := optional
LOCAL_SRC_FILES            := DolbyAudioService/DolbyAudioService.apk
LOCAL_CERTIFICATE          := PRESIGNED
LOCAL_MODULE_CLASS         := APPS
LOCAL_MODULE_SUFFIX        := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_REQUIRED_MODULES     := libnvcontrol_jni
LOCAL_VENDOR_MODULE        := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := android.hardware.audio@6.0-service-msd
LOCAL_SRC_FILES_32         := bin/hw/android.hardware.audio@6.0-service-msd
LOCAL_MULTILIB             := 32
LOCAL_INIT_RC              := etc/init/android.hardware.audio@6.0-service-msd.rc
LOCAL_MODULE_CLASS         := EXECUTABLES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_REQUIRED_MODULES     := cp_pgm_one_dap_lib cp_pgm_two_dap_lib cp_sys_one_dap_lib cp_sys_two_dap_lib ddp_enc_lib_ac3 ddp_enc_lib_eac3 ddp_udc_lib_ac3 ddp_udc_lib_ec3 dp_dap_lib
include $(BUILD_PREBUILT)