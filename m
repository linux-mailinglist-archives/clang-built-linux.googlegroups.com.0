Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBTUIR3YQKGQE2XWAABQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7B5141A09
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jan 2020 23:18:55 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id w72sf5331128lff.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jan 2020 14:18:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579385934; cv=pass;
        d=google.com; s=arc-20160816;
        b=r4rl74eiQic5vXgDJxpTEHXZyi0fl0pylsgRuwIerEKtWQMSU2Gwc0Ay+QF+PoklUh
         +4ByTP+XuzbzRtRsz0wEYTv1fwIzFjgd2cNRJdHyljDFatUhBZl19pRot2D7jNU0hKIg
         XSG+ObXgUdZSIr8mhVZot9+kg/Ho/UYf0b71eToWngEY3i/evxgClnlBgxo+O+iWquVA
         rUWH5ifr57XQ5/JMG0W4Jf9PCbvqbpj7cb8sMv4IEu2TccvzFfRcF1YvomONDf/eFNOm
         0Fp1MEFHHQZxZ01Ic60SVvE5ljK5epqXfshGcFtq9LaChXo2+z652oRVG2iD1mHWPMSq
         ymtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=vSWfx4RQWFXUVdYwOv3xDbwp5d7wlivs+Jw4GGVCZsc=;
        b=sTiwf/1m5ZnxCi+Hw8TiHUW9iLXHZvrMpzkGaCy8LFReUCF+bHYwEaNRKKHbVM590E
         Nw+dNAXGFBKWvjBiraY77Uj3fEKA2eNi/CXU/ow3tcOo+NIFZpz8j1XBGTEqFCLWvFMV
         iNv14Vbc/SZwzjhU2XfY5ClU87/GmNutazSyg0T6P7neE1jKG33FOTgefQoyQ1s8OIew
         qL8uNETQX8f8HRGFzwmajeV1SwCwkbqdpFvT9Zq3YeUjtRPlPCJ2cmASrC5wl4MEWCRg
         YDlInxU012BBAaKNxdBIk6PIv4xEEAfVmYmvk8jaYDKwD3bKOdge8g4uA/AuZdMPvY2q
         01NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=l4U93I67;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSWfx4RQWFXUVdYwOv3xDbwp5d7wlivs+Jw4GGVCZsc=;
        b=nNyTA94t4JT0eeHSyVdYFPC2ZXUU/HPmy8yC2elKqNQQ/ecFtLZD8PhiD7IXkXrV/0
         fM0bAhlgujy9IvBOCxQWJN4HnVYOI4lyD7Hj9tjvEHvoRFgkOurXSB6LRvonig4OmXoY
         ZI1c+IyXXYX/Q/XGwu4NUUC+fkb0k/lc/8TtNwJXsDMdWLAgnbeZIiYlMlttpD19Jjzr
         lelr2HSVB9D23Q08b2OHmq27AUNk8MSXYa4LvxxZOdMtXI87hJsS0IZgSjDuml1rjbV5
         JZZ1FeN4wGxWCINw/h1IOafDmlTKn0VMSidwO4BwmedH9DBax/5WYe98c02ynCC2yECd
         9yNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vSWfx4RQWFXUVdYwOv3xDbwp5d7wlivs+Jw4GGVCZsc=;
        b=RPlxoMb3SViTWCLoYpSsMmf7d1dfunYINVRUMF5y2uVTEdLFYxJd3ITzJ8iseLveH8
         NBwjMuc4GcPrKDBOwkaknsocraiPVyNgbyIpk6wBByMiCrmcCUvrEOZ3pg1isTc9nw9X
         fJ58LjUJaVDwOK6NyBvA6IqQGNL4DtnrKLiNCCKWcRH6/ZsP0fuK35Kwf316FcQaOVgN
         U+qER1DPsKuEugWLwnzYGloW6aE7QqKiwS+/O9rM64LZXvz/nlXlcUy+hW2YmO8Bu0o0
         UvW3tWFbEr2tFliJFY9/RL+q2tN5pX8IJ98kfoesVdfwvbFDRv+UZaJGjYvJxgSkTzys
         tHUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPFiUO0zzEnzBXP8hiA0jG3HPOJYIHkMex0EDmoqURjQPMyeIx
	30hb1wPrqdSl8n2hUeW41YE=
X-Google-Smtp-Source: APXvYqw//7UFSU/ud1JoIwz5Pmy/FOAbGxyFXrTZyKdv+F3/6wHn1YEgLTz4v8vZBNNgv2ygRmh9vA==
X-Received: by 2002:a2e:9587:: with SMTP id w7mr9470866ljh.42.1579385934605;
        Sat, 18 Jan 2020 14:18:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8488:: with SMTP id g130ls2738462lfd.11.gmail; Sat, 18
 Jan 2020 14:18:54 -0800 (PST)
X-Received: by 2002:ac2:52a5:: with SMTP id r5mr9114653lfm.19.1579385933984;
        Sat, 18 Jan 2020 14:18:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579385933; cv=none;
        d=google.com; s=arc-20160816;
        b=GFlfBRvNnCmAabYZi4gQIUkC6J2A/j7p+QlqkhvckPIR7ru1PpbfeIIWCmFjJwwLWC
         iFQfkPR/n7ehNIS8GYWbY7Q8YTv60VDKT4a3F60xmAREeqgle1ppfpSPYkjbchvjNRef
         EiBL02LXRWJFdIMzxuO1uu6qtPXalkfj4O5gqvkmjPiygKylZjqByXSApyRYXAlFl2EZ
         iIesFyVtmIV1XUjUb1vu7a5yb+/GJYH3EsVcEyd+UqqeIpoAdzn2UwKUdHyT+iY/G7xo
         YP0LMNt5hu8v8RocPbl6vZ63AYdDoM0/qZH+TkCj+HHXTBMQJ+ZARQe4QU9A+Gvkt/Tf
         oiHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=RbXwiXJ0sPVC+IrBABaesATiOBNkEpALCoPptt51D7s=;
        b=e3BxgdyilKjMoAsHUK9iDvURfyXNpGmbwsEWhFuPwQVqSAu2zhOXJZSIQs9NhG5+HS
         Ak7nq82TUMUdUXA+Ori4RCqEZQkgky/TJEY0iMUQCAaVJMV4Tm6Px++T3mqZrakHtTHC
         ChQrnoMHPpwfvVCEsVFVTh1x4Dsa6RUYETQ1pdPLS+rJx8DL+Qd8n3Ec9tW1Osks8stn
         jBlAPNAPt7m9lNLkAyIuvAHrLnCPPrcC5B5ltuKdWYgyy4rZx0CyqrcirtoNs6RVpWcJ
         X452+z6rKVfAUp2igknssG4PIXA0pm+eAb2bb7dNyfsXvFVvipouyUbMlyHFry6jkP3H
         4N7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=l4U93I67;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z16si1083528ljk.0.2020.01.18.14.18.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jan 2020 14:18:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z3so25959953wru.3
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jan 2020 14:18:53 -0800 (PST)
X-Received: by 2002:adf:ef92:: with SMTP id d18mr9906187wro.234.1579385932945;
        Sat, 18 Jan 2020 14:18:52 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x7sm39439039wrq.41.2020.01.18.14.18.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Jan 2020 14:18:52 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 18 Jan 2020 22:18:51 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1612139803.52.1579385932327.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 54 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_51_652589741.1579385931553"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=l4U93I67;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441
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

------=_Part_51_652589741.1579385931553
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Culprit:
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
</cut>

First few errors in logs of first_bad:
00:04:52 clang-10: error: unable to execute command: Aborted (core dumped)
00:04:52 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:04:53 make[1]: *** [kernel/signal.o] Error 254
00:08:42 make: *** [kernel] Error 2
00:22:29 clang-10: error: unable to execute command: Aborted (core dumped)
00:22:29 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:22:29 make[3]: *** [drivers/staging/rts5208/rtsx_scsi.o] Error 254
00:22:46 make[2]: *** [drivers/staging/rts5208] Error 2
00:23:36 make[1]: *** [drivers/staging] Error 2
00:23:47 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="c1a0a213378a458fbea1a5c77b315c7dce08fd05"

Results regressed to (for first_bad == 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19870

from (for last_good == 48b16e1005df863cf8b6364a6dc3e3e213d7d415)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27103
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/artifact/artifacts/build-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/artifact/artifacts/build-48b16e1005df863cf8b6364a6dc3e3e213d7d415/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/

Reproduce builds:
<cut>
mkdir investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
cd investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/54/consoleText

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
index 4093e50ce899..6396115129e2 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1612139803.52.1579385932327.JavaMail.javamailuser%40localhost.

------=_Part_51_652589741.1579385931553--
