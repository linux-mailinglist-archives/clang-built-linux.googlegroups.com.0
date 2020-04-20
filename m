Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZM2632AKGQE6NURVCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8A11B0822
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 13:54:13 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id y71sf4138180lff.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 04:54:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587383653; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8fZimMpytRn0YStdw45YB5a3vUJEBDmnkKRDjY19mQ1xVa8nhDl3EpY8CmLPIUwXX
         ZYIKLXYqv6ZNgOYlvRAjVSvCnZTXx5z775c/mVY1uYttEkjCGYban05nEJ5l0fl+Mmd5
         IOuSzdK5WSj5Ajz3UyhCLNnruCcbTVVLOmrtut5mMnF4kUPegQAzIHffmK3RVGDO6hhq
         wAXAousVkNAqXJ7CjovkSOW/TcENn9RqzKOlf8N/pR1UIeGvf70HXL8a3qOvl7fiCwt6
         SRcr6gNrYciMIfrVMFg9s42vH+8OCEYw5RsbqrwLQdbCORkiflFbYT42IrcEmd+J8RX+
         p6pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Om0kx1MrknAPl40bkoEQfEIcfJPrEPGfbiribzhtRRo=;
        b=PKCtuiDahriGrGALnUOdOkbpJGd3wSBTOYHJxrEGzZRQAVaoZ554GeORa36uqVT/sH
         HJVAwTO4S1MC6vIYvZue44XBhWE4Z2WsiU0Ik39kEMYFL8R39a/+iSDCH44cKHbc2aVe
         iRoJ473/FtFNJR0XN4saXBmnKgwvYz3UbB5aSuJYRyPLrLNQzuu8XE3zB4eohZG15l0O
         aubzSFG16DWk7aPPQY90WsZN8LhUZALNdxwNZdX+w2ETSTmVblN+8q8zaO5i7Kk2b1XB
         6NE0SGh3tvzP3exNhbQPjZZMYVNv3iZE5N4oDztAB6ysPAAEcum4wW6qop0vobqT0R+P
         C/vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xGgvAele;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Om0kx1MrknAPl40bkoEQfEIcfJPrEPGfbiribzhtRRo=;
        b=bIQwgObtlgu+1FF6EXj2gopY1EsdFn+kuUddLGWHkS1/JCiLkh9GxZiPlGOhRNMBhZ
         uew0/+IpwqTPNYpF52ukZFk0oHSHlW1N2mpaJqAab2GRtdauiPJS3HIck7lIKnn9+zHk
         zWPW+FBk1hunznEYSrITN0je0XrTHmIAoJ8Dhe9fbm3PyqOhNJQWyYziGyps+X3xUCrt
         dIdfLbyG7Q/4XO6th3FPkqAJM4lidWlqo0AtjwMxffMJGFtxb0bpyglGvhCgAfy4I6g+
         ohlvEptkRph4J4PUInakXz+VF6QctcBeMtc8wfnB+qhNS/hdgTXxNbON24pKIbgMoOiD
         8L5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Om0kx1MrknAPl40bkoEQfEIcfJPrEPGfbiribzhtRRo=;
        b=f6UgduO7yx8KWfqvOaz8sdDoMOziIPzZX89T7MFM/ISrhuJwUha6wzHjLb2hV7uzyO
         UmMNlasDH9mU9t+fN1ubGU1TggNvJSA9M9T8XAZdx0tA2wkmQqaSSLWuwx3SyqL1DJMR
         J56x+tTU/lqy7EA3iKYVnV6izVFVE7at3LYGNUX3ThAXr+rEeJTgEoy9wzUSjawRhmWh
         M0+RpAmkyTpG6Z9yctZqASkIAHGm8D6YhvHktbk1aMRBdZ5+Z4Ga/YdqKugGxNmCLAGW
         iTVtXxF643MRb2c8zowlMQDVRRRO9/HzqcUOPFPyqvKB24kRV/YqRuM7jn9MwBOWJmta
         7siw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuboVYJdsMbQdKtR/MhJmXYwEyesBfpNtH5hxCiWSaqgLkVqWpBr
	xUP0OvCjVVwy3WKh3jnRAMA=
X-Google-Smtp-Source: APiQypKG1oUv0FT/bgIVBADFSXJp6JOmUAkKz6VyVyHKS1xE0BKEX0svf4MJQav6WsekVTNx3KUIUA==
X-Received: by 2002:ac2:4304:: with SMTP id l4mr10270493lfh.87.1587383653227;
        Mon, 20 Apr 2020 04:54:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2002:: with SMTP id s2ls1627873ljo.3.gmail; Mon, 20
 Apr 2020 04:54:12 -0700 (PDT)
X-Received: by 2002:a2e:9d8c:: with SMTP id c12mr4419535ljj.67.1587383652764;
        Mon, 20 Apr 2020 04:54:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587383652; cv=none;
        d=google.com; s=arc-20160816;
        b=hSUgcIIKdANxvbCoZn2qRLjUD/adwYrqAUaf6WYVROvSbsJhvf83IJ6UZbd3V94zru
         qU/Cj8cKmQA58PsdEqunGlIy+jY+8WVfPLCDe3MU393ETk2wLEEppYaKsKavBgoFBZjF
         22ALu/p26pP35ljw5YKRD99OhyjRZRN/4ZKwrUQM2V3RlS+69iUULyApWOy4iQxVSckN
         HWlgjnAoO1pFojmsTZnPJHjLMBmvmjblKvY+vPah0wW2dvuBacIjL2785l540bufZU0U
         NxipLFIJBqkKK2V4U0Xg3Z458zCZdyopFKVKNg5QG2fEWxly56Sa6dJ9oznwX8E3lwiI
         emMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=uf4ZhGPeRZUnuT+JF8XRSiPJzFL777W8l5dXcHM2akY=;
        b=IJjxdhRFlJrC4Vakl5AsDKTsYz8y6Pt10b+b2czgYYPoUI8azUroJ/hX0r7Ci7wgYS
         Kpt7x8Q+EXDJLXaOhvgXMlQOqYxERUzXf+RIdGrpgg1uzpFS0hk2AV6ih3unUw1NEaaN
         eNwqOAPZQt3dwFd/aeF4QmE3uqcF/G1nehJbKIq5bIWxfPszJf52Dg3ft3BrrbpLhFC6
         HO1ASNo4FVEngur0CAVB4UaH5sewVOCIMv/r79A43JsKIytK8a95Po3ZqZfvDQ4W574a
         bCGHzEEhpui0E4VVwD2B9jWInMY2zU+eAViOPzS7hm7kCTxmd5EzthTlyNMsov5rtpgj
         MCwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xGgvAele;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f25si69424lfc.3.2020.04.20.04.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 04:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id d17so11732195wrg.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 04:54:12 -0700 (PDT)
X-Received: by 2002:a5d:5082:: with SMTP id a2mr16300576wrt.224.1587383652015;
        Mon, 20 Apr 2020 04:54:12 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 36sm925669wrc.35.2020.04.20.04.54.10
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 20 Apr 2020 04:54:11 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 20 Apr 2020 11:54:10 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <977809855.18085.1587383651353.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allnoconfig - Build # 9 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18084_1304024539.1587383650716"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xGgvAele;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444
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

------=_Part_18084_1304024539.1587383650716
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-release-arm-next-allnoconfig
 - tcwg_kernel/llvm-master-arm-next-allnoconfig

Culprit:
<cut>
commit 6f461d34ba8211c36d4c27343e86e4aea8fbc683
Author: Christoph Hellwig <hch@lst.de>

    kernel: move use_mm/unuse_mm to kthread.c
</cut>

Results regressed to (for first_bad == 6f461d34ba8211c36d4c27343e86e4aea8fbc683)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
397
# First few build errors in logs:
# 00:00:49 mm/nommu.c:158:25: error: use of undeclared identifier 'flags'
# 00:00:49 mm/nommu.c:164:25: error: use of undeclared identifier 'flags'
# 00:00:49 make[1]: *** [mm/nommu.o] Error 1
# 00:00:53 make: *** [mm] Error 2

from (for last_good == 8f8ad47e383e6e6d8e7e855d140d8214db37eed3)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
398

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/artifact/artifacts/build-8f8ad47e383e6e6d8e7e855d140d8214db37eed3/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/artifact/artifacts/build-6f461d34ba8211c36d4c27343e86e4aea8fbc683/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="be950c0b6fb2e9774eb35feded1c407e315ef53b"

Reproduce builds:
<cut>
mkdir investigate-linux-6f461d34ba8211c36d4c27343e86e4aea8fbc683
cd investigate-linux-6f461d34ba8211c36d4c27343e86e4aea8fbc683

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 6f461d34ba8211c36d4c27343e86e4aea8fbc683
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 8f8ad47e383e6e6d8e7e855d140d8214db37eed3
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allnoconfig/9/consoleText

Full commit:
<cut>
commit 6f461d34ba8211c36d4c27343e86e4aea8fbc683
Author: Christoph Hellwig <hch@lst.de>
Date:   Sat Apr 18 16:04:01 2020 +1000

    kernel: move use_mm/unuse_mm to kthread.c
    
    Patch series "improve use_mm / unuse_mm", v2.
    
    This series improves the use_mm / unuse_mm interface by better documenting
    the assumptions, and my taking the set_fs manipulations spread over the
    callers into the core API.
    
    This patch (of 3):
    
    Use the proper API instead.
    
    Link: http://lkml.kernel.org/r/20200404094101.672954-1-hch@lst.de
    
    These helpers are only for use with kernel threads, and I will tie them
    more into the kthread infrastructure going forward.  Also move the
    prototypes to kthread.h - mmu_context.h was a little weird to start with
    as it otherwise contains very low-level MM bits.
    
    Link: http://lkml.kernel.org/r/20200404094101.672954-1-hch@lst.de
    Link: http://lkml.kernel.org/r/20200416053158.586887-1-hch@lst.de
    Link: http://lkml.kernel.org/r/20200404094101.672954-5-hch@lst.de
    Signed-off-by: Christoph Hellwig <hch@lst.de>
    Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
    Reviewed-by: Jens Axboe <axboe@kernel.dk>
    Tested-by: Jens Axboe <axboe@kernel.dk>
    Cc: Alex Deucher <alexander.deucher@amd.com>
    Cc: Al Viro <viro@zeniv.linux.org.uk>
    Cc: Felipe Balbi <balbi@kernel.org>
    Cc: Jason Wang <jasowang@redhat.com>
    Cc: "Michael S. Tsirkin" <mst@redhat.com>
    Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
    Cc: Zhi Wang <zhi.a.wang@intel.com>
    Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h         |  1 +
 .../gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c    |  1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v10.c |  1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v7.c  |  2 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v8.c  |  2 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c  |  2 -
 drivers/gpu/drm/i915/gvt/kvmgt.c                   |  2 +-
 drivers/usb/gadget/function/f_fs.c                 |  2 +-
 drivers/usb/gadget/legacy/inode.c                  |  2 +-
 drivers/vhost/vhost.c                              |  1 -
 fs/aio.c                                           |  1 -
 fs/io-wq.c                                         |  1 -
 fs/io_uring.c                                      |  1 -
 include/linux/kthread.h                            |  5 ++
 include/linux/mmu_context.h                        |  5 --
 kernel/kthread.c                                   | 56 +++++++++++++++++++
 mm/Makefile                                        |  2 +-
 mm/mmu_context.c                                   | 64 ----------------------
 18 files changed, 66 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
index 4db143c19dcc..bce5e93fefc8 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
@@ -27,6 +27,7 @@
 
 #include <linux/types.h>
 #include <linux/mm.h>
+#include <linux/kthread.h>
 #include <linux/workqueue.h>
 #include <kgd_kfd_interface.h>
 #include <drm/ttm/ttm_execbuf_util.h>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c
index 6529caca88fe..35d4a5ab0228 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c
@@ -22,7 +22,6 @@
 #include <linux/module.h>
 #include <linux/fdtable.h>
 #include <linux/uaccess.h>
-#include <linux/mmu_context.h>
 #include <linux/firmware.h>
 #include "amdgpu.h"
 #include "amdgpu_amdkfd.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v10.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v10.c
index 691c89705bcd..bf927f432506 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v10.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v10.c
@@ -19,7 +19,6 @@
  * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  * OTHER DEALINGS IN THE SOFTWARE.
  */
-#include <linux/mmu_context.h>
 #include "amdgpu.h"
 #include "amdgpu_amdkfd.h"
 #include "gc/gc_10_1_0_offset.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v7.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v7.c
index 0b7e78748540..7d01420c0c85 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v7.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v7.c
@@ -20,8 +20,6 @@
  * OTHER DEALINGS IN THE SOFTWARE.
  */
 
-#include <linux/mmu_context.h>
-
 #include "amdgpu.h"
 #include "amdgpu_amdkfd.h"
 #include "cikd.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v8.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v8.c
index ccd635b812b5..635cd1a26bed 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v8.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v8.c
@@ -20,8 +20,6 @@
  * OTHER DEALINGS IN THE SOFTWARE.
  */
 
-#include <linux/mmu_context.h>
-
 #include "amdgpu.h"
 #include "amdgpu_amdkfd.h"
 #include "gfx_v8_0.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
index df841c2ac5e7..c7fd0c47b254 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
@@ -19,8 +19,6 @@
  * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  * OTHER DEALINGS IN THE SOFTWARE.
  */
-#include <linux/mmu_context.h>
-
 #include "amdgpu.h"
 #include "amdgpu_amdkfd.h"
 #include "gc/gc_9_0_offset.h"
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index eee530453aa6..ad8a9df49f29 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -31,7 +31,7 @@
 #include <linux/init.h>
 #include <linux/device.h>
 #include <linux/mm.h>
-#include <linux/mmu_context.h>
+#include <linux/kthread.h>
 #include <linux/sched/mm.h>
 #include <linux/types.h>
 #include <linux/list.h>
diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index 10f01f974f67..34b6fc93aa23 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -32,7 +32,7 @@
 #include <linux/usb/functionfs.h>
 
 #include <linux/aio.h>
-#include <linux/mmu_context.h>
+#include <linux/kthread.h>
 #include <linux/poll.h>
 #include <linux/eventfd.h>
 
diff --git a/drivers/usb/gadget/legacy/inode.c b/drivers/usb/gadget/legacy/inode.c
index 3afddd3bea6e..20fba95ed0a6 100644
--- a/drivers/usb/gadget/legacy/inode.c
+++ b/drivers/usb/gadget/legacy/inode.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/poll.h>
-#include <linux/mmu_context.h>
+#include <linux/kthread.h>
 #include <linux/aio.h>
 #include <linux/uio.h>
 #include <linux/refcount.h>
diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index d450e16c5c25..ead1deed80d3 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -14,7 +14,6 @@
 #include <linux/vhost.h>
 #include <linux/uio.h>
 #include <linux/mm.h>
-#include <linux/mmu_context.h>
 #include <linux/miscdevice.h>
 #include <linux/mutex.h>
 #include <linux/poll.h>
diff --git a/fs/aio.c b/fs/aio.c
index 94f2b9256c0c..022dbc1d5ec6 100644
--- a/fs/aio.c
+++ b/fs/aio.c
@@ -27,7 +27,6 @@
 #include <linux/file.h>
 #include <linux/mm.h>
 #include <linux/mman.h>
-#include <linux/mmu_context.h>
 #include <linux/percpu.h>
 #include <linux/slab.h>
 #include <linux/timer.h>
diff --git a/fs/io-wq.c b/fs/io-wq.c
index 4023c9846860..5f590bf27bff 100644
--- a/fs/io-wq.c
+++ b/fs/io-wq.c
@@ -10,7 +10,6 @@
 #include <linux/errno.h>
 #include <linux/sched/signal.h>
 #include <linux/mm.h>
-#include <linux/mmu_context.h>
 #include <linux/sched/mm.h>
 #include <linux/percpu.h>
 #include <linux/slab.h>
diff --git a/fs/io_uring.c b/fs/io_uring.c
index 35bb60955b4d..bab196c21c6e 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -55,7 +55,6 @@
 #include <linux/fdtable.h>
 #include <linux/mm.h>
 #include <linux/mman.h>
-#include <linux/mmu_context.h>
 #include <linux/percpu.h>
 #include <linux/slab.h>
 #include <linux/kthread.h>
diff --git a/include/linux/kthread.h b/include/linux/kthread.h
index 8bbcaad7ef0f..c2d40c9672d6 100644
--- a/include/linux/kthread.h
+++ b/include/linux/kthread.h
@@ -5,6 +5,8 @@
 #include <linux/err.h>
 #include <linux/sched.h>
 
+struct mm_struct;
+
 __printf(4, 5)
 struct task_struct *kthread_create_on_node(int (*threadfn)(void *data),
 					   void *data,
@@ -198,6 +200,9 @@ bool kthread_cancel_delayed_work_sync(struct kthread_delayed_work *work);
 
 void kthread_destroy_worker(struct kthread_worker *worker);
 
+void use_mm(struct mm_struct *mm);
+void unuse_mm(struct mm_struct *mm);
+
 struct cgroup_subsys_state;
 
 #ifdef CONFIG_BLK_CGROUP
diff --git a/include/linux/mmu_context.h b/include/linux/mmu_context.h
index d9a543a9e1cc..c51a84132d7c 100644
--- a/include/linux/mmu_context.h
+++ b/include/linux/mmu_context.h
@@ -4,11 +4,6 @@
 
 #include <asm/mmu_context.h>
 
-struct mm_struct;
-
-void use_mm(struct mm_struct *mm);
-void unuse_mm(struct mm_struct *mm);
-
 /* Architectures that care about IRQ state in switch_mm can override this. */
 #ifndef switch_mm_irqs_off
 # define switch_mm_irqs_off switch_mm
diff --git a/kernel/kthread.c b/kernel/kthread.c
index bfbfa481be3a..ce4610316377 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -1,13 +1,17 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Kernel thread helper functions.
  *   Copyright (C) 2004 IBM Corporation, Rusty Russell.
+ *   Copyright (C) 2009 Red Hat, Inc.
  *
  * Creation is done via kthreadd, so that we get a clean environment
  * even if we're invoked from userspace (think modprobe, hotplug cpu,
  * etc.).
  */
 #include <uapi/linux/sched/types.h>
+#include <linux/mm.h>
+#include <linux/mmu_context.h>
 #include <linux/sched.h>
+#include <linux/sched/mm.h>
 #include <linux/sched/task.h>
 #include <linux/kthread.h>
 #include <linux/completion.h>
@@ -25,6 +29,7 @@
 #include <linux/numa.h>
 #include <trace/events/sched.h>
 
+
 static DEFINE_SPINLOCK(kthread_create_lock);
 static LIST_HEAD(kthread_create_list);
 struct task_struct *kthreadd_task;
@@ -1203,6 +1208,57 @@ void kthread_destroy_worker(struct kthread_worker *worker)
 }
 EXPORT_SYMBOL(kthread_destroy_worker);
 
+/*
+ * use_mm
+ *	Makes the calling kernel thread take on the specified
+ *	mm context.
+ *	(Note: this routine is intended to be called only
+ *	from a kernel thread context)
+ */
+void use_mm(struct mm_struct *mm)
+{
+	struct mm_struct *active_mm;
+	struct task_struct *tsk = current;
+
+	task_lock(tsk);
+	active_mm = tsk->active_mm;
+	if (active_mm != mm) {
+		mmgrab(mm);
+		tsk->active_mm = mm;
+	}
+	tsk->mm = mm;
+	switch_mm(active_mm, mm, tsk);
+	task_unlock(tsk);
+#ifdef finish_arch_post_lock_switch
+	finish_arch_post_lock_switch();
+#endif
+
+	if (active_mm != mm)
+		mmdrop(active_mm);
+}
+EXPORT_SYMBOL_GPL(use_mm);
+
+/*
+ * unuse_mm
+ *	Reverses the effect of use_mm, i.e. releases the
+ *	specified mm context which was earlier taken on
+ *	by the calling kernel thread
+ *	(Note: this routine is intended to be called only
+ *	from a kernel thread context)
+ */
+void unuse_mm(struct mm_struct *mm)
+{
+	struct task_struct *tsk = current;
+
+	task_lock(tsk);
+	sync_mm_rss(mm);
+	tsk->mm = NULL;
+	/* active_mm is still 'mm' */
+	enter_lazy_tlb(mm, tsk);
+	task_unlock(tsk);
+}
+EXPORT_SYMBOL_GPL(unuse_mm);
+
 #ifdef CONFIG_BLK_CGROUP
 /**
  * kthread_associate_blkcg - associate blkcg to current kthread
diff --git a/mm/Makefile b/mm/Makefile
index fa91e963c2f9..6e9d46b2efc9 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -49,7 +49,7 @@ obj-y			:= filemap.o mempool.o oom_kill.o fadvise.o \
 			   maccess.o page-writeback.o \
 			   readahead.o swap.o truncate.o vmscan.o shmem.o \
 			   util.o mmzone.o vmstat.o backing-dev.o \
-			   mm_init.o mmu_context.o percpu.o slab_common.o \
+			   mm_init.o percpu.o slab_common.o \
 			   compaction.o vmacache.o \
 			   interval_tree.o list_lru.o workingset.o \
 			   debug.o gup.o $(mmu-y)
diff --git a/mm/mmu_context.c b/mm/mmu_context.c
deleted file mode 100644
index 3e612ae748e9..000000000000
--- a/mm/mmu_context.c
+++ /dev/null
@@ -1,64 +0,0 @@
-/* Copyright (C) 2009 Red Hat, Inc.
- *
- * See ../COPYING for licensing terms.
- */
-
-#include <linux/mm.h>
-#include <linux/sched.h>
-#include <linux/sched/mm.h>
-#include <linux/sched/task.h>
-#include <linux/mmu_context.h>
-#include <linux/export.h>
-
-#include <asm/mmu_context.h>
-
-/*
- * use_mm
- *	Makes the calling kernel thread take on the specified
- *	mm context.
- *	(Note: this routine is intended to be called only
- *	from a kernel thread context)
- */
-void use_mm(struct mm_struct *mm)
-{
-	struct mm_struct *active_mm;
-	struct task_struct *tsk = current;
-
-	task_lock(tsk);
-	active_mm = tsk->active_mm;
-	if (active_mm != mm) {
-		mmgrab(mm);
-		tsk->active_mm = mm;
-	}
-	tsk->mm = mm;
-	switch_mm(active_mm, mm, tsk);
-	task_unlock(tsk);
-#ifdef finish_arch_post_lock_switch
-	finish_arch_post_lock_switch();
-#endif
-
-	if (active_mm != mm)
-		mmdrop(active_mm);
-}
-EXPORT_SYMBOL_GPL(use_mm);
-
-/*
- * unuse_mm
- *	Reverses the effect of use_mm, i.e. releases the
- *	specified mm context which was earlier taken on
- *	by the calling kernel thread
- *	(Note: this routine is intended to be called only
- *	from a kernel thread context)
- */
-void unuse_mm(struct mm_struct *mm)
-{
-	struct task_struct *tsk = current;
-
-	task_lock(tsk);
-	sync_mm_rss(mm);
-	tsk->mm = NULL;
-	/* active_mm is still 'mm' */
-	enter_lazy_tlb(mm, tsk);
-	task_unlock(tsk);
-}
-EXPORT_SYMBOL_GPL(unuse_mm);
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/977809855.18085.1587383651353.JavaMail.javamailuser%40localhost.

------=_Part_18084_1304024539.1587383650716--
