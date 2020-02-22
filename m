Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBT7OYXZAKGQECPTPNDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCFE16914E
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 19:47:44 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id d14sf690174ljg.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 10:47:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582397263; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/drI6Htxcdjno2qqjJFi5EaPEJqLxoLFmmmAIWQBqMl8bTkvn66s0IbKqbE9/51QO
         CfO9l2oUpWuAIdHnSU2O0MsDFB50Yn3fZIjIrrrYlBQzHw7Vthfmlg/RCTgZwGgF0Hgc
         7m2irviYSCwUYpuJRySO6J+3vpgXGusntP2mrpg8hroe+LO//F1iYnHAAlnV7WsYbKVF
         Cl8aBDH8z+ASra6xUQziqEnFZZjtxDNfb2DgF7TA26nN4MHJgzBzohYKoxKzld+ZObL9
         oIucBhBiJU+4/p7ipry7tCoAbL0R9foNGwXGIwkqTYvsBU4Th5SRAKl62BIHxkiXiFfY
         A3lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=23r0xuQRjfHCNbteKtab8UUMR14/uzK4Jp94bwt/Ilc=;
        b=hSiPAA+GEqhNL8ZmxFQ3n/VLoPX4LpQesxqorftomyvCa3X/S0WBHdfz7bSMSo78WT
         LSoVm7ZjwvZhez6OaGnsanDsaT22zdekL7SkQUj8jNbWuTdGCPt5u8wGIK1zFN6Rd5+B
         ddg5Gfxz64yo3JWQAZYm5seow36iTL6WhKYSaIIV5poYsuNVp9CTBYIMAE4qOjD8PXC5
         Cp5eGcvvRWD3HBjUD4WfzvGjX1vaD0GiidBSd2O9v+Cfnr75M0n8poPkrU85RudQAPN/
         1cfAxbBhskYAPnp2wgZ9D24unUBSVkbIoxVkehT3oOoTJo9NGJ1+uT8PXaWAoiWWxxjC
         08nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=y1ao7vnb;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23r0xuQRjfHCNbteKtab8UUMR14/uzK4Jp94bwt/Ilc=;
        b=SvbizZAMJ1n4qSOOvXBLiIHPIpIzyMnNwYlmwsrphjxKXdKSrFnFrTHTfVpKPCIn8B
         IwAGAhn/xYItulI5SAm4i3CRZj+zgyRuKEyHu9bcBgE9O0hqyxQ6rko4SAhVxSRSGg6g
         X4fp0k5IHezXnCqKMERuB9CppNjF1XB9In5I+XgOGDF2v7JyZHOlLlExap2ZNH8JyQFX
         FMhgaTP3eaT6sVPbmK2HB/xh2boESHymhOdjG8y90mOQAX/8jo4F7EQmU4DxCp7/O6Zv
         iM0cVh8G820SuZ1Ww6zwcBYNdg89qJVFvPkmeitoWLqS1XKkbAImjveh8QaIk0/VjR8K
         5tfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=23r0xuQRjfHCNbteKtab8UUMR14/uzK4Jp94bwt/Ilc=;
        b=EK56KABMIJYKk0+3y0n7+9b/WvZiyz8/5CRN3kvNii/SrUKpFAP3C+8tPv9PKxn2VZ
         0QFjCZHsSDaYz86cjKcKVMxPl4lgCvh1awhV8Pn//PLE9pMQwK5S/u/oGGmNsLuoq6WI
         CDYkRwt2C8fyKzq3IMUgTTp6xlvvw+L2gIk28y+iTW23/0c9oSXf6Nf01fqyWC5nitPQ
         MlR0f7L0b8kzYR/Rsx6y72tbE9hjloxmj7Q695F50IShZF2ktXvv+GQelzSUn765dNxO
         ztOMKVjHHlTVHFILx/+pIXDyqLJdlBcNiNlgV/O5iqJ8U2YgRZ2BCUf43wIvc5LFCFE/
         DJbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXZilUCGdzbRs6Bpq45m7Fhib20DuHNeJZCGxkFOOW7nUzEKwf
	fBiwwJsi3Em5kCIaAvobiDE=
X-Google-Smtp-Source: APXvYqw27F2KX7VlOTP8XoRM7eKidtHB65K5plnJKIUk+atImrclz2+WghqromAEdJk/R5o0ddCk8A==
X-Received: by 2002:ac2:592f:: with SMTP id v15mr23392782lfi.105.1582397263619;
        Sat, 22 Feb 2020 10:47:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8544:: with SMTP id u4ls866881ljj.6.gmail; Sat, 22 Feb
 2020 10:47:43 -0800 (PST)
X-Received: by 2002:a2e:8745:: with SMTP id q5mr26107519ljj.208.1582397262918;
        Sat, 22 Feb 2020 10:47:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582397262; cv=none;
        d=google.com; s=arc-20160816;
        b=DsnoP3zyI18txWizn62Rv38pbYoju7mnwy4Z0Oq3EHNLolRrfnI7SQJaYsGUJh6IoR
         f37sduURsDmB0pRQNwRfUy5KGY1/QI55qSwYpels1V/FojcE8mGTsvylt6At7LbasZjm
         klCsFbwxUE3JknYfFd7Vua8UyNRl94J1QuBNRsK9OArfG4dsdWjoVnCh1OumublhIt8Z
         ObwXqi1sCQQLvDHnf90qgbH0QrP6yLXeK9vYr9Eg2XzS4ihrSjlCBtrNGpo3gUxYW8xH
         b3N2Re3odn3nbKPvYnlFgvPS1BwhjU2VdaESSPRmugWm7tJzuuhLICJ3316b9a61zHaf
         w/aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=cDHqcrd/jR5yaesiOiAau/TV5f4ecz+NYYc4NAHAJR4=;
        b=Er7ciAOlK3ewrWwRSp1QL97H/KQgyMPtJg9immJG6KQ2SBrJy9sdEopoF/PUFm60/m
         quBd/zp5zUZVQaHbpoTg5jbYXot9YP8c44Pn7gezjepmvytWzKE24VDKp9NG6rxB3tgN
         IKYiPrdKnrXLfdy6oCZniT7SRINAo5n554RzPEOoSEJP+17sfezw7iAtNWMOQdBjT1ub
         fCi7gNU4QfiXLu5UN2xqdriUyiC9Cd2ijiTBCZ3YmHp3/i12Fm2ldIkoWu7TDxDHsQjB
         wlD9K82HfmdKkdH+Kik9c7UAiQVZEqQplIYdwQI5M+avvLL9e9z1xIRjzhQsTCpuZLvU
         oS1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=y1ao7vnb;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v2si352612lfn.4.2020.02.22.10.47.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 10:47:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id n10so5725470wrm.1
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 10:47:42 -0800 (PST)
X-Received: by 2002:adf:eb46:: with SMTP id u6mr56775069wrn.239.1582397261545;
        Sat, 22 Feb 2020 10:47:41 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w19sm9069874wmc.22.2020.02.22.10.47.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 22 Feb 2020 10:47:40 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 22 Feb 2020 18:47:40 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <676260541.3354.1582397260952.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 26 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3353_599254911.1582397260364"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=y1ao7vnb;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_3353_599254911.1582397260364
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Successfully identified regression in *linux* in CI configuration tcwg_kern=
el/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regresse=
d CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-release-arm-mainline-allyesconfig

Culprit:
<cut>
commit c3709b3285009e0c1448510b9460e96146cd5c9a
Author: Alistair Delva <adelva@google.com>

    staging: android: Delete the 'vsoc' driver
</cut>

First few errors in logs of first_bad:
00:13:43 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]=3D"https://github.com/llvm/llvm-project.git"
rr[linux_url]=3D"https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git"
rr[linux_branch]=3D"ca7e1fd1026c5af6a533b4b5447e1d2f153e28f2"

Results regressed to (for first_bad =3D=3D c3709b3285009e0c1448510b9460e961=
46cd5c9a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18456

from (for last_good =3D=3D 8ae9a588ca35eb9c32dc03299c5e1f4a1e9a9617)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18457

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-master-arm-mainline-allyesconfig/26/artifact/artifacts/build-c3709b328=
5009e0c1448510b9460e96146cd5c9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-master-arm-mainline-allyesconfig/26/artifact/artifacts/build-8ae9a588c=
a35eb9c32dc03299c5e1f4a1e9a9617/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-mast=
er-arm-mainline-allyesconfig/26/

Reproduce builds:
<cut>
mkdir investigate-linux-c3709b3285009e0c1448510b9460e96146cd5c9a
cd investigate-linux-c3709b3285009e0c1448510b9460e96146cd5c9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcw=
g_kernel-bisect-llvm-master-arm-mainline-allyesconfig/26/artifact/artifacts=
/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/t=
cwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/26/artifact/artifac=
ts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm=
-master-arm-mainline-allyesconfig/26/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baselin=
e.sh

cd linux

# Reproduce first_bad build
git checkout --detach c3709b3285009e0c1448510b9460e96146cd5c9a
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 8ae9a588ca35eb9c32dc03299c5e1f4a1e9a9617
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchai=
n/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-master-ar=
m-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mai=
nline-allyesconfig/26/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mai=
nline-allyesconfig/26/consoleText

Full commit:
<cut>
commit c3709b3285009e0c1448510b9460e96146cd5c9a
Author: Alistair Delva <adelva@google.com>
Date:   Sun Feb 2 20:22:54 2020 -0800

    staging: android: Delete the 'vsoc' driver
   =20
    The 'vsoc' driver was required for an early iteration of the Android
    'cuttlefish' virtual platform, but this platform has been wholly
    converted to use virtio drivers instead. Delete this old driver.
   =20
    Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
    Cc: Joel Fernandes <joel@joelfernandes.org>
    Cc: Greg Hartman <ghartman@google.com>
    Cc: kernel-team@android.com
    Cc: devel@driverdev.osuosl.org
    Signed-off-by: Alistair Delva <adelva@google.com>
    Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
    Link: https://lore.kernel.org/r/20200203042254.80360-1-adelva@google.co=
m
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/android/Kconfig         |    8 -
 drivers/staging/android/Makefile        |    1 -
 drivers/staging/android/TODO            |    9 -
 drivers/staging/android/uapi/vsoc_shm.h |  295 --------
 drivers/staging/android/vsoc.c          | 1149 ---------------------------=
----
 5 files changed, 1462 deletions(-)

diff --git a/drivers/staging/android/Kconfig b/drivers/staging/android/Kcon=
fig
index d6d605d5cbde..8d8fd5c29349 100644
--- a/drivers/staging/android/Kconfig
+++ b/drivers/staging/android/Kconfig
@@ -14,14 +14,6 @@ config ASHMEM
 	  It is, in theory, a good memory allocator for low-memory devices,
 	  because it can discard shared memory units when under memory pressure.
=20
-config ANDROID_VSOC
-	tristate "Android Virtual SoC support"
-	depends on PCI_MSI
-	help
-	  This option adds support for the Virtual SoC driver needed to boot
-	  a 'cuttlefish' Android image inside QEmu. The driver interacts with
-	  a QEmu ivshmem device. If built as a module, it will be called vsoc.
-
 source "drivers/staging/android/ion/Kconfig"
=20
 endif # if ANDROID
diff --git a/drivers/staging/android/Makefile b/drivers/staging/android/Mak=
efile
index 14bd9c6ce10d..3b66cd0b0ec5 100644
--- a/drivers/staging/android/Makefile
+++ b/drivers/staging/android/Makefile
@@ -4,4 +4,3 @@ ccflags-y +=3D -I$(src)			# needed for trace events
 obj-y					+=3D ion/
=20
 obj-$(CONFIG_ASHMEM)			+=3D ashmem.o
-obj-$(CONFIG_ANDROID_VSOC)		+=3D vsoc.o
diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
index 767dd98fd92d..80eccfaf6db5 100644
--- a/drivers/staging/android/TODO
+++ b/drivers/staging/android/TODO
@@ -9,14 +9,5 @@ ion/
  - Split /dev/ion up into multiple nodes (e.g. /dev/ion/heap0)
  - Better test framework (integration with VGEM was suggested)
=20
-vsoc.c, uapi/vsoc_shm.h
- - The current driver uses the same wait queue for all of the futexes in a
-   region. This will cause false wakeups in regions with a large number of
-   waiting threads. We should eventually use multiple queues and select th=
e
-   queue based on the region.
- - Add debugfs support for examining the permissions of regions.
- - Remove VSOC_WAIT_FOR_INCOMING_INTERRUPT ioctl. This functionality has b=
een
-   superseded by the futex and is there for legacy reasons.
-
 Please send patches to Greg Kroah-Hartman <greg@kroah.com> and Cc:
 Arve Hj=C3=B8nnev=C3=A5g <arve@android.com> and Riley Andrews <riandrews@a=
ndroid.com>
diff --git a/drivers/staging/android/uapi/vsoc_shm.h b/drivers/staging/andr=
oid/uapi/vsoc_shm.h
deleted file mode 100644
index 6291fb24efb2..000000000000
--- a/drivers/staging/android/uapi/vsoc_shm.h
+++ /dev/null
@@ -1,295 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2017 Google, Inc.
- *
- */
-
-#ifndef _UAPI_LINUX_VSOC_SHM_H
-#define _UAPI_LINUX_VSOC_SHM_H
-
-#include <linux/types.h>
-
-/**
- * A permission is a token that permits a receiver to read and/or write an=
 area
- * of memory within a Vsoc region.
- *
- * An fd_scoped permission grants both read and write access, and can be
- * attached to a file description (see open(2)).
- * Ownership of the area can then be shared by passing a file descriptor
- * among processes.
- *
- * begin_offset and end_offset define the area of memory that is controlle=
d by
- * the permission. owner_offset points to a word, also in shared memory, t=
hat
- * controls ownership of the area.
- *
- * ownership of the region expires when the associated file description is
- * released.
- *
- * At most one permission can be attached to each file description.
- *
- * This is useful when implementing HALs like gralloc that scope and pass
- * ownership of shared resources via file descriptors.
- *
- * The caller is responsibe for doing any fencing.
- *
- * The calling process will normally identify a currently free area of
- * memory. It will construct a proposed fd_scoped_permission_arg structure=
:
- *
- *   begin_offset and end_offset describe the area being claimed
- *
- *   owner_offset points to the location in shared memory that indicates t=
he
- *   owner of the area.
- *
- *   owned_value is the value that will be stored in owner_offset iff the
- *   permission can be granted. It must be different than VSOC_REGION_FREE=
.
- *
- * Two fd_scoped_permission structures are compatible if they vary only by
- * their owned_value fields.
- *
- * The driver ensures that, for any group of simultaneous callers proposin=
g
- * compatible fd_scoped_permissions, it will accept exactly one of the
- * propopsals. The other callers will get a failure with errno of EAGAIN.
- *
- * A process receiving a file descriptor can identify the region being
- * granted using the VSOC_GET_FD_SCOPED_PERMISSION ioctl.
- */
-struct fd_scoped_permission {
-	__u32 begin_offset;
-	__u32 end_offset;
-	__u32 owner_offset;
-	__u32 owned_value;
-};
-
-/*
- * This value represents a free area of memory. The driver expects to see =
this
- * value at owner_offset when creating a permission otherwise it will not =
do it,
- * and will write this value back once the permission is no longer needed.
- */
-#define VSOC_REGION_FREE ((__u32)0)
-
-/**
- * ioctl argument for VSOC_CREATE_FD_SCOPE_PERMISSION
- */
-struct fd_scoped_permission_arg {
-	struct fd_scoped_permission perm;
-	__s32 managed_region_fd;
-};
-
-#define VSOC_NODE_FREE ((__u32)0)
-
-/*
- * Describes a signal table in shared memory. Each non-zero entry in the
- * table indicates that the receiver should signal the futex at the given
- * offset. Offsets are relative to the region, not the shared memory windo=
w.
- *
- * interrupt_signalled_offset is used to reliably signal interrupts across=
 the
- * vmm boundary. There are two roles: transmitter and receiver. For exampl=
e,
- * in the host_to_guest_signal_table the host is the transmitter and the
- * guest is the receiver. The protocol is as follows:
- *
- * 1. The transmitter should convert the offset of the futex to an offset
- *    in the signal table [0, (1 << num_nodes_lg2))
- *    The transmitter can choose any appropriate hashing algorithm, includ=
ing
- *    hash =3D futex_offset & ((1 << num_nodes_lg2) - 1)
- *
- * 3. The transmitter should atomically compare and swap futex_offset with=
 0
- *    at hash. There are 3 possible outcomes
- *      a. The swap fails because the futex_offset is already in the table=
.
- *         The transmitter should stop.
- *      b. Some other offset is in the table. This is a hash collision. Th=
e
- *         transmitter should move to another table slot and try again. On=
e
- *         possible algorithm:
- *         hash =3D (hash + 1) & ((1 << num_nodes_lg2) - 1)
- *      c. The swap worked. Continue below.
- *
- * 3. The transmitter atomically swaps 1 with the value at the
- *    interrupt_signalled_offset. There are two outcomes:
- *      a. The prior value was 1. In this case an interrupt has already be=
en
- *         posted. The transmitter is done.
- *      b. The prior value was 0, indicating that the receiver may be slee=
ping.
- *         The transmitter will issue an interrupt.
- *
- * 4. On waking the receiver immediately exchanges a 0 with the
- *    interrupt_signalled_offset. If it receives a 0 then this a spurious
- *    interrupt. That may occasionally happen in the current protocol, but
- *    should be rare.
- *
- * 5. The receiver scans the signal table by atomicaly exchanging 0 at eac=
h
- *    location. If a non-zero offset is returned from the exchange the
- *    receiver wakes all sleepers at the given offset:
- *      futex((int*)(region_base + old_value), FUTEX_WAKE, MAX_INT);
- *
- * 6. The receiver thread then does a conditional wait, waking immediately
- *    if the value at interrupt_signalled_offset is non-zero. This catches=
 cases
- *    here additional  signals were posted while the table was being scann=
ed.
- *    On the guest the wait is handled via the VSOC_WAIT_FOR_INCOMING_INTE=
RRUPT
- *    ioctl.
- */
-struct vsoc_signal_table_layout {
-	/* log_2(Number of signal table entries) */
-	__u32 num_nodes_lg2;
-	/*
-	 * Offset to the first signal table entry relative to the start of the
-	 * region
-	 */
-	__u32 futex_uaddr_table_offset;
-	/*
-	 * Offset to an atomic_t / atomic uint32_t. A non-zero value indicates
-	 * that one or more offsets are currently posted in the table.
-	 * semi-unique access to an entry in the table
-	 */
-	__u32 interrupt_signalled_offset;
-};
-
-#define VSOC_REGION_WHOLE ((__s32)0)
-#define VSOC_DEVICE_NAME_SZ 16
-
-/**
- * Each HAL would (usually) talk to a single device region
- * Mulitple entities care about these regions:
- * - The ivshmem_server will populate the regions in shared memory
- * - The guest kernel will read the region, create minor device nodes, and
- *   allow interested parties to register for FUTEX_WAKE events in the reg=
ion
- * - HALs will access via the minor device nodes published by the guest ke=
rnel
- * - Host side processes will access the region via the ivshmem_server:
- *   1. Pass name to ivshmem_server at a UNIX socket
- *   2. ivshmemserver will reply with 2 fds:
- *     - host->guest doorbell fd
- *     - guest->host doorbell fd
- *     - fd for the shared memory region
- *     - region offset
- *   3. Start a futex receiver thread on the doorbell fd pointed at the
- *      signal_nodes
- */
-struct vsoc_device_region {
-	__u16 current_version;
-	__u16 min_compatible_version;
-	__u32 region_begin_offset;
-	__u32 region_end_offset;
-	__u32 offset_of_region_data;
-	struct vsoc_signal_table_layout guest_to_host_signal_table;
-	struct vsoc_signal_table_layout host_to_guest_signal_table;
-	/* Name of the device. Must always be terminated with a '\0', so
-	 * the longest supported device name is 15 characters.
-	 */
-	char device_name[VSOC_DEVICE_NAME_SZ];
-	/* There are two ways that permissions to access regions are handled:
-	 *   - When subdivided_by is VSOC_REGION_WHOLE, any process that can
-	 *     open the device node for the region gains complete access to it.
-	 *   - When subdivided is set processes that open the region cannot
-	 *     access it. Access to a sub-region must be established by invoking
-	 *     the VSOC_CREATE_FD_SCOPE_PERMISSION ioctl on the region
-	 *     referenced in subdivided_by, providing a fileinstance
-	 *     (represented by a fd) opened on this region.
-	 */
-	__u32 managed_by;
-};
-
-/*
- * The vsoc layout descriptor.
- * The first 4K should be reserved for the shm header and region descripto=
rs.
- * The regions should be page aligned.
- */
-
-struct vsoc_shm_layout_descriptor {
-	__u16 major_version;
-	__u16 minor_version;
-
-	/* size of the shm. This may be redundant but nice to have */
-	__u32 size;
-
-	/* number of shared memory regions */
-	__u32 region_count;
-
-	/* The offset to the start of region descriptors */
-	__u32 vsoc_region_desc_offset;
-};
-
-/*
- * This specifies the current version that should be stored in
- * vsoc_shm_layout_descriptor.major_version and
- * vsoc_shm_layout_descriptor.minor_version.
- * It should be updated only if the vsoc_device_region and
- * vsoc_shm_layout_descriptor structures have changed.
- * Versioning within each region is transferred
- * via the min_compatible_version and current_version fields in
- * vsoc_device_region. The driver does not consult these fields: they are =
left
- * for the HALs and host processes and will change independently of the la=
yout
- * version.
- */
-#define CURRENT_VSOC_LAYOUT_MAJOR_VERSION 2
-#define CURRENT_VSOC_LAYOUT_MINOR_VERSION 0
-
-#define VSOC_CREATE_FD_SCOPED_PERMISSION \
-	_IOW(0xF5, 0, struct fd_scoped_permission)
-#define VSOC_GET_FD_SCOPED_PERMISSION _IOR(0xF5, 1, struct fd_scoped_permi=
ssion)
-
-/*
- * This is used to signal the host to scan the guest_to_host_signal_table
- * for new futexes to wake. This sends an interrupt if one is not already
- * in flight.
- */
-#define VSOC_MAYBE_SEND_INTERRUPT_TO_HOST _IO(0xF5, 2)
-
-/*
- * When this returns the guest will scan host_to_guest_signal_table to
- * check for new futexes to wake.
- */
-/* TODO(ghartman): Consider moving this to the bottom half */
-#define VSOC_WAIT_FOR_INCOMING_INTERRUPT _IO(0xF5, 3)
-
-/*
- * Guest HALs will use this to retrieve the region description after
- * opening their device node.
- */
-#define VSOC_DESCRIBE_REGION _IOR(0xF5, 4, struct vsoc_device_region)
-
-/*
- * Wake any threads that may be waiting for a host interrupt on this regio=
n.
- * This is mostly used during shutdown.
- */
-#define VSOC_SELF_INTERRUPT _IO(0xF5, 5)
-
-/*
- * This is used to signal the host to scan the guest_to_host_signal_table
- * for new futexes to wake. This sends an interrupt unconditionally.
- */
-#define VSOC_SEND_INTERRUPT_TO_HOST _IO(0xF5, 6)
-
-enum wait_types {
-	VSOC_WAIT_UNDEFINED =3D 0,
-	VSOC_WAIT_IF_EQUAL =3D 1,
-	VSOC_WAIT_IF_EQUAL_TIMEOUT =3D 2
-};
-
-/*
- * Wait for a condition to be true
- *
- * Note, this is sized and aligned so the 32 bit and 64 bit layouts are
- * identical.
- */
-struct vsoc_cond_wait {
-	/* Input: Offset of the 32 bit word to check */
-	__u32 offset;
-	/* Input: Value that will be compared with the offset */
-	__u32 value;
-	/* Monotonic time to wake at in seconds */
-	__u64 wake_time_sec;
-	/* Input: Monotonic time to wait in nanoseconds */
-	__u32 wake_time_nsec;
-	/* Input: Type of wait */
-	__u32 wait_type;
-	/* Output: Number of times the thread woke before returning. */
-	__u32 wakes;
-	/* Ensure that we're 8-byte aligned and 8 byte length for 32/64 bit
-	 * compatibility.
-	 */
-	__u32 reserved_1;
-};
-
-#define VSOC_COND_WAIT _IOWR(0xF5, 7, struct vsoc_cond_wait)
-
-/* Wake any local threads waiting at the offset given in arg */
-#define VSOC_COND_WAKE _IO(0xF5, 8)
-
-#endif /* _UAPI_LINUX_VSOC_SHM_H */
diff --git a/drivers/staging/android/vsoc.c b/drivers/staging/android/vsoc.=
c
deleted file mode 100644
index 1240bb0317d9..000000000000
--- a/drivers/staging/android/vsoc.c
+++ /dev/null
@@ -1,1149 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * drivers/android/staging/vsoc.c
- *
- * Android Virtual System on a Chip (VSoC) driver
- *
- * Copyright (C) 2017 Google, Inc.
- *
- * Author: ghartman@google.com
- *
- * Based on drivers/char/kvm_ivshmem.c - driver for KVM Inter-VM shared me=
mory
- *         Copyright 2009 Cam Macdonell <cam@cs.ualberta.ca>
- *
- * Based on cirrusfb.c and 8139cp.c:
- *   Copyright 1999-2001 Jeff Garzik
- *   Copyright 2001-2004 Jeff Garzik
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/freezer.h>
-#include <linux/futex.h>
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/pci.h>
-#include <linux/proc_fs.h>
-#include <linux/sched.h>
-#include <linux/syscalls.h>
-#include <linux/uaccess.h>
-#include <linux/interrupt.h>
-#include <linux/cdev.h>
-#include <linux/file.h>
-#include "uapi/vsoc_shm.h"
-
-#define VSOC_DEV_NAME "vsoc"
-
-/*
- * Description of the ivshmem-doorbell PCI device used by QEmu. These
- * constants follow docs/specs/ivshmem-spec.txt, which can be found in
- * the QEmu repository. This was last reconciled with the version that
- * came out with 2.8
- */
-
-/*
- * These constants are determined KVM Inter-VM shared memory device
- * register offsets
- */
-enum {
-	INTR_MASK =3D 0x00,	/* Interrupt Mask */
-	INTR_STATUS =3D 0x04,	/* Interrupt Status */
-	IV_POSITION =3D 0x08,	/* VM ID */
-	DOORBELL =3D 0x0c,	/* Doorbell */
-};
-
-static const int REGISTER_BAR;  /* Equal to 0 */
-static const int MAX_REGISTER_BAR_LEN =3D 0x100;
-/*
- * The MSI-x BAR is not used directly.
- *
- * static const int MSI_X_BAR =3D 1;
- */
-static const int SHARED_MEMORY_BAR =3D 2;
-
-struct vsoc_region_data {
-	char name[VSOC_DEVICE_NAME_SZ + 1];
-	wait_queue_head_t interrupt_wait_queue;
-	/* TODO(b/73664181): Use multiple futex wait queues */
-	wait_queue_head_t futex_wait_queue;
-	/* Flag indicating that an interrupt has been signalled by the host. */
-	atomic_t *incoming_signalled;
-	/* Flag indicating the guest has signalled the host. */
-	atomic_t *outgoing_signalled;
-	bool irq_requested;
-	bool device_created;
-};
-
-struct vsoc_device {
-	/* Kernel virtual address of REGISTER_BAR. */
-	void __iomem *regs;
-	/* Physical address of SHARED_MEMORY_BAR. */
-	phys_addr_t shm_phys_start;
-	/* Kernel virtual address of SHARED_MEMORY_BAR. */
-	void __iomem *kernel_mapped_shm;
-	/* Size of the entire shared memory window in bytes. */
-	size_t shm_size;
-	/*
-	 * Pointer to the virtual address of the shared memory layout structure.
-	 * This is probably identical to kernel_mapped_shm, but saving this
-	 * here saves a lot of annoying casts.
-	 */
-	struct vsoc_shm_layout_descriptor *layout;
-	/*
-	 * Points to a table of region descriptors in the kernel's virtual
-	 * address space. Calculated from
-	 * vsoc_shm_layout_descriptor.vsoc_region_desc_offset
-	 */
-	struct vsoc_device_region *regions;
-	/* Head of a list of permissions that have been granted. */
-	struct list_head permissions;
-	struct pci_dev *dev;
-	/* Per-region (and therefore per-interrupt) information. */
-	struct vsoc_region_data *regions_data;
-	/*
-	 * Table of msi-x entries. This has to be separated from struct
-	 * vsoc_region_data because the kernel deals with them as an array.
-	 */
-	struct msix_entry *msix_entries;
-	/* Mutex that protectes the permission list */
-	struct mutex mtx;
-	/* Major number assigned by the kernel */
-	int major;
-	/* Character device assigned by the kernel */
-	struct cdev cdev;
-	/* Device class assigned by the kernel */
-	struct class *class;
-	/*
-	 * Flags that indicate what we've initialized. These are used to do an
-	 * orderly cleanup of the device.
-	 */
-	bool enabled_device;
-	bool requested_regions;
-	bool cdev_added;
-	bool class_added;
-	bool msix_enabled;
-};
-
-static struct vsoc_device vsoc_dev;
-
-/*
- * TODO(ghartman): Add a /sys filesystem entry that summarizes the permiss=
ions.
- */
-
-struct fd_scoped_permission_node {
-	struct fd_scoped_permission permission;
-	struct list_head list;
-};
-
-struct vsoc_private_data {
-	struct fd_scoped_permission_node *fd_scoped_permission_node;
-};
-
-static long vsoc_ioctl(struct file *, unsigned int, unsigned long);
-static int vsoc_mmap(struct file *, struct vm_area_struct *);
-static int vsoc_open(struct inode *, struct file *);
-static int vsoc_release(struct inode *, struct file *);
-static ssize_t vsoc_read(struct file *, char __user *, size_t, loff_t *);
-static ssize_t vsoc_write(struct file *, const char __user *, size_t, loff=
_t *);
-static loff_t vsoc_lseek(struct file *filp, loff_t offset, int origin);
-static int
-do_create_fd_scoped_permission(struct vsoc_device_region *region_p,
-			       struct fd_scoped_permission_node *np,
-			       struct fd_scoped_permission_arg __user *arg);
-static void
-do_destroy_fd_scoped_permission(struct vsoc_device_region *owner_region_p,
-				struct fd_scoped_permission *perm);
-static long do_vsoc_describe_region(struct file *,
-				    struct vsoc_device_region __user *);
-static ssize_t vsoc_get_area(struct file *filp, __u32 *perm_off);
-
-/**
- * Validate arguments on entry points to the driver.
- */
-inline int vsoc_validate_inode(struct inode *inode)
-{
-	if (iminor(inode) >=3D vsoc_dev.layout->region_count) {
-		dev_err(&vsoc_dev.dev->dev,
-			"describe_region: invalid region %d\n", iminor(inode));
-		return -ENODEV;
-	}
-	return 0;
-}
-
-inline int vsoc_validate_filep(struct file *filp)
-{
-	int ret =3D vsoc_validate_inode(file_inode(filp));
-
-	if (ret)
-		return ret;
-	if (!filp->private_data) {
-		dev_err(&vsoc_dev.dev->dev,
-			"No private data on fd, region %d\n",
-			iminor(file_inode(filp)));
-		return -EBADFD;
-	}
-	return 0;
-}
-
-/* Converts from shared memory offset to virtual address */
-static inline void *shm_off_to_virtual_addr(__u32 offset)
-{
-	return (void __force *)vsoc_dev.kernel_mapped_shm + offset;
-}
-
-/* Converts from shared memory offset to physical address */
-static inline phys_addr_t shm_off_to_phys_addr(__u32 offset)
-{
-	return vsoc_dev.shm_phys_start + offset;
-}
-
-/**
- * Convenience functions to obtain the region from the inode or file.
- * Dangerous to call before validating the inode/file.
- */
-static
-inline struct vsoc_device_region *vsoc_region_from_inode(struct inode *ino=
de)
-{
-	return &vsoc_dev.regions[iminor(inode)];
-}
-
-static
-inline struct vsoc_device_region *vsoc_region_from_filep(struct file *inod=
e)
-{
-	return vsoc_region_from_inode(file_inode(inode));
-}
-
-static inline uint32_t vsoc_device_region_size(struct vsoc_device_region *=
r)
-{
-	return r->region_end_offset - r->region_begin_offset;
-}
-
-static const struct file_operations vsoc_ops =3D {
-	.owner =3D THIS_MODULE,
-	.open =3D vsoc_open,
-	.mmap =3D vsoc_mmap,
-	.read =3D vsoc_read,
-	.unlocked_ioctl =3D vsoc_ioctl,
-	.compat_ioctl =3D vsoc_ioctl,
-	.write =3D vsoc_write,
-	.llseek =3D vsoc_lseek,
-	.release =3D vsoc_release,
-};
-
-static struct pci_device_id vsoc_id_table[] =3D {
-	{0x1af4, 0x1110, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0},
-	{0},
-};
-
-MODULE_DEVICE_TABLE(pci, vsoc_id_table);
-
-static void vsoc_remove_device(struct pci_dev *pdev);
-static int vsoc_probe_device(struct pci_dev *pdev,
-			     const struct pci_device_id *ent);
-
-static struct pci_driver vsoc_pci_driver =3D {
-	.name =3D "vsoc",
-	.id_table =3D vsoc_id_table,
-	.probe =3D vsoc_probe_device,
-	.remove =3D vsoc_remove_device,
-};
-
-static int
-do_create_fd_scoped_permission(struct vsoc_device_region *region_p,
-			       struct fd_scoped_permission_node *np,
-			       struct fd_scoped_permission_arg __user *arg)
-{
-	struct file *managed_filp;
-	s32 managed_fd;
-	atomic_t *owner_ptr =3D NULL;
-	struct vsoc_device_region *managed_region_p;
-
-	if (copy_from_user(&np->permission,
-			   &arg->perm, sizeof(np->permission)) ||
-	    copy_from_user(&managed_fd,
-			   &arg->managed_region_fd, sizeof(managed_fd))) {
-		return -EFAULT;
-	}
-	managed_filp =3D fdget(managed_fd).file;
-	/* Check that it's a valid fd, */
-	if (!managed_filp || vsoc_validate_filep(managed_filp))
-		return -EPERM;
-	/* EEXIST if the given fd already has a permission. */
-	if (((struct vsoc_private_data *)managed_filp->private_data)->
-	    fd_scoped_permission_node)
-		return -EEXIST;
-	managed_region_p =3D vsoc_region_from_filep(managed_filp);
-	/* Check that the provided region is managed by this one */
-	if (&vsoc_dev.regions[managed_region_p->managed_by] !=3D region_p)
-		return -EPERM;
-	/* The area must be well formed and have non-zero size */
-	if (np->permission.begin_offset >=3D np->permission.end_offset)
-		return -EINVAL;
-	/* The area must fit in the memory window */
-	if (np->permission.end_offset >
-	    vsoc_device_region_size(managed_region_p))
-		return -ERANGE;
-	/* The area must be in the region data section */
-	if (np->permission.begin_offset <
-	    managed_region_p->offset_of_region_data)
-		return -ERANGE;
-	/* The area must be page aligned */
-	if (!PAGE_ALIGNED(np->permission.begin_offset) ||
-	    !PAGE_ALIGNED(np->permission.end_offset))
-		return -EINVAL;
-	/* Owner offset must be naturally aligned in the window */
-	if (np->permission.owner_offset &
-	    (sizeof(np->permission.owner_offset) - 1))
-		return -EINVAL;
-	/* The owner flag must reside in the owner memory */
-	if (np->permission.owner_offset + sizeof(np->permission.owner_offset) >
-	    vsoc_device_region_size(region_p))
-		return -ERANGE;
-	/* The owner flag must reside in the data section */
-	if (np->permission.owner_offset < region_p->offset_of_region_data)
-		return -EINVAL;
-	/* The owner value must change to claim the memory */
-	if (np->permission.owned_value =3D=3D VSOC_REGION_FREE)
-		return -EINVAL;
-	owner_ptr =3D
-	    (atomic_t *)shm_off_to_virtual_addr(region_p->region_begin_offset +
-						np->permission.owner_offset);
-	/* We've already verified that this is in the shared memory window, so
-	 * it should be safe to write to this address.
-	 */
-	if (atomic_cmpxchg(owner_ptr,
-			   VSOC_REGION_FREE,
-			   np->permission.owned_value) !=3D VSOC_REGION_FREE) {
-		return -EBUSY;
-	}
-	((struct vsoc_private_data *)managed_filp->private_data)->
-	    fd_scoped_permission_node =3D np;
-	/* The file offset needs to be adjusted if the calling
-	 * process did any read/write operations on the fd
-	 * before creating the permission.
-	 */
-	if (managed_filp->f_pos) {
-		if (managed_filp->f_pos > np->permission.end_offset) {
-			/* If the offset is beyond the permission end, set it
-			 * to the end.
-			 */
-			managed_filp->f_pos =3D np->permission.end_offset;
-		} else {
-			/* If the offset is within the permission interval
-			 * keep it there otherwise reset it to zero.
-			 */
-			if (managed_filp->f_pos < np->permission.begin_offset) {
-				managed_filp->f_pos =3D 0;
-			} else {
-				managed_filp->f_pos -=3D
-				    np->permission.begin_offset;
-			}
-		}
-	}
-	return 0;
-}
-
-static void
-do_destroy_fd_scoped_permission_node(struct vsoc_device_region *owner_regi=
on_p,
-				     struct fd_scoped_permission_node *node)
-{
-	if (node) {
-		do_destroy_fd_scoped_permission(owner_region_p,
-						&node->permission);
-		mutex_lock(&vsoc_dev.mtx);
-		list_del(&node->list);
-		mutex_unlock(&vsoc_dev.mtx);
-		kfree(node);
-	}
-}
-
-static void
-do_destroy_fd_scoped_permission(struct vsoc_device_region *owner_region_p,
-				struct fd_scoped_permission *perm)
-{
-	atomic_t *owner_ptr =3D NULL;
-	int prev =3D 0;
-
-	if (!perm)
-		return;
-	owner_ptr =3D (atomic_t *)shm_off_to_virtual_addr
-		(owner_region_p->region_begin_offset + perm->owner_offset);
-	prev =3D atomic_xchg(owner_ptr, VSOC_REGION_FREE);
-	if (prev !=3D perm->owned_value)
-		dev_err(&vsoc_dev.dev->dev,
-			"%x-%x: owner (%s) %x: expected to be %x was %x",
-			perm->begin_offset, perm->end_offset,
-			owner_region_p->device_name, perm->owner_offset,
-			perm->owned_value, prev);
-}
-
-static long do_vsoc_describe_region(struct file *filp,
-				    struct vsoc_device_region __user *dest)
-{
-	struct vsoc_device_region *region_p;
-	int retval =3D vsoc_validate_filep(filp);
-
-	if (retval)
-		return retval;
-	region_p =3D vsoc_region_from_filep(filp);
-	if (copy_to_user(dest, region_p, sizeof(*region_p)))
-		return -EFAULT;
-	return 0;
-}
-
-/**
- * Implements the inner logic of cond_wait. Copies to and from userspace a=
re
- * done in the helper function below.
- */
-static int handle_vsoc_cond_wait(struct file *filp, struct vsoc_cond_wait =
*arg)
-{
-	DEFINE_WAIT(wait);
-	u32 region_number =3D iminor(file_inode(filp));
-	struct vsoc_region_data *data =3D vsoc_dev.regions_data + region_number;
-	struct hrtimer_sleeper timeout, *to =3D NULL;
-	int ret =3D 0;
-	struct vsoc_device_region *region_p =3D vsoc_region_from_filep(filp);
-	atomic_t *address =3D NULL;
-	ktime_t wake_time;
-
-	/* Ensure that the offset is aligned */
-	if (arg->offset & (sizeof(uint32_t) - 1))
-		return -EADDRNOTAVAIL;
-	/* Ensure that the offset is within shared memory */
-	if (((uint64_t)arg->offset) + region_p->region_begin_offset +
-	    sizeof(uint32_t) > region_p->region_end_offset)
-		return -E2BIG;
-	address =3D shm_off_to_virtual_addr(region_p->region_begin_offset +
-					  arg->offset);
-
-	/* Ensure that the type of wait is valid */
-	switch (arg->wait_type) {
-	case VSOC_WAIT_IF_EQUAL:
-		break;
-	case VSOC_WAIT_IF_EQUAL_TIMEOUT:
-		to =3D &timeout;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	if (to) {
-		/* Copy the user-supplied timesec into the kernel structure.
-		 * We do things this way to flatten differences between 32 bit
-		 * and 64 bit timespecs.
-		 */
-		if (arg->wake_time_nsec >=3D NSEC_PER_SEC)
-			return -EINVAL;
-		wake_time =3D ktime_set(arg->wake_time_sec, arg->wake_time_nsec);
-
-		hrtimer_init_sleeper_on_stack(to, CLOCK_MONOTONIC,
-					      HRTIMER_MODE_ABS);
-		hrtimer_set_expires_range_ns(&to->timer, wake_time,
-					     current->timer_slack_ns);
-	}
-
-	while (1) {
-		prepare_to_wait(&data->futex_wait_queue, &wait,
-				TASK_INTERRUPTIBLE);
-		/*
-		 * Check the sentinel value after prepare_to_wait. If the value
-		 * changes after this check the writer will call signal,
-		 * changing the task state from INTERRUPTIBLE to RUNNING. That
-		 * will ensure that schedule() will eventually schedule this
-		 * task.
-		 */
-		if (atomic_read(address) !=3D arg->value) {
-			ret =3D 0;
-			break;
-		}
-		if (to) {
-			hrtimer_sleeper_start_expires(to, HRTIMER_MODE_ABS);
-			if (likely(to->task))
-				freezable_schedule();
-			hrtimer_cancel(&to->timer);
-			if (!to->task) {
-				ret =3D -ETIMEDOUT;
-				break;
-			}
-		} else {
-			freezable_schedule();
-		}
-		/* Count the number of times that we woke up. This is useful
-		 * for unit testing.
-		 */
-		++arg->wakes;
-		if (signal_pending(current)) {
-			ret =3D -EINTR;
-			break;
-		}
-	}
-	finish_wait(&data->futex_wait_queue, &wait);
-	if (to)
-		destroy_hrtimer_on_stack(&to->timer);
-	return ret;
-}
-
-/**
- * Handles the details of copying from/to userspace to ensure that the cop=
ies
- * happen on all of the return paths of cond_wait.
- */
-static int do_vsoc_cond_wait(struct file *filp,
-			     struct vsoc_cond_wait __user *untrusted_in)
-{
-	struct vsoc_cond_wait arg;
-	int rval =3D 0;
-
-	if (copy_from_user(&arg, untrusted_in, sizeof(arg)))
-		return -EFAULT;
-	/* wakes is an out parameter. Initialize it to something sensible. */
-	arg.wakes =3D 0;
-	rval =3D handle_vsoc_cond_wait(filp, &arg);
-	if (copy_to_user(untrusted_in, &arg, sizeof(arg)))
-		return -EFAULT;
-	return rval;
-}
-
-static int do_vsoc_cond_wake(struct file *filp, uint32_t offset)
-{
-	struct vsoc_device_region *region_p =3D vsoc_region_from_filep(filp);
-	u32 region_number =3D iminor(file_inode(filp));
-	struct vsoc_region_data *data =3D vsoc_dev.regions_data + region_number;
-	/* Ensure that the offset is aligned */
-	if (offset & (sizeof(uint32_t) - 1))
-		return -EADDRNOTAVAIL;
-	/* Ensure that the offset is within shared memory */
-	if (((uint64_t)offset) + region_p->region_begin_offset +
-	    sizeof(uint32_t) > region_p->region_end_offset)
-		return -E2BIG;
-	/*
-	 * TODO(b/73664181): Use multiple futex wait queues.
-	 * We need to wake every sleeper when the condition changes. Typically
-	 * only a single thread will be waiting on the condition, but there
-	 * are exceptions. The worst case is about 10 threads.
-	 */
-	wake_up_interruptible_all(&data->futex_wait_queue);
-	return 0;
-}
-
-static long vsoc_ioctl(struct file *filp, unsigned int cmd, unsigned long =
arg)
-{
-	int rv =3D 0;
-	struct vsoc_device_region *region_p;
-	u32 reg_num;
-	struct vsoc_region_data *reg_data;
-	int retval =3D vsoc_validate_filep(filp);
-
-	if (retval)
-		return retval;
-	region_p =3D vsoc_region_from_filep(filp);
-	reg_num =3D iminor(file_inode(filp));
-	reg_data =3D vsoc_dev.regions_data + reg_num;
-	switch (cmd) {
-	case VSOC_CREATE_FD_SCOPED_PERMISSION:
-		{
-			struct fd_scoped_permission_node *node =3D NULL;
-
-			node =3D kzalloc(sizeof(*node), GFP_KERNEL);
-			/* We can't allocate memory for the permission */
-			if (!node)
-				return -ENOMEM;
-			INIT_LIST_HEAD(&node->list);
-			rv =3D do_create_fd_scoped_permission
-				(region_p,
-				 node,
-				 (struct fd_scoped_permission_arg __user *)arg);
-			if (!rv) {
-				mutex_lock(&vsoc_dev.mtx);
-				list_add(&node->list, &vsoc_dev.permissions);
-				mutex_unlock(&vsoc_dev.mtx);
-			} else {
-				kfree(node);
-				return rv;
-			}
-		}
-		break;
-
-	case VSOC_GET_FD_SCOPED_PERMISSION:
-		{
-			struct fd_scoped_permission_node *node =3D
-			    ((struct vsoc_private_data *)filp->private_data)->
-			    fd_scoped_permission_node;
-			if (!node)
-				return -ENOENT;
-			if (copy_to_user
-			    ((struct fd_scoped_permission __user *)arg,
-			     &node->permission, sizeof(node->permission)))
-				return -EFAULT;
-		}
-		break;
-
-	case VSOC_MAYBE_SEND_INTERRUPT_TO_HOST:
-		if (!atomic_xchg(reg_data->outgoing_signalled, 1)) {
-			writel(reg_num, vsoc_dev.regs + DOORBELL);
-			return 0;
-		} else {
-			return -EBUSY;
-		}
-		break;
-
-	case VSOC_SEND_INTERRUPT_TO_HOST:
-		writel(reg_num, vsoc_dev.regs + DOORBELL);
-		return 0;
-	case VSOC_WAIT_FOR_INCOMING_INTERRUPT:
-		wait_event_interruptible
-			(reg_data->interrupt_wait_queue,
-			 (atomic_read(reg_data->incoming_signalled) !=3D 0));
-		break;
-
-	case VSOC_DESCRIBE_REGION:
-		return do_vsoc_describe_region
-			(filp,
-			 (struct vsoc_device_region __user *)arg);
-
-	case VSOC_SELF_INTERRUPT:
-		atomic_set(reg_data->incoming_signalled, 1);
-		wake_up_interruptible(&reg_data->interrupt_wait_queue);
-		break;
-
-	case VSOC_COND_WAIT:
-		return do_vsoc_cond_wait(filp,
-					 (struct vsoc_cond_wait __user *)arg);
-	case VSOC_COND_WAKE:
-		return do_vsoc_cond_wake(filp, arg);
-
-	default:
-		return -EINVAL;
-	}
-	return 0;
-}
</cut>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/676260541.3354.1582397260952.JavaMail.javamailuser%40loca=
lhost.

------=_Part_3353_599254911.1582397260364--
