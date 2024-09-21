#!/bin/bash

# Clone repositories 
git clone https://github.com/bayuarindra/device_xiaomi_munch device/xiaomi/munch 
git clone https://github.com/bayuarindra/device_xiaomi_sm8250-common device/xiaomi/sm8250-common
cd frameworks/native
git fetch https://github.com/Project-PixelStar/frameworks_native
git cherry-pick 21bd93f82538a10df34e0747e6326a74a3b1336b
cd ../../

# Clone common repositories
rm -rf hardware/xiaomi
git clone https://LineageOS/android_hardware_xiaomi hardware/xiaomi
git clone https://gitea.com/bayuarindra/vendor_xiaomi vendor/xiaomi

# Clone and setup kernel
git clone https://github.com/bayuarindra/kernel_xiaomi_sm8250 kernel/xiaomi/sm8250

# Modify the AndroidManifest.xml
sed -i 's/android:minSdkVersion="19"/android:minSdkVersion="21"/' prebuilts/sdk/current/androidx/m2repository/androidx/preference/preference/1.3.0-alpha01/manifest/AndroidManifest.xml
