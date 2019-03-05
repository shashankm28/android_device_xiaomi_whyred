AOSP 9.0 PR1, errors faced while compiling the kernel from source and their fixes.

Error 1:

prebuilts/misc/linux-x86/flex/flex-2.5.39 -o/home/shashank/android/twrp/out/soong/.intermediates/external/selinux/checkpolicy/checkpolicy/linux_x86_64/gen/lex/external/selinux/checkpolicy/policy_scan.c external/selinux/checkpolicy/policy_scan.l
flex-2.5.39: loadlocale.c:130: _nl_intern_locale_data: Assertion `cnt < (sizeof (_nl_value_type_LC_TIME) / sizeof (_nl_value_type_LC_TIME[0]))' failed.

Fix: export LC_ALL=C

Error 2:

drivers/bluetooth/btfm_slim.c:26:23: fatal error: btfm_slim.h: No such file or directory
 #include <btfm_slim.h>
                       ^

Fix: Go to drivers/bluetooth/btfm_slim.c and change <> to "" of the above mentioned header file.

Error 3:

drivers/bluetooth/btfm_slim.c:27:31: fatal error: btfm_slim_wcn3990.h: No such file or directory
 #include <btfm_slim_wcn3990.h>
                               ^

Fix: Go to drivers/bluetooth/btfm_slim.c and change <> to "" of the above mentioned header file.

Error 4:

drivers/bluetooth/btfm_slim_wcn3990.h:15:23: fatal error: btfm_slim.h: No such file or directory
 #include <btfm_slim.h>
                       ^

Fix: Go to drivers/bluetooth/btfm_slim_wcn3990.h and change <> to "" of the above mentioned header file.

Error 5:

drivers/bluetooth/btfm_slim_codec.c:27:23: fatal error: btfm_slim.h: No such file or directory
 #include <btfm_slim.h>
                       ^

Fix: Go to drivers/bluetooth/btfm_slim_codec.c and change <> to "" of the above mentioned header file.

Error 6:

drivers/bluetooth/btfm_slim_wcn3990.c:13:23: fatal error: btfm_slim.h: No such file or directory
 #include <btfm_slim.h>
                       ^

Fix: Go to drivers/bluetooth/btfm_slim_wcn3990.c and change <> to "" of the above mentioned header file.

Error 7:

drivers/bluetooth/btfm_slim_wcn3990.c:13:23: fatal error: btfm_slim.h: No such file or directory
 #include <btfm_slim_wcn3990.h>
                               ^

Fix: Go to drivers/bluetooth/btfm_slim_wcn3990.c and change <> to "" of the above mentioned header file.

Error 8:

In file included from drivers/gpu/msm/kgsl_trace.h:1235:0,
                 from drivers/gpu/msm/kgsl_trace.c:21:
include/trace/define_trace.h:83:43: fatal error: ./kgsl_trace.h: No such file or directory
 #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                           ^

Fix: Go to /drivers/gpu/msm, in the Makefile add the following line ccflags-y := -Idrivers/gpu/msm

Error 9:

drivers/gpu/msm/kgsl_sync.h:16:18: fatal error: sync.h: No such file or directory
 #include "sync.h"
                  ^

Fix: Go to drivers/gpu/msm/kgsl_sync.h and change the above header file to #include <../drivers/staging/android/sync.h>

Error 10:

drivers/gpu/msm/kgsl_sync.c:435:26: fatal error: oneshot_sync.h: No such file or directory
 #include "oneshot_sync.h"
                          ^

Fix: Go to drivers/gpu/msm/kgsl_sync.c and change (line 435) the above header file to #include <../drivers/staging/android/oneshot_sync.h>

Error 11:

drivers/input/misc/vl53L0/inc/vl53l0_platform.h:37:27: fatal error: stmvl53l0-i2c.h: No such file or directory
 #include "stmvl53l0-i2c.h"
                           ^

Fix: Go to drivers/input/misc/vl53L0/ in the Makefile add the following line ccflags-y	+= -Idrivers/input/misc/vl53L0/

Error 12:

drivers/media/platform/msm/camera_v2/common/cam_smmu_api.c:30:32: fatal error: msm_camera_tz_util.h: No such file or directory
 #include <msm_camera_tz_util.h>
                                ^

Fix: Go to drivers/media/platform/msm/camera_v2/common/cam_smmu_api.c and change <> to "" of the above mentioned header file.

Error 13:

include/trace/events/msm_cam.h:19:21: fatal error: msm_isp.h: No such file or directory
 #include "msm_isp.h"
                     ^

Fix: Go to include/trace/events/msm_cam.h and change (line 19) the above header file to #include <../drivers/media/platform/msm/camera_v2/isp/msm_isp.h>

Error 14:

drivers/media/platform/msm/camera_v2/sensor/msm_sensor.h:34:28: fatal error: msm_camera_i2c.h: No such file or directory
 #include "msm_camera_i2c.h"
                            ^

Fix: Go to drivers/media/platform/msm/camera_v2/sensor/msm_sensor.h and change (line 34) the above header file to <../drivers/media/platform/msm/camera_v2/sensor/io/msm_camera_i2c.h>

Error 15:

drivers/media/platform/msm/camera_v2/sensor/msm_sensor.h:35:32: fatal error: msm_camera_dt_util.h: No such file or directory
 #include "msm_camera_dt_util.h"
                                ^

Fix: Go to drivers/media/platform/msm/camera_v2/sensor/msm_sensor.h and change (line 35) the above header file to <../drivers/media/platform/msm/camera_v2/sensor/io/msm_camera_dt_util.h>

Error 16:

In file included from drivers/net/ethernet/msm/rndis_ipa_trace.h:81:0,
                 from drivers/net/ethernet/msm/rndis_ipa.c:32:
include/trace/define_trace.h:83:43: fatal error: ./rndis_ipa_trace.h: No such file or directory
 #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                           ^

Fix: Go to drivers/net/ethernet/msm, in the Makefile add the following line ccflags-y := -Idrivers/net/ethernet/msm

Error 17:

In file included from drivers/platform/msm/ipa/ipa_v2/ipa_trace.h:152:0,
                 from drivers/platform/msm/ipa/ipa_v2/ipa.c:41:
include/trace/define_trace.h:83:43: fatal error: ./ipa_trace.h: No such file or directory
 #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                           ^

Fix: Go to drivers/platform/msm/ipa/ipa_v2, in the Makefile add the following line ccflags-y := -Idrivers/platform/msm/ipa/ipa_v2

Error 18:

In file included from drivers/platform/msm/ipa/ipa_v3/ipa_trace.h:153:0,
                 from drivers/platform/msm/ipa/ipa_v3/ipa.c:58:
include/trace/define_trace.h:83:43: fatal error: ./ipa_trace.h: No such file or directory
 #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                           ^

Fix: Go to drivers/platform/msm/ipa/ipa_v3, in the Makefile add the following line ccflags-y := -Idrivers/platform/msm/ipa/ipa_v3

Error 19:

In file included from drivers/soc/qcom/tracer_pkt_private.h:49:0,
                 from drivers/soc/qcom/tracer_pkt.c:18:
include/trace/define_trace.h:83:43: fatal error: ./tracer_pkt_private.h: No such file or directory
 #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
                                           ^

Fix: Go to drivers/soc/qcom, in the Makefile add the following line ccflags-y := -Idrivers/soc/qcom

Error 21:

sound/soc/msm/msm8998.c:36:26: fatal error: device_event.h: No such file or directory
 #include <device_event.h>
                          ^

Fix: Go to sound/soc/msm, in the Makefile add the following line ccflags-y := -Isound/soc/msm
