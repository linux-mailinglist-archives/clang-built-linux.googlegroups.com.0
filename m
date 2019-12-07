Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB25AVTXQKGQEYZYD2XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 649DA115ABE
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Dec 2019 03:37:32 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id s25sf2273382wmj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 18:37:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575686252; cv=pass;
        d=google.com; s=arc-20160816;
        b=EdeqMj+DMWx4AdEBbWnDeyWHj1FTwUeT1Gei72XnTYwx4+eMbgLCFpAKet4A7osdBE
         dDjQSn1t6kwAOikcoj5955YokbKTpiY4mrrqOgGNZU7rK3llJ/HX/udiUkgAakiaDo/5
         BoOU8HaR+lxZ3d2l8cPHx0s7HvhR3R+EM8buez5n+FTOp4riKSabjC9D9P1kgdH2JgvC
         fkxIvyXv7xuNlNYpc9y34g0Cmm3vEKGPFVoGjgAZ1yQvLoXrUWq/YPbAfCobGDAq7zZo
         45zdj2NdFlkov+xGWYI2NljrQR9VSQVIuLMww7HGZNWIo8BEw+no0IZNv46a+j9D+aYb
         G3ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=EX4IE+nrRhKtiQe0VnquguLi8nzcBAIqeP56wWfeZP0=;
        b=cXthJuRUVc9Ubj0hUmP6+f3k0+cMBWxdBCg1xq/JKI2uhQiKNQRjw1NzyJFGQBB2E4
         mBlBAIY+y3UH/9perFPMc8Lw34Ff5AyVgfmMYG7QmBccctJ0ntjF+1pHQpU2jxmHhXeN
         c+b7m9dWQnsw+7HHQjnKYLiro8PWYQJuCV1XPuViSt9WVpL48IwVKYuaOOvSPb+Ky5Rs
         LxUQC2pKGk3NqaOqeSUIYQByTgRlZpxW45lz1BD8zZVTjhI5Cd0MC+jaAFU9By/+32M/
         inUCnxGvToTph61PZ7fPAALxlReFZ2deUK4fca64e7hdr6yiHkqhTOly4nJQR4kFcwkj
         6Cwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="yByDwR/1";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EX4IE+nrRhKtiQe0VnquguLi8nzcBAIqeP56wWfeZP0=;
        b=rCOtnQ4060DWyf3i5QeEP4IbeTzI9bG/MkUUGjy76AHKSj4gJi+Laj8vFoNG5mOXmK
         2znOxC1aI1UUsRGGZf2SLGGSyjwN6RJj6oqKlXsKJn3pZTx6UDu1C666SsYIw/meOvVh
         uz+uHiaCpJFXOt4enfmuGoFSjAo6/KUpJ0dCG/7qobUbq97LXW2513RDvqV8yE/5DBDO
         yomPVuI5DyLo85Qpkmg3gf4MSF+ao260i8lJiHWo0yH7sNwWb1dQ5v/SBlPCjS2WLrVx
         XRSvMN9REUNkyU8m5SHMLYcvIpTJqYexPtJOVidUr7JCSK6aOFf0VjgftgNdIAbg5a4y
         oF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EX4IE+nrRhKtiQe0VnquguLi8nzcBAIqeP56wWfeZP0=;
        b=WMhqrVctaVL7aL34180JTsgy3HxWnb19ir2npystPCuPQFCySY/nEFZTPkUApUFdVD
         ZVQJyY/MRit3kXHxkuqNDbXwq8KgEJrr43kt1Urhv6nkdjl71jQ8VLOlOd7pHhYa44Jg
         oxoTNjvd9hlFQF0r1V3wEEMZoVy2NScAPjWyNPnLSWmU+10bUDhrvlZKAs+b9Yjv0LAw
         mefOlsIR3QrhRBGIW7T/pODvXN36kkeeAti3FSrzPcvNVKhPE6xSiiQQeqbO3qsKKHZ5
         nU8VOPkicmyYhCwhzXRNHyezrjlqHgi5MxexgItAMOWMAlDppqEVUckLAYSngas4zS8e
         fxRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtyFYiXlnJqrJvYCzzoTLcTejXOCo5ENnMl88xCPTMEY2B5Gc3
	22Q+mGd4QIXEGATvRkCr4So=
X-Google-Smtp-Source: APXvYqzqPszamqjU9mtnhCcWW6UljVIekJzq8ONDL4jr/aQrzQA4LfSc0IcZ44C7HZkK4kwrXf7zVw==
X-Received: by 2002:a1c:5448:: with SMTP id p8mr13412552wmi.70.1575686251973;
        Fri, 06 Dec 2019 18:37:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bc0b:: with SMTP id m11ls1373168wmf.4.gmail; Fri, 06 Dec
 2019 18:37:31 -0800 (PST)
X-Received: by 2002:a1c:7f4e:: with SMTP id a75mr13631432wmd.128.1575686251404;
        Fri, 06 Dec 2019 18:37:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575686251; cv=none;
        d=google.com; s=arc-20160816;
        b=bBM3lycYufIXZuuhQFm1gSs4GcwfzCdYlXrnNDX+35bmifXHc2+2MGeVBQieqdBkvn
         yWNTsEJ+9x6o7gfufdMopdLRzMAdFUsqnZ56RLNzA8kUKNEFg/dD7lSi9vBmWyMTlD+H
         lpP8p9VRcNRo5Yb+cPrIm2j14XRKVdz9SBLnkhteRhD7jyhWuerOtn2tpYE+yQs5QQxc
         Rx7Lb1cjPmycOfE1KKErNHSdQVOHKhoWMV7e4xfTzVgSFqoR/6OUkhmcpvD4PUx2Dpij
         ULKQwnKh19gZR1TerFnDHvVvgv5yUng/3v4qI59sVniPUZUrGDGjvGQ3jtYBRe34Le9P
         nFyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=ledr3c1pbTKAa2YBiFtUmzPgJRyR6EcFf/DokPVlyRA=;
        b=y75vtNQW2dZLDzh95iQXG09fPoeQv7qwknPN6YDifqu5uk+yoetyhXJqiCkYFY8h4c
         WL9Ub5KsfyDGjV4lPU28f1VVekx9cbnwSygqTCNy0GXJ/nTn0ckt2mlxU1iE1Amw54ud
         9Mgvmk0lcIuQinw/41xhUazAH/r9FvpsWrQjpC4wgeV+Q9WA8TNCdcnB8I4gCHVURBXw
         4prEK34C1Q2IeyX/+meAb4btQL4eq3JTt8GGDpfnQmYXkcIV64J8RIQFo+ZmcEcURbg8
         Pb/5J4IVsApM770CBnYDDim8XWkpHGq/ma2JvSaVnWw5iDAddbiK8B5W26DsDBPVyowA
         z6AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="yByDwR/1";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id m12si900481wrq.1.2019.12.06.18.37.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 18:37:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Received: by mail-wr1-x430.google.com with SMTP id z3so9853939wru.3
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 18:37:31 -0800 (PST)
X-Received: by 2002:adf:eb46:: with SMTP id u6mr18996101wrn.239.1575686250845;
        Fri, 06 Dec 2019 18:37:30 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a84sm3568318wme.44.2019.12.06.18.37.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Dec 2019 18:37:30 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 7 Dec 2019 02:37:29 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <834965049.3754.1575686250379.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allyesconfig - Build # 27 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3753_1484981133.1575686249827"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="yByDwR/1";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430
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

------=_Part_3753_1484981133.1575686249827
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig

Culprit:
<cut>
commit db5739658467e20a52f20e769d3580412e13ff87
Author: Sanjay Patel <spatel@rotateright.com>
Date:   Fri Dec 6 10:43:23 2019 -0500

    [InstCombine] reduce code duplication; NFC
</cut>

First few errors in logs of first_bad:
00:01:30 clang-10: error: unable to execute command: Aborted (core dumped)
00:01:30 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:30 clang-10: error: unable to execute command: Aborted (core dumped)
00:01:30 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:30 clang-10: error: unable to execute command: Aborted (core dumped)
00:01:30 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:31 make[2]: *** [kernel/rcu/srcutree.o] Error 254
00:01:31 make[2]: *** [kernel/printk/printk.o] Error 254
00:01:31 make[1]: *** [arch/arm64/kernel/hw_breakpoint.o] Error 254
00:01:32 make[1]: *** [kernel/printk] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="8b0780f795eb58fca0a2456e308adaaa1a0b5013"

Results regressed to (for first_bad == db5739658467e20a52f20e769d3580412e13ff87)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
15871

from (for last_good == 6bb62a9d970b677cbaee848d5e4800e1c3fb42c9)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
16048

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/build-db5739658467e20a52f20e769d3580412e13ff87/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/build-6bb62a9d970b677cbaee848d5e4800e1c3fb42c9/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/

Reproduce builds:
<cut>
mkdir investigate-llvm-db5739658467e20a52f20e769d3580412e13ff87
cd investigate-llvm-db5739658467e20a52f20e769d3580412e13ff87

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach db5739658467e20a52f20e769d3580412e13ff87
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 6bb62a9d970b677cbaee848d5e4800e1c3fb42c9
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allyesconfig

Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/bisect.log/*view*/
Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/27/consoleText

Full commit:
<cut>
commit db5739658467e20a52f20e769d3580412e13ff87
Author: Sanjay Patel <spatel@rotateright.com>
Date:   Fri Dec 6 10:43:23 2019 -0500

    [InstCombine] reduce code duplication; NFC
---
 .../Transforms/InstCombine/InstCombineCasts.cpp    | 78 +++++++++++-----------
 1 file changed, 40 insertions(+), 38 deletions(-)

diff --git a/llvm/lib/Transforms/InstCombine/InstCombineCasts.cpp b/llvm/lib/Transforms/InstCombine/InstCombineCasts.cpp
index 5112fb1a6c3..a3c1b2777e3 100644
--- a/llvm/lib/Transforms/InstCombine/InstCombineCasts.cpp
+++ b/llvm/lib/Transforms/InstCombine/InstCombineCasts.cpp
@@ -846,27 +846,32 @@ Instruction *InstCombiner::visitTrunc(TruncInst &CI) {
 
 Instruction *InstCombiner::transformZExtICmp(ICmpInst *Cmp, ZExtInst &Zext,
                                              bool DoTransform) {
+  Value *Op0 = Cmp->getOperand(0);
+  Value *Op1 = Cmp->getOperand(1);
+  ICmpInst::Predicate Pred = Cmp->getPredicate();
+  Type *ZType = Zext.getType();
+  Type *CmpOpType = Op0->getType();
+
   // If we are just checking for a icmp eq of a single bit and zext'ing it
   // to an integer, then shift the bit to the appropriate place and then
   // cast to integer to avoid the comparison.
-  const APInt *Op1CV;
-  if (match(Cmp->getOperand(1), m_APInt(Op1CV))) {
-
+  const APInt *Op1C;
+  if (match(Op1, m_APInt(Op1C))) {
     // zext (x <s  0) to i32 --> x>>u31      true if signbit set.
     // zext (x >s -1) to i32 --> (x>>u31)^1  true if signbit clear.
-    if ((Cmp->getPredicate() == ICmpInst::ICMP_SLT && Op1CV->isNullValue()) ||
-        (Cmp->getPredicate() == ICmpInst::ICMP_SGT && Op1CV->isAllOnesValue())) {
+    if ((Pred == ICmpInst::ICMP_SLT && Op1C->isNullValue()) ||
+        (Pred == ICmpInst::ICMP_SGT && Op1C->isAllOnesValue())) {
       if (!DoTransform) return Cmp;
 
-      Value *In = Cmp->getOperand(0);
-      Value *Sh = ConstantInt::get(In->getType(),
-                                   In->getType()->getScalarSizeInBits() - 1);
-      In = Builder.CreateLShr(In, Sh, In->getName() + ".lobit");
-      if (In->getType() != Zext.getType())
-        In = Builder.CreateIntCast(In, Zext.getType(), false /*ZExt*/);
+      Value *In = Op0;
+      Value *ShAmt = ConstantInt::get(CmpOpType,
+                                      CmpOpType->getScalarSizeInBits() - 1);
+      In = Builder.CreateLShr(In, ShAmt, In->getName() + ".lobit");
+      if (CmpOpType != ZType)
+        In = Builder.CreateIntCast(In, ZType, false /*ZExt*/);
 
-      if (Cmp->getPredicate() == ICmpInst::ICMP_SGT) {
-        Constant *One = ConstantInt::get(In->getType(), 1);
+      if (Pred == ICmpInst::ICMP_SGT) {
+        Constant *One = ConstantInt::get(CmpOpType, 1);
         In = Builder.CreateXor(In, One, In->getName() + ".not");
       }
 
@@ -881,42 +886,42 @@ Instruction *InstCombiner::transformZExtICmp(ICmpInst *Cmp, ZExtInst &Zext,
     // zext (X != 0) to i32 --> X>>1     iff X has only the 2nd bit set.
     // zext (X != 1) to i32 --> X^1      iff X has only the low bit set.
     // zext (X != 2) to i32 --> (X>>1)^1 iff X has only the 2nd bit set.
-    if ((Op1CV->isNullValue() || Op1CV->isPowerOf2()) &&
+    if ((Op1C->isNullValue() || Op1C->isPowerOf2()) &&
         // This only works for EQ and NE
         Cmp->isEquality()) {
       // If Op1C some other power of two, convert:
-      KnownBits Known = computeKnownBits(Cmp->getOperand(0), 0, &Zext);
+      KnownBits Known = computeKnownBits(Op0, 0, &Zext);
 
       APInt KnownZeroMask(~Known.Zero);
       if (KnownZeroMask.isPowerOf2()) { // Exactly 1 possible 1?
         if (!DoTransform) return Cmp;
 
-        bool isNE = Cmp->getPredicate() == ICmpInst::ICMP_NE;
-        if (!Op1CV->isNullValue() && (*Op1CV != KnownZeroMask)) {
+        bool isNE = Pred == ICmpInst::ICMP_NE;
+        if (!Op1C->isNullValue() && (*Op1C != KnownZeroMask)) {
           // (X&4) == 2 --> false
           // (X&4) != 2 --> true
-          Constant *Res = ConstantInt::get(Zext.getType(), isNE);
+          Constant *Res = ConstantInt::get(ZType, isNE);
           return replaceInstUsesWith(Zext, Res);
         }
 
         uint32_t ShAmt = KnownZeroMask.logBase2();
-        Value *In = Cmp->getOperand(0);
+        Value *In = Op0;
         if (ShAmt) {
           // Perform a logical shr by shiftamt.
           // Insert the shift to put the result in the low bit.
-          In = Builder.CreateLShr(In, ConstantInt::get(In->getType(), ShAmt),
+          In = Builder.CreateLShr(In, ConstantInt::get(CmpOpType, ShAmt),
                                   In->getName() + ".lobit");
         }
 
-        if (!Op1CV->isNullValue() == isNE) { // Toggle the low bit.
-          Constant *One = ConstantInt::get(In->getType(), 1);
+        if (!Op1C->isNullValue() == isNE) { // Toggle the low bit.
+          Constant *One = ConstantInt::get(CmpOpType, 1);
           In = Builder.CreateXor(In, One);
         }
 
-        if (Zext.getType() == In->getType())
+        if (ZType == CmpOpType)
           return replaceInstUsesWith(Zext, In);
 
-        Value *IntCast = Builder.CreateIntCast(In, Zext.getType(), false);
+        Value *IntCast = Builder.CreateIntCast(In, ZType, false);
         return replaceInstUsesWith(Zext, IntCast);
       }
     }
@@ -925,32 +930,29 @@ Instruction *InstCombiner::transformZExtICmp(ICmpInst *Cmp, ZExtInst &Zext,
   // icmp ne A, B is equal to xor A, B when A and B only really have one bit.
   // It is also profitable to transform icmp eq into not(xor(A, B)) because that
   // may lead to additional simplifications.
-  if (Cmp->isEquality() && Zext.getType() == Cmp->getOperand(0)->getType()) {
-    if (IntegerType *ITy = dyn_cast<IntegerType>(Zext.getType())) {
-      Value *LHS = Cmp->getOperand(0);
-      Value *RHS = Cmp->getOperand(1);
-
-      KnownBits KnownLHS = computeKnownBits(LHS, 0, &Zext);
-      KnownBits KnownRHS = computeKnownBits(RHS, 0, &Zext);
+  if (Cmp->isEquality() && ZType == CmpOpType) {
+    if (IntegerType *ITy = dyn_cast<IntegerType>(ZType)) {
+      KnownBits KnownOp0 = computeKnownBits(Op0, 0, &Zext);
+      KnownBits KnownOp1 = computeKnownBits(Op1, 0, &Zext);
 
-      if (KnownLHS.Zero == KnownRHS.Zero && KnownLHS.One == KnownRHS.One) {
-        APInt KnownBits = KnownLHS.Zero | KnownLHS.One;
+      if (KnownOp0.Zero == KnownOp1.Zero && KnownOp0.One == KnownOp1.One) {
+        APInt KnownBits = KnownOp0.Zero | KnownOp0.One;
         APInt UnknownBit = ~KnownBits;
         if (UnknownBit.countPopulation() == 1) {
           if (!DoTransform) return Cmp;
 
-          Value *Result = Builder.CreateXor(LHS, RHS);
+          Value *Result = Builder.CreateXor(Op0, Op1);
 
           // Mask off any bits that are set and won't be shifted away.
-          if (KnownLHS.One.uge(UnknownBit))
+          if (KnownOp0.One.uge(UnknownBit))
             Result = Builder.CreateAnd(Result,
-                                        ConstantInt::get(ITy, UnknownBit));
+                                       ConstantInt::get(ITy, UnknownBit));
 
           // Shift the bit we're testing down to the lsb.
           Result = Builder.CreateLShr(
-               Result, ConstantInt::get(ITy, UnknownBit.countTrailingZeros()));
+              Result, ConstantInt::get(ITy, UnknownBit.countTrailingZeros()));
 
-          if (Cmp->getPredicate() == ICmpInst::ICMP_EQ)
+          if (Pred == ICmpInst::ICMP_EQ)
             Result = Builder.CreateXor(Result, ConstantInt::get(ITy, 1));
           Result->takeName(Cmp);
           return replaceInstUsesWith(Zext, Result);
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/834965049.3754.1575686250379.JavaMail.javamailuser%40localhost.

------=_Part_3753_1484981133.1575686249827--
