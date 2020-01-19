Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBDEJSPYQKGQEGR2F6QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDC1142014
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 22:05:16 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id v17sf13103207wrm.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 13:05:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579467916; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yn9SUZCGncRSSXnKj5h/Fwx1BFj8iK/1LNx5FlBwFeKKAU/BWvrjmiLFHPIn3Vyvwj
         ez85sZrQ7GbifHO61Du7lB8wX6YK//WcFOMXJFk2OM3bfgYznuvjmHTPKbH40+1VuelZ
         ilnpjtkI0KCMILNV8zLWEiV2pa6lxIJNejF/ZiKK171sOKAOozLoZhIAClQ1znjPqBzp
         /5fj9Gf8MGIb290CDYCSDxT9uTimLPcBuPZj1Y9J9mPcT4USHuega3yl0zb4ogZZ/rC0
         h5/FYnBmVkmoF1h8XvSrzfFOgrmwudm+sswsKr1VMlhKIeGJG89Fnh9GPaSK6AYh/9tT
         qY0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=DtfD0vv8DS4a2ntCGBVmxhSF5rv21KhCo9WFrVDNego=;
        b=QMiLHxloJz5YSOWp8NEg7letbLdWANcLgAIZiJ5g+dEnXSc3Yy9rjBHu5rIrb/uAL9
         c/Da3jQb3HLhI/p76kMb4fF0TKZBDF7H+V6ZF+A6gLepCsCZGzWXWmd77130UhEpOsGU
         BWMQX9a+97VtFe3dZqous59WGbFDueYT8r+ekACsZVGTx9/okKtzRwMPhXevWlt5NaAP
         FaHUvy5UqVLC2Ug2UmhHmculGtXK0XN5g9bNVSoLzfX6HgTd0fWlgmYOfNbkKTCNPNqq
         ubTc+See5D9ttLJ2c8B1jL2hysiG/QyFEcAAxpT4H+ddrbhDcGT829zOvLCVWXpw68zc
         Q3JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=k30jwRS3;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DtfD0vv8DS4a2ntCGBVmxhSF5rv21KhCo9WFrVDNego=;
        b=M/Ebe0jnnbpE9wwh9C0IMe6e6Srou69yLL+6VKhnRmM36JyMpOG/gag9mj4A3S6wK/
         dGoVyOIo7nVYY8pQwXicL0NCPB7UsjXpTd5567wEyCakJfTkDwTTUwx/OpiSKzotObjM
         G3g0kmg6ttm9KG7LIbhAb1l4X3JVBM75YV1R4orWuF5qhU55kFOMbvajcIcU8zrFFwTf
         owD3QBitF7e3TPu/+jGSvq3uvBShsveOFhBu0UbMy0M3nE86NjGfecSn0e/bP4Bhk0Wj
         8b6HrBVt64iaN4fY0Fcn6bFl46swXHKmnBFTd78RtS/wzhhRMC+kppsxNePqVvs8uG7y
         PUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DtfD0vv8DS4a2ntCGBVmxhSF5rv21KhCo9WFrVDNego=;
        b=SihEuwvEZWKg0BRFxIpB/X9Pmz6fXzrxs6WOrV/5XQbbkpToB2K9APPLFjkqgDiMn1
         PzZGYM79uR0WnaT83j1N4v3c9mLknicd0hIxNIST3Yy70AkCECCly5uqFYEf/GK5QRS1
         xekhoqp/iz47wOo4muoVHa1zVaLTPGTKgG6zGKjcw6Rr36JVCEzfX/sBne7+FXwiq1QW
         MNxTuF7FzNRIv5p20A55tJKyN2BrUzs8YXPNuW4UkhdoeiNMuVmbM/quk4GQ71KQEp1q
         w/g/dTyU7l/anV2t8LVmFx0SsCJ6Fww5fXbT7IIkFAx9GFK5lkHlVUiObbSbf5gld74j
         a/5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWral8o+CgrI9yDRq0/ZH5Gtb/OfV+9JWW2f0oeqNKW7Ro/69uK
	uB5SUc19SoFRtCDbHak+yFo=
X-Google-Smtp-Source: APXvYqw4426FptB7S8JpcryNpYPmLlAUAUesMi0D/Wdfs51EI2cgakEvPHJHUb6SIvGxlBer+xPEkw==
X-Received: by 2002:adf:f78e:: with SMTP id q14mr14139148wrp.186.1579467916408;
        Sun, 19 Jan 2020 13:05:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4303:: with SMTP id h3ls1639747wrq.15.gmail; Sun, 19 Jan
 2020 13:05:15 -0800 (PST)
X-Received: by 2002:a5d:6350:: with SMTP id b16mr15190277wrw.132.1579467915860;
        Sun, 19 Jan 2020 13:05:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579467915; cv=none;
        d=google.com; s=arc-20160816;
        b=ZTVqVJnM4u27yF3awhcbySV/ATW/NqQi7bpdf+vLgmMCzxZ/sqfAx01h+srq44qiRZ
         Wqx3SCSFW1RI/REPTG3DauaMovN0h5RnxkAwqYs+zGug2M/vp11D4l2AoOsSGM9fSPSm
         Od7TUB7CZOGhRsrslFiL93QGEmV+7M+eekG3QQmeBA6H4Et3H/hKzyq8ikhgrJAhOYZo
         npQzxvvLTdF0tOFTARDWvjv6a41r+cQMPfHvtXrwOjC4jelhZZW9B9TmIw0dlYI1vJaY
         Z5FPBP+h4TtTrYo4j2NMx1nU8qtUTWp0a0Sk9remdEb8jRp7vWh0yxBrDgYVAR2XQbyR
         f+2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=zMFoBuzjQvJIIKfDwTnbkK/X96KuY0ULvuT4fWrnUZk=;
        b=BCmOYMNCbCP18uoDwyCJKY9kY3RBt4UkYfdoFnz+C/KZpcntIo6ngGtVGDhE57sjVh
         R+WOOf0oiPXw/ZagUIRAkhgf+57qq3KesdG7aQf1bsCQ2Nv7g8NdMUyAWfiDZb0q48o3
         IyRWaKjHxOY0UFQIV1osNO3sDbhCIXwdE7y15lpFuakDLPz+3W9YzPQnb4IX3HpSeFT8
         ztw4+QapgsMo8qubOBMWB+bvbUsKkU1tXB52Gk1ocWXLL5BIaphP8meTyZWUBzkc+qAf
         chOIyuWRXiDw/zjhMOpbmju/a3obGGZ142xjyr6VkowBxRkv4YR/0CRmvTpvfy5QKFQw
         O2Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=k30jwRS3;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m2si985662wmi.3.2020.01.19.13.05.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 13:05:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id d139so13414887wmd.0
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 13:05:15 -0800 (PST)
X-Received: by 2002:a1c:9dd7:: with SMTP id g206mr15619332wme.61.1579467915485;
        Sun, 19 Jan 2020 13:05:15 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id j2sm1550480wmk.23.2020.01.19.13.05.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Jan 2020 13:05:14 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 19 Jan 2020 21:05:13 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1214593621.115.1579467914900.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig - Build # 22 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_114_108998728.1579467914016"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=k30jwRS3;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343
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

------=_Part_114_108998728.1579467914016
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
<cut>
commit 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
Author: Florian Hahn <flo@fhahn.com>

    [IPSCCP] Add assertion to surface cases where we zap returns with overdefined users.
</cut>

First few errors in logs of first_bad:
00:04:38 clang-10: error: unable to execute command: Aborted (core dumped)
00:04:38 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:04:38 make[1]: *** [kernel/signal.o] Error 254
00:09:42 make: *** [kernel] Error 2
00:29:33 clang-10: error: unable to execute command: Aborted (core dumped)
00:29:33 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:29:33 make[3]: *** [drivers/staging/rts5208/rtsx_scsi.o] Error 254
00:30:00 make[2]: *** [drivers/staging/rts5208] Error 2
00:33:08 make[1]: *** [drivers/staging] Error 2
00:35:16 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="c1a0a213378a458fbea1a5c77b315c7dce08fd05"

Results regressed to (for first_bad == 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18012

from (for last_good == 48b16e1005df863cf8b6364a6dc3e3e213d7d415)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18088
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/artifact/artifacts/build-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/artifact/artifacts/build-48b16e1005df863cf8b6364a6dc3e3e213d7d415/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/

Reproduce builds:
<cut>
mkdir investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
cd investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 48b16e1005df863cf8b6364a6dc3e3e213d7d415
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/22/consoleText

Full commit:
<cut>
commit 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
Author: Florian Hahn <flo@fhahn.com>
Date:   Thu Jul 25 09:37:09 2019 +0000

    [IPSCCP] Add assertion to surface cases where we zap returns with overdefined users.
    
    We should only zap returns in functions, where all live users have a
    replace-able value (are not overdefined). Unused return values should be
    undefined.
    
    This should make it easier to detect bugs like in PR42738.
    
    Alternatively we could bail out of zapping the function returns, but I
    think it would be better to address those divergences between function
    and call-site values where they are actually caused.
    
    Reviewers: davide, efriedma
    
    Reviewed By: davide, efriedma
    
    Differential Revision: https://reviews.llvm.org/D65222
    
    llvm-svn: 366998
---
 llvm/lib/Transforms/Scalar/SCCP.cpp | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/llvm/lib/Transforms/Scalar/SCCP.cpp b/llvm/lib/Transforms/Scalar/SCCP.cpp
index 4093e50ce89..6396115129e 100644
--- a/llvm/lib/Transforms/Scalar/SCCP.cpp
+++ b/llvm/lib/Transforms/Scalar/SCCP.cpp
@@ -1924,6 +1924,21 @@ static void findReturnsToZap(Function &F,
     return;
   }
 
+  assert(
+      all_of(F.users(),
+             [&Solver](User *U) {
+               if (isa<Instruction>(U) &&
+                   !Solver.isBlockExecutable(cast<Instruction>(U)->getParent()))
+                 return false;
+               if (U->getType()->isStructTy()) {
+                 return all_of(
+                     Solver.getStructLatticeValueFor(U),
+                     [](const LatticeVal &LV) { return !LV.isOverdefined(); });
+               }
+               return !Solver.getLatticeValueFor(U).isOverdefined();
+             }) &&
+      "We can only zap functions where all live users have a concrete value");
+
   for (BasicBlock &BB : F) {
     if (CallInst *CI = BB.getTerminatingMustTailCall()) {
       LLVM_DEBUG(dbgs() << "Can't zap return of the block due to present "
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1214593621.115.1579467914900.JavaMail.javamailuser%40localhost.

------=_Part_114_108998728.1579467914016--
