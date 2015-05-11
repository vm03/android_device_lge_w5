#!/sbin/sh

model=`cat /proc/cmdline | awk '{print $16}'| awk -F= '{print $2}'`


case $model in
     "LG-D320")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320n")
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D325")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D325.kl > /system/usr/keylayout/Generic.kl
          ;; 
     "LG-D325f8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D325.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320f8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
	;;
     "LG-D325F8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D325.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320F8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LGMS323")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-MS323.kl > /system/usr/keylayout/Generic.kl
	rm /system/lib/hw/keystore.msm8610.so
          ;;
     *)
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
          ;;
esac
