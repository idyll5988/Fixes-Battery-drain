#!/system/bin/sh
date="$( date "+%Y年%m月%d日%H时%M分%S秒")"
echo "$date *修复谷歌电池电量耗尽、过载、无故障运行等问题*" 
if pm list packages | grep -q "com.google.android.gms"; then
    echo "$date *修复谷歌电池电量耗尽、过载、无故障运行等问题*" 
    su -c "pm disable com.google.android.gms/com.google.android.gms.chimera.GmsIntentOperationService" 
else
    echo "$date *谷歌服务未安装，跳过修复*" 
fi

