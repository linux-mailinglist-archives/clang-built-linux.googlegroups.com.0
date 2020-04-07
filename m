Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBT4WWL2AKGQE6UNYLWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D641A0EFC
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 16:16:48 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id e24sf3002113eds.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 07:16:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586269007; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tsd+JyCNfdJgzm9z8jQ1cIr7SiXSJ2TBGEiT2b3DL1Yd7X2zuEZbcGA39V9AI0HQtK
         5aeOOFpjyDPc+dhWc95RbcpKKqj3JXX2pT1v+E18QxZYCfvkBuopxqL0hY/I/W8yv/bB
         Dc4JqPiNwD2Pt2+9TiZspKFEM3WmJWZzIxoGVydC8s4zL9dLjc1SqLswIPlrVu6jZIkF
         Gwou4bVo/KyFaA+bGjP4KQ3+FGCUwSinO5gaGlOwCRCVkcpm8xI29xm+ndEACb6t1qO2
         RCvwYbM/Fn68qdJl/p0PsXIQgtvII/ozaPN6QHwCsON0dwcdtyQ1/W2hFNg2GXdNjtda
         Juow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=/VlcDLqdyj4woebwMdWgok8jBdDsN3A3eoohrnEgFeo=;
        b=c8ZkKdgNDAScT4p95ZTY0XNxSU1HhCbnz6Syq/62bd++K3jh5wXjC1nB5guhnG7pyN
         nw3XlywD90ENCTNS9x6dLwQGgwCxHx2t8X5YiU2bMAU0jVxiC3etA8Xhp7YuFlgw2SJv
         EJca6PfPju1OIpdy5gKkBJihvJy3S1TiskPl4mqIYcAZoS5n9Gtcjm/muTZ6uGHJGOno
         ZMx5vGSv0mX+/QqZRp80akEZwPVwR0/ZQqqD6dAp+qtFQLuBFuFiXHzR4MqUzP3FU7cA
         g/bQ078WDVM9Vq7tdXsc7m5T1bn8Y3mUgB3wi0WMdE/W2JBInJrNtYFEAcAsbJGWOvBM
         meqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=b0gPQMpG;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/VlcDLqdyj4woebwMdWgok8jBdDsN3A3eoohrnEgFeo=;
        b=i6LC4IKCvwfO5NqkVJTWRaOnuNeCYPvCDrDQzMhWaKGorXWUE1bx4egKXr7gs1qjyd
         T3Khok04vCJYfFLq1zdyXk8pbGrvdIdVMlwi4yPL4u3UAACH5r2mgKVzbGmuemnYYNa2
         O+S04u7YLxouRY58oZfd4OSyexSazCVVCOJEyb+ezZmpZrTpqASWOaGSTPfNfc0OR4gt
         +8a4pw11Mi32bucQnyhWBd6t6oiWTlg6/8D60eiyXIIEwf6YK9gduYdAfeUda7LWYIDZ
         DR4KYuUqNwi4a95zWboWhIDDxvOGOGob2AF3jAnjsnCl5n1mQNB+PnCCQqir553Ga6RS
         cWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/VlcDLqdyj4woebwMdWgok8jBdDsN3A3eoohrnEgFeo=;
        b=P+hkGXKs+85cV56qxdhhFpqyGU1nAzFmTKtpIxLLv9eol9qL9h0W4uvs9MSSGOi3Ju
         nHuOSMCXP6KrBpAgAfz/IV0YKKWggHRseEungYBDNQM9g4kz1SxLe/XNadmuwUFHeT0Z
         wcrJkWqbLcWmFUtWZmm7juDa+iDOWQE+SkqUlYzdEPDAnIlZ+YEC7URqvAM3+oPSe6Cj
         1+xQLVCrAJNSQFz5Nu8LVEyLg0/UruRNlLLkB9EAwIg/DH/1zzWdapl6AelMoj0XxLjg
         KMb8FxMf/mZUK6ZvKHpOGLFPS7OnPr78GQwNZf8e4jVrPXRHRcrgQaZHIils0Rl5yh6T
         BJeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubDoFdU4aXUPbo4yGln1j6jAkvUz8ZqjzW386YuBRvbfjOruI7I
	Db5egpJtd/QZW7/O0k5PNgw=
X-Google-Smtp-Source: APiQypIQfcecBNtluItNVSTFT/OMJFOI7T5JuXkt923Sh15qrIOEspW+EHp9j+vjUKFrrN5H+t+R+Q==
X-Received: by 2002:a50:cf4d:: with SMTP id d13mr2261076edk.175.1586269007803;
        Tue, 07 Apr 2020 07:16:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a2d2:: with SMTP id by18ls2261272ejb.2.gmail; Tue,
 07 Apr 2020 07:16:47 -0700 (PDT)
X-Received: by 2002:a17:906:33d1:: with SMTP id w17mr2313453eja.147.1586269007150;
        Tue, 07 Apr 2020 07:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586269007; cv=none;
        d=google.com; s=arc-20160816;
        b=DSsJmU4oDnIS6JtzyMWR8/H1Vcvyd3R7eWRbnP+16GSmT3gU3KeDHh8Xel0WFqM6aO
         gCCGHy/S4Tk3mUtTY1Oy4IJF2WW6GTGGrdcotPfe2xbo9w8TGbR1PdEFbymoyJndDxxG
         9GcM8YnIesvWjhj2R0G09l4Z2C2rrNpz8WW624B6LISvF+9xnx6lrlKDQW9TlQNuKEtO
         YyfaNHXY4jiDDjef6/Vd7fU82bFxiwZH0JnuoHgBKi4SDoDjIcd1H08ayHXTiMrqXSgs
         XjAhsyd5XvouGZFr5b5tj9MNRnWnKlikWrE35JRi6wbiBRuc1R7AVNh2LpPzDbl7A0pY
         +Oww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=mFi7NYUnzi1np+tzFw/YykSTzUcpickEw5jytC3VhrA=;
        b=Zt8AB+J2awjK3qm3/My8SpeQUmBg6U0l4mY3xJ3W+9cD5NvcLx1ZmL1AxEJ34pb9oI
         C5t2nICWapaKrBI3H6RHRhXzjWngfYYDDergl/iipEY/DjRPihGgcrmn1KWHF1RmSeYL
         kBkOqFfbENMlfUD4xD7Fykf7DrWZiIv0aJ7dbzLY0gXaYZ+AFW4SbmPC9oRdWO34hKry
         1OtJcqvG0SUcykHb+dp8Hq7PavGFSS+Hm0Ao2tfXgPowGaZqRbW3405MNzV1eTbma1N6
         aZFCms1BW+WlwWBLLXKweNpThg5soGtxzZkGTLFMSYtLWcLDGGZbdjAmkXI9B6jITupK
         UsaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=b0gPQMpG;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w13si136506edv.2.2020.04.07.07.16.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 07:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id v8so122001wma.0
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 07:16:47 -0700 (PDT)
X-Received: by 2002:a1c:2b06:: with SMTP id r6mr2745923wmr.25.1586269006737;
        Tue, 07 Apr 2020 07:16:46 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b11sm31028866wrq.26.2020.04.07.07.16.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Apr 2020 07:16:45 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 7 Apr 2020 14:16:45 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <2122068835.14703.1586269005935.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 64 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_14702_1445549942.1586269005408"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=b0gPQMpG;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342
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

------=_Part_14702_1445549942.1586269005408
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-next-allyesconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 898952f9597ed1eebebf4b7a8d055be4f4158d1c
Author: Michael S. Tsirkin <mst@redhat.com>

    virtio: stop using legacy struct vring in kernel
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="57021046c3316f8a6970506b09ec83337a4f5304"

Results regressed to (for first_bad == 898952f9597ed1eebebf4b7a8d055be4f4158d1c)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
20277
# First few build errors in logs:
# 00:02:36 drivers/virtio/virtio_ring.c:870:16: error: implicit declaration of function 'vring_size' [-Werror,-Wimplicit-function-declaration]
# 00:02:36 drivers/virtio/virtio_ring.c:892:2: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:02:36 drivers/virtio/virtio_ring.c:2172:2: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:02:36 make[2]: *** [drivers/virtio/virtio_ring.o] Error 1
# 00:02:45 make[1]: *** [drivers/virtio] Error 2
# 00:03:12 drivers/misc/mic/vop/vop_main.c:286:2: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]
# 00:03:12 drivers/misc/mic/vop/vop_main.c:323:13: error: implicit declaration of function 'vring_size' [-Werror,-Wimplicit-function-declaration]
# 00:03:12 make[4]: *** [drivers/misc/mic/vop/vop_main.o] Error 1
# 00:03:13 drivers/misc/mic/vop/vop_vringh.c:299:24: error: implicit declaration of function 'vring_size' [-Werror,-Wimplicit-function-declaration]
# 00:03:13 drivers/misc/mic/vop/vop_vringh.c:324:3: error: implicit declaration of function 'vring_init' [-Werror,-Wimplicit-function-declaration]

from (for last_good == 9c14b8345218f28c04f4cd1f7e9fa1893e82ff03)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27738
# linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/artifact/artifacts/build-898952f9597ed1eebebf4b7a8d055be4f4158d1c/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/artifact/artifacts/build-9c14b8345218f28c04f4cd1f7e9fa1893e82ff03/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/

Reproduce builds:
<cut>
mkdir investigate-linux-898952f9597ed1eebebf4b7a8d055be4f4158d1c
cd investigate-linux-898952f9597ed1eebebf4b7a8d055be4f4158d1c

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 898952f9597ed1eebebf4b7a8d055be4f4158d1c
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 9c14b8345218f28c04f4cd1f7e9fa1893e82ff03
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/64/consoleText

Full commit:
<cut>
commit 898952f9597ed1eebebf4b7a8d055be4f4158d1c
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
---
 drivers/block/virtio_blk.c       |  1 +
 include/linux/virtio.h           |  1 -
 include/linux/virtio_ring.h      | 10 ++++++++++
 include/linux/vringh.h           |  1 +
 include/uapi/linux/virtio_ring.h | 26 ++++++++++++++++----------
 5 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 0736248999b0..dd5732dc4b07 100644
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
index 15f906e4a748..a493eac08393 100644
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
index 3dc70adfe5f5..11680e74761a 100644
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
index 9e2763d7c159..d71b3710f58e 100644
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
index 9223c3a5c46a..8961a4adda5c 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2122068835.14703.1586269005935.JavaMail.javamailuser%40localhost.

------=_Part_14702_1445549942.1586269005408--
