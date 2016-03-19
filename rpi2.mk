PRODUCT_NAME := rpi2
PRODUCT_DEVICE := rpi2
PRODUCT_BRAND := Android
PRODUCT_MODEL := Android on rpi2
PRODUCT_MANUFACTURER := brcm

PRODUCT_AAPT_CONFIG := normal hdpi

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

PRODUCT_PACKAGES += \
    libGLES_mesa \
    gralloc.$(TARGET_PRODUCT) \
    hwcomposer.$(TARGET_PRODUCT) \
    audio.primary.$(TARGET_PRODUCT) \
    Launcher3 \
    Settings \
    Browser

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/rpi2_core_hardware.xml:system/etc/permissions/rpi2_core_hardware.xml \
    $(LOCAL_PATH)/init.rpi2.rc:root/init.rpi2.rc \
    $(LOCAL_PATH)/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/fstab.rpi2:root/fstab.rpi2 \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl \
    $(PRODUCT_COPY_FILES)

DEVICE_PACKAGE_OVERLAYS := device/brcm/rpi2/overlay
PRODUCT_CHARACTERISTICS := tablet,nosdcard
PRODUCT_LOCALES := en_US,ko_KR,ja_JP,zh_CN,pl_PL,de_DE,zh_TW,nl_NL,nl_BE,cs_CZ,en_AU,en_GB,en_CA,en_NZ,en_SG,fr_BE,fr_CA,fr_FR,de_AT,de_LI,de_CH,it_IT,it_CH,ru_RU,es_ES,ar_EG,ar_IL,bg_BG,ca_ES,hr_HR,da_DK,en_IN,en_IE,en_ZA,fi_FI,el_GR,iw_IL,hi_IN,hu_HU,in_ID,lv_LV,lt_LT,nb_NO,pt_BR,pt_PT,ro_RO,sr_RS,sk_SK,sl_SI,es_US,sv_SE,tl_PH,th_TH,tr_TR,uk_UA,vi_VN
