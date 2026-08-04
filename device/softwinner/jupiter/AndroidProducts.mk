#
# Copyright (C) 2013 The Android Open-Source Project
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
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/t736_nowifi_stby_demo_aiot_arm64.mk \
    $(LOCAL_DIR)/t736_nowifi_stby_demo_car_arm64.mk \
    $(LOCAL_DIR)/t736_evb1.mk \
    $(LOCAL_DIR)/t736_qa.mk \
    $(LOCAL_DIR)/a733_demo_car_arm64.mk \
    $(LOCAL_DIR)/a733_demo_aiot_arm64.mk \
    $(LOCAL_DIR)/t736_demo_car_arm64.mk \
    $(LOCAL_DIR)/t736_demo_aiot_arm64.mk \
    $(LOCAL_DIR)/a733_evb1_arm64.mk \
    $(LOCAL_DIR)/a733_perf1_arm64.mk \
    $(LOCAL_DIR)/a733_pro2_arm64.mk \
    $(LOCAL_DIR)/a733_pro2_arm64_32.mk \
    $(LOCAL_DIR)/a733_pro3_arm64.mk \
    $(LOCAL_DIR)/a733_pro3_arm64_32.mk \
    $(LOCAL_DIR)/a733_qa_arm64.mk \
    $(LOCAL_DIR)/a733_radxa_a7a.mk \
    $(LOCAL_DIR)/a733_radxa_a7z.mk \
    $(LOCAL_DIR)/a733_radxa_a7s.mk

COMMON_LUNCH_CHOICES := \
    t736_nowifi_stby_demo_aiot_arm64-userdebug \
    t736_nowifi_stby_demo_aiot_arm64-user \
    t736_nowifi_stby_demo_car_arm64-userdebug \
    t736_nowifi_stby_demo_car_arm64-user \
    t736_evb1-userdebug \
    t736_qa-userdebug \
    a733_demo_car_arm64-userdebug \
    a733_demo_car_arm64-user \
    a733_demo_aiot_arm64-userdebug \
    a733_demo_aiot_arm64-user \
    t736_demo_car_arm64-userdebug \
    t736_demo_car_arm64-user \
    t736_demo_aiot_arm64-userdebug \
    t736_demo_aiot_arm64-user \
    a733_evb1_arm64-ap3a-userdebug \
    a733_evb1_arm64-ap3a-user \
    a733_perf1_arm64-ap3a-userdebug \
    a733_perf1_arm64-ap3a-user \
    a733_pro2_arm64-user \
    a733_pro2_arm64-userdebug \
    a733_pro2_arm64_32-ap3a-user \
    a733_pro2_arm64_32-ap3a-userdebug \
    a733_pro3_arm64-user \
    a733_pro3_arm64-userdebug \
    a733_pro3_arm64_32-ap3a-user \
    a733_pro3_arm64_32-ap3a-userdebug \
    a733_qa_arm64-ap3a-eng \
    a733_qa_arm64-ap3a-userdebug \
    a733_radxa_a7a-user \
    a733_radxa_a7a-userdebug \
    a733_radxa_a7z-user \
    a733_radxa_a7z-userdebug \
    a733_radxa_a7s-user \
    a733_radxa_a7s-userdebug
