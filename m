Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBH6MX32AKGQE3X5CNAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 7043D1A3C80
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 00:48:00 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id e10sf117687wru.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 15:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586472480; cv=pass;
        d=google.com; s=arc-20160816;
        b=G4rMWkUDyJ42nqL3Lix9W682xyj/Zg93KukpUnrrVmGnQQLNQi5Imse5clxD/aguE/
         Bqp996BazYjUYBCQLkP3mEUfBHZ5pzGNLabbxa0mImQXE5J5AAjBU6aoRSuImLvlQ8X5
         VPVttyqJ2z5UT2Pm4G7GE+luxOZnG1Lh9Zi1ESX4v6VlPI/bpXlU7R7VAY2bc3ymqm/1
         P6eJD7h9QX56M/E60GdkjEGxG1jHl2njhv7UA/I5pAxy5dCRQYlcXZMzeI8ta31YK0bb
         v1hQMS6+RCRPBFE+VYY5z1J4aJCOgS4jJvR+9MKfrdcdgUIzHq2r/AOUDuWoGwbP9jHS
         9zDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:to:date:from:sender:dkim-signature;
        bh=QwwfbTWjeMnv2ELKiDqqO79E5XGT1l+nk3bXujRKqjE=;
        b=spBF/pWG4L7090bK1Jtk6HhUOACD0vlfGAI5dGNusGu4qptUGBMlRvkSpeYgSVVMh7
         Gjpbc0LqFqOnAc3+38QWSosoA0ehh7RouKuW8nzDvhwOMRVaW7bpjEgJ8IIPyJQ/uxqy
         TxbBmpRRDlvza/iC8zR3HwEcYlWyBLSeOpuDZOEDbm9Tq3muM0NaR5XLRBA9kOyOY1DZ
         P/fVguRxvRGMnTdZ78FxpRn7eMDh2ZNY29xGlvokcnhF+kChif6/41pYOXnPQdtnutCs
         4PO0rUhlHInCOFOt5PMvHCpW7RRN3bnKoxSGm7JV36lEFaLWbrRthxtdK4E1Iaqr55tt
         MHgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ZXXesEDw;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QwwfbTWjeMnv2ELKiDqqO79E5XGT1l+nk3bXujRKqjE=;
        b=bD48KyfkpoeD6wuKlkNen7gMO3B5ptbORT3OdQbhDghzrBWhLIzSqlCfV6ZcG1htvD
         yxEaEwMr2dqXzZKwq5m4nzv7K8n4WmtFSe05hGBIuvabMPR5WafJ8bSt7ukttQSg/nDf
         hSw7znYLtcs2MJUvrfRzlnflk9ysXe9a0GlaGjioPBgNDhPslvcLpbxh3XfAHaKs92rl
         6ufLzqw6wgOh33CgR6MWecNI5g7wTwQu5/B0mYvzBpG0Vob+3L6I1Sa1KPdx6QKDqYi0
         9aWiUjqp1W1Wh0htN+m9zyt33gqdgu73h2VOlOR9jCT8MuTy75+2vXDS/qur9Zr/YrrG
         X/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QwwfbTWjeMnv2ELKiDqqO79E5XGT1l+nk3bXujRKqjE=;
        b=s014KdYgbIddRnDTVAm8Ox6o45kgQ9BOA0GxQskaiKkBieg4/ghxeA4BNiE/tXk3Av
         rs38p0PTErKgCO3L8bukDiHdVKATRpAAjaCGrtmBCdZDwvtAoXPbh7Ed27mnkHft7+cQ
         P7mRPcVbd1cys8wO1krF8er9kV3JbUnrrNRtnMZCJrjUQQ3kUYiQ3L8pEy20dWkfD1Ll
         /TN2JAUXxufCv+OhMa4lNutwtAcrIhEVtmTaWijNyiuRwejgm+2q224k78FhjDDoum8Z
         PXBoqmHLCm7PIF8vg9T5V7MnGC0uUh69el58kLCqWRMsupWp2NVy0SFH+dT/gP+F+Ig/
         DUMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub7Dg5Dzzpahb7I2idm5FEaF2bdkLGGN2YfIv2dMiT0Y/edzjVG
	RjqPj0zrBsK5U91DGJ0kPzY=
X-Google-Smtp-Source: APiQypJS8DOsqx7/ojIC2Kaaa+8NejQ/wuvXlFKIcSP4j40oX3E/jecJAgYkHyUmAipXNhg1uTDfnA==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr2111769wmg.143.1586472480035;
        Thu, 09 Apr 2020 15:48:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:968f:: with SMTP id y137ls5198282wmd.3.canary-gmail;
 Thu, 09 Apr 2020 15:47:59 -0700 (PDT)
X-Received: by 2002:a05:600c:210c:: with SMTP id u12mr2148377wml.135.1586472479362;
        Thu, 09 Apr 2020 15:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586472479; cv=none;
        d=google.com; s=arc-20160816;
        b=BahGD8hIwX8Y61EPRk4mvZKv5XfMynHJYy51LQ/liXi34QAqHlTXuiXFwvc2hNdS97
         3lyONjrYOdnNdlRAi7C00MphPJ3CYnoRZXh4iWAgQ4wRgzXqvowCUUzeY2xJXT7dl6r7
         p5jE7KDAi7/XmtVM/o9sJZDQZw4RYs+5YSnSHMauZqmasDuxevukUtEDTI2wHjsccJWc
         W8sGulJ4yfGYE+DR5XogcabGQZxxMD/dclt3xVZGWbdZRE4IYbm2CraIKewSdVHB6dvM
         Zp9X/aLLe6gXeITagrt/wUkFID9l+Q1afxwJNrfuLHzeDyKhoXERc5NObFZKCsnDVt4Q
         dYhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:date:from
         :dkim-signature;
        bh=8EU5jm6YEVZhSBdpV5aeMHD81RcqITcUlwp86MY6tcM=;
        b=C8xm6y3IP2FqBvk4wK9TB/PEkBLxpA5MtwLxQMx8xbT2JKRR75sbMp4pNOfCyB7fAJ
         zO8D5dNC1swXUtBwtcDhtgBj8tRKGLcwFEebnYRxHBRJzK/Z4HNfJPFcD4JXYhpMtd33
         V4IFlNxHTDWZv+K1TVMPiv6RJjVEcE1d3eAZ8HzPO3l7VtddkujGHhlN9QNyeeBHyHcT
         iVoB5p4Vw/TRfKmgvvLi0lMuZPOWwXjss5Q6WTymhwK711raFWon9k1taofYk7MZf8o+
         BU/QHHBGlE/SimkE/nCaczbjHD0PPvr7HQNsLJhBlCLdxET8ZgHG6Sskc3MvpEZbkZqB
         MZAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ZXXesEDw;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f129si17026wmf.2.2020.04.09.15.47.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 15:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id a201so276150wme.1
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 15:47:59 -0700 (PDT)
X-Received: by 2002:a7b:c002:: with SMTP id c2mr2024560wmb.123.1586472478779;
        Thu, 09 Apr 2020 15:47:58 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id m13sm231587wrx.40.2020.04.09.15.47.57
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 09 Apr 2020 15:47:58 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 9 Apr 2020 22:47:57 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1826683512.16916.1586472478110.JavaMail.javamailuser@localhost>
In-Reply-To: <1095674192.14752.1586292792903.JavaMail.javamailuser@localhost>
References: <1095674192.14752.1586292792903.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allmodconfig - Build # 84 - Fixed!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_16915_1135851689.1586472477555"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ZXXesEDw;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341
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

------=_Part_16915_1135851689.1586472477555
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-next-allyesconfig
 - tcwg_kernel/gnu-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig

Culprit:
<cut>
commit 3b0e542de7fb3f0563bdcfee3ddcf91316ee8110
Author: Michael S. Tsirkin <mst@redhat.com>

    virtio: stop using legacy struct vring in kernel
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="b2e2a818a01717ba15c74fd355f76822b81a95f6"

Results regressed to (for first_bad == 3b0e542de7fb3f0563bdcfee3ddcf91316ee8110)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
19956
# First few build errors in logs:
# 00:03:41 drivers/virtio/virtio_ring.c:870:16: error: implicit declaration of function 'vring_size' [-Werror,-Wimplicit-function-declaration]
# 00:03:41 drivers/virtio/virtio_ring.c:892:2: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:03:41 drivers/virtio/virtio_ring.c:2172:2: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:03:43 make[2]: *** [drivers/virtio/virtio_ring.o] Error 1
# 00:04:02 make[1]: *** [drivers/virtio] Error 2
# 00:05:44 drivers/misc/mic/vop/vop_main.c:286:2: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:05:44 drivers/misc/mic/vop/vop_main.c:323:13: error: implicit declaration of function 'vring_size' [-Werror,-Wimplicit-function-declaration]
# 00:05:46 drivers/misc/mic/vop/vop_vringh.c:299:24: error: implicit declaration of function 'vring_size' [-Werror,-Wimplicit-function-declaration]
# 00:05:46 drivers/misc/mic/vop/vop_vringh.c:324:3: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:05:46 make[4]: *** [drivers/misc/mic/vop/vop_vringh.o] Error 1

from (for last_good == 9af2d59997a8fd77516f78fb5c596fd5c8a20ea4)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27237
# linux build successful:
all
# linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/artifact/artifacts/build-3b0e542de7fb3f0563bdcfee3ddcf91316ee8110/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/artifact/artifacts/build-9af2d59997a8fd77516f78fb5c596fd5c8a20ea4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/

Reproduce builds:
<cut>
mkdir investigate-linux-3b0e542de7fb3f0563bdcfee3ddcf91316ee8110
cd investigate-linux-3b0e542de7fb3f0563bdcfee3ddcf91316ee8110

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 3b0e542de7fb3f0563bdcfee3ddcf91316ee8110
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 9af2d59997a8fd77516f78fb5c596fd5c8a20ea4
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/84/consoleText

Full commit:
<cut>
commit 3b0e542de7fb3f0563bdcfee3ddcf91316ee8110
Author: Michael S. Tsirkin <mst@redhat.com>
Date:   Mon Apr 6 11:21:39 2020 -0400

    virtio: stop using legacy struct vring in kernel
    
    struct vring (in the uapi directory) and supporting APIs are kept
    around to solely avoid breaking old userspace builds.
    It's not actually part of the UAPI - it was kept in the UAPI
    header by mistake, and using it in kernel isn't necessary
    and prevents us from making changes safely.
    In particular, the APIs actually assume the legacy layout.
    
    Add an internal kernel-only struct vring and
    switch everyone to use that.
    
    Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
    Reviewed-by: Stefan Hajnoczi <stefanha@redhat.com>
---
 drivers/block/virtio_blk.c       |  1 +
 include/linux/virtio.h           |  1 -
 include/linux/virtio_ring.h      | 10 ++++++++++
 include/linux/vringh.h           |  1 +
 include/uapi/linux/virtio_ring.h | 26 ++++++++++++++++----------
 5 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 0736248999b0d..dd5732dc4b077 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -15,6 +15,7 @@
 #include <linux/blk-mq.h>
 #include <linux/blk-mq-virtio.h>
 #include <linux/numa.h>
+#include <uapi/linux/virtio_ring.h>
 
 #define PART_BITS 4
 #define VQ_NAME_LEN 16
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index 15f906e4a748f..a493eac083933 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -9,7 +9,6 @@
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
 #include <linux/gfp.h>
-#include <linux/vringh.h>
 
 /**
  * virtqueue - a queue to register buffers for sending or receiving.
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index 3dc70adfe5f5e..11680e74761a6 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -60,6 +60,16 @@ static inline void virtio_store_mb(bool weak_barriers,
 struct virtio_device;
 struct virtqueue;
 
+struct vring {
+	unsigned int num;
+
+	struct vring_desc *desc;
+
+	struct vring_avail *avail;
+
+	struct vring_used *used;
+};
+
 /*
  * Creates a virtqueue and allocates the descriptor ring.  If
  * may_reduce_num is set, then this may allocate a smaller ring than
diff --git a/include/linux/vringh.h b/include/linux/vringh.h
index 9e2763d7c1591..d71b3710f58ef 100644
--- a/include/linux/vringh.h
+++ b/include/linux/vringh.h
@@ -11,6 +11,7 @@
 #ifndef _LINUX_VRINGH_H
 #define _LINUX_VRINGH_H
 #include <uapi/linux/virtio_ring.h>
+#include <linux/virtio_ring.h>
 #include <linux/virtio_byteorder.h>
 #include <linux/uio.h>
 #include <linux/slab.h>
diff --git a/include/uapi/linux/virtio_ring.h b/include/uapi/linux/virtio_ring.h
index 9223c3a5c46ae..8961a4adda5cb 100644
--- a/include/uapi/linux/virtio_ring.h
+++ b/include/uapi/linux/virtio_ring.h
@@ -118,16 +118,6 @@ struct vring_used {
 	struct vring_used_elem ring[];
 };
 
-struct vring {
-	unsigned int num;
-
-	struct vring_desc *desc;
-
-	struct vring_avail *avail;
-
-	struct vring_used *used;
-};
-
 /* Alignment requirements for vring elements.
  * When using pre-virtio 1.0 layout, these fall out naturally.
  */
@@ -166,6 +156,21 @@ struct vring {
 #define vring_used_event(vr) ((vr)->avail->ring[(vr)->num])
 #define vring_avail_event(vr) (*(__virtio16 *)&(vr)->used->ring[(vr)->num])
 
+#ifndef __KERNEL__
+/*
+ * The following definitions have been put in the UAPI header by mistake. We
+ * keep them around to avoid breaking old userspace builds.
+ */
+struct vring {
+	unsigned int num;
+
+	struct vring_desc *desc;
+
+	struct vring_avail *avail;
+
+	struct vring_used *used;
+};
+
 static inline void vring_init(struct vring *vr, unsigned int num, void *p,
 			      unsigned long align)
 {
@@ -182,6 +187,7 @@ static inline unsigned vring_size(unsigned int num, unsigned long align)
 		 + align - 1) & ~(align - 1))
 		+ sizeof(__virtio16) * 3 + sizeof(struct vring_used_elem) * num;
 }
+#endif
 
 #endif /* VIRTIO_RING_NO_LEGACY */
 
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1826683512.16916.1586472478110.JavaMail.javamailuser%40localhost.

------=_Part_16915_1135851689.1586472477555--
