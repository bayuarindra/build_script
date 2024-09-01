rm -rf out/target/product/munch/*
rm -rf .repo/local_manifests/  && # Clone local_manifests repository
repo init -u https://github.com/RisingTechOSS/android.git -b fourteen --git-lfs --depth=1
#clone dev tree
git clone https://github.com/bayuarindra/local_manifest --depth=1 -b rising-14 .repo/local_manifests &&
# Sync the repositories
/opt/crave/resync.sh  && 
# Set up build environment
export BUILD_USERNAME=BayuArindra
export BUILD_HOSTNAME=crave
#export TARGET_PRODUCT=lineage_munch
#export TARGET_RELEASE=ap2a
export TZ=Asia/Jakarta
export RISING_MAINTAINER=BayuArindra
source build/envsetup.sh
 
# Build the ROM
 riseup munch user

#beelding
rise b