# Cloning vendor and kernel repositories
git clone --depth=1 https://github.com/Infinity-X-Devices/vendor_xiaomi_violet.git vendor/xiaomi/violet
git clone --depth=1 https://github.com/Infinity-X-Devices/kernel_xiaomi_violet.git kernel/xiaomi/violet

# Cloning latest china firmware repository
git clone --depth=1 https://gitlab.com/CuriousNom/chaste_vendor-xiaomi-firmware-violet.git -b 14.0 vendor/xiaomi-firmware/violet

# Cloning the miuicamera repository
git clone --depth=1 https://gitlab.com/Joker-V2/android_vendor_MiuiCamera.git vendor/MiuiCamera

# Setup Neutron Clang
mkdir prebuilts/clang/host/linux-x86/clang-neutron; cd prebuilts/clang/host/linux-x86/clang-neutron;
curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman";
chmod +x antman; ./antman -S=05012024; ./antman --patch=glibc; cd ../../../../../;sed -i '/CLANG_EXTRA_FLAGS += --hip-path=\/dev\/null/d' vendor/blaze/build/tasks/kernel.mk;
