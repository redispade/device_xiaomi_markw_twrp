# treble twrp device tree for xiaomi redmi 4 prime (markw)

Compilation instructions

First configure repo, git and java. Second checkout minimal twrp with omnirom tree:

repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

repo sync

copy omni_markw.xml into .repo/local_manifests

repo sync

. build/envsetup.sh

breakfast markw eng

mka adbd recoveryimage ALLOW_MISSING_DEPENDENCIES=true


compiled recovery will go into out/target/product/markw/recovery.img
