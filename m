Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZX6672AKGQEV2I7VOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6141B1676
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 22:00:39 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id c196sf360498wmd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 13:00:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587412839; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1LQf2dbZT2X7/RBShl6ZYgslAEMNBZ0N+AF9oUZ7DhgQGFynFQVmA3D4RYdL1ehYu
         O1lt17fqYCV0ccGmn6ijBSACltCHVADaPeUEGYm5M6cJoNE2Ki4razMnym1Yn81I2zVY
         ILJ33hU82jcVkSSXeA309Uc2MO952AGK6M7J4jWAe/vUBA0lGtViyoIyhAr5uxPWYQz8
         L/NcTdSH3HPikrigXJVpWWo6vlgw1NcKiXDpjvy8jn/H7UprZgmcArZHy23fv3nOKU+P
         Ex/0wEYDOQYO+RP7V16nKDE3gZu/IbqIIVGzjAGXok5/6JLFemTLk0WO/CeHY0bkqL4E
         LzdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Lk/pe2ZtIu6mqUiBBp14hhc4z6NvqS0CGL+msyi3IzY=;
        b=j73XEffmwPpyot7S0GUPIHn2yKR0ABa06fge7cwb2JH7YAugnIxDR8jinBD9gDh4LU
         WH+aAl5ffVdt0S16dbiqJX/3lHRcQclYZXZbtB+IOA0idb/CbZgST0XnbgfgD86haBsV
         IqHBVQgsueHtMpn41sEJBMO6w6FLPRVOGufdqgXYJsNhCH+TEEPu8BKa7BuYcOgWACoH
         lt/UwrmUImrCMAU/STdnOGVJdJTrUzwbM7BmRwF68+RUj1Tiv9I4Oi9vhk92C+Fuubq5
         n3eTOsOoGXtDulFDiP3zP/X/nTirBN7KFznJvswrD+Mk2TSDcEmRBdKhDuor4H4bGkCJ
         RiiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=l6TH7w6C;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lk/pe2ZtIu6mqUiBBp14hhc4z6NvqS0CGL+msyi3IzY=;
        b=BplwcKFncsIpeMYXPGHGC7JT2fAwgMEU56KRRTJG2ERAeaEG1KYWVqL1lqy/rpmeSL
         NlEIH6REo1U7ZsDequwsU12JsTNUtU9pvRYgnmOM/96jLYS4BBOt08wv8Lb1aX8IRKF+
         i3Bcv/YffhE5GAABCqmoUufXIhik5CPmLaIiBCePW+luHqPXwh3DfKWt4qksWTwxwqFR
         s5x1n/X3Fvcx8j+8iOT35kDHHK7ackB9+LBG9xCpvmR7YPEjSbIUMnOt9GADEi2Vv5qW
         BcqkcBuriY+/BCgdFJXKCTJCLSGTVIDyMqm68JoLHFOhKgg/IRhyZc21XaPpyBrnu0nq
         clbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lk/pe2ZtIu6mqUiBBp14hhc4z6NvqS0CGL+msyi3IzY=;
        b=A5EmRkknC5uQgUF/iDuds8xIkSelSjUR8zJHI84o6M9MGExremhoRmfcXV7MwLJQ41
         msn6RiLRzyiY02fNNJwLP3RmVcDbooe44d2EcbwtIPYPy76EAt430Bnh3WrTR151tQ6M
         7WYuAY60EkYXHyvYu2loCF8xEcoEUzeGPBI7z2PkFNMb4V+iJSEjfJ3ofnxpTL/R5guM
         Ur1SN2NS5QrITXAAJRCF4ONzaLdsuHeLMqBCG98pBxPtN0JdA3RW5bNNV2LSOu1XJKnS
         hEK/7ig+v4OucTNoIFXaonqUrS+gtq9WA5+oitwdOjPh6d0I+V9O+WNx9LwnFoAXS/1P
         EbWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaNzAZo94lsrAojwJ7PsgW5egeswZmXjHeMPlCC39XWJzz9Ct2c
	E+b1FeSm799EkVm2Tlh9fGQ=
X-Google-Smtp-Source: APiQypJ9Q4VPHd9bjonti9rM4v2NJPe93b4UGfpGzGFY7lzpHyP1wpRRXrDvrnqzyetxPR8/yc7R6Q==
X-Received: by 2002:a05:6000:1001:: with SMTP id a1mr21446148wrx.9.1587412838873;
        Mon, 20 Apr 2020 13:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls899729wmm.3.gmail; Mon, 20
 Apr 2020 13:00:38 -0700 (PDT)
X-Received: by 2002:a05:600c:148:: with SMTP id w8mr1110890wmm.144.1587412838347;
        Mon, 20 Apr 2020 13:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587412838; cv=none;
        d=google.com; s=arc-20160816;
        b=nAcSwtlj3vrk59xxq/dNNlw5pu3vDQ0e66Bqsx6hzPGoaOrUEnsNNbTkbatdERVKJ6
         NesisxxjD0+2AjZ4IEe6nzDLF93np2lWKadWndXa4u+vZ5e0ZcIwd097hzmyg6HpEM1f
         poBSCw346jtEo/Uv/MLi7rv6bKHoAhqRaygJ6J2klcyuFReTsU1v7OjTJvz4doa7xp3A
         jQQgSU1OMQR1IkZFiIXsFB/0dgXVjDL9Eryt0A9DAv3SAetlKWkYuKNxkR0rs+ZYzUCM
         rTz+NBAyEla7sTpLNXLZYDZkDnYUIdxBkg4lqPqT0NEPjXhgClnOERP/R6HkmWRPLsiB
         2ZEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=ubG0ysGXTd768Eo/V4FtKPw1QsEtRCDT7iyec4qa+/8=;
        b=rOAhT2d8CA6ZfC5CoGndeHAnAqGSd/v+H/voynpe4mXlx5d6O19tNH6sWv423Z055D
         jlyIdmYovD2T1SS7g117zYPJeGlqRTZo7dVJmjTFZ/9KxeJRpteQciUxJ8HUdtKilw/2
         LZpI/PeFZwKFJn/GxnPuvE2QEAgasxBKNw8OKXMsYEcvPOulGSahak1vW8KKoy3vSolU
         ZBcYy9xKqTdt1E+UBTovTQfBKVJoJJXPoDYQbgB3GWARZIOjVgza+bHH2MZSBjkuzUSR
         QCUfnr6N08hu8Dy6T414vJTU4zWy1aKcuXXsZFMBTnh0YZEvdFw8ulqqqOSKU6mqPwqU
         ujCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=l6TH7w6C;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o9si29669wrp.3.2020.04.20.13.00.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 13:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id u13so13764189wrp.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 13:00:38 -0700 (PDT)
X-Received: by 2002:adf:d0c5:: with SMTP id z5mr10884070wrh.410.1587412837695;
        Mon, 20 Apr 2020 13:00:37 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n131sm587229wmf.35.2020.04.20.13.00.36
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 20 Apr 2020 13:00:37 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 20 Apr 2020 20:00:36 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <580421458.18127.1587412837038.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allnoconfig - Build # 3 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18126_435544756.1587412836599"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=l6TH7w6C;       spf=pass
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

------=_Part_18126_435544756.1587412836599
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-next-allnoconfig
 - tcwg_kernel/gnu-release-arm-next-allnoconfig
 - tcwg_kernel/llvm-master-arm-next-allnoconfig
 - tcwg_kernel/llvm-release-arm-next-allnoconfig

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
# 00:00:44 mm/nommu.c:158:25: error: use of undeclared identifier 'flags'
# 00:00:44 mm/nommu.c:164:25: error: use of undeclared identifier 'flags'
# 00:00:44 make[1]: *** [mm/nommu.o] Error 1
# 00:00:52 make: *** [mm] Error 2

from (for last_good == 8f8ad47e383e6e6d8e7e855d140d8214db37eed3)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
398

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/artifact/artifacts/build-8f8ad47e383e6e6d8e7e855d140d8214db37eed3/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/artifact/artifacts/build-6f461d34ba8211c36d4c27343e86e4aea8fbc683/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/

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
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allnoconfig/3/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/580421458.18127.1587412837038.JavaMail.javamailuser%40localhost.

------=_Part_18126_435544756.1587412836599--
