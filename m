Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBSMHSTYQKGQEMNPHCSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA1814217A
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 02:35:05 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id v5sf20791571edq.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 17:35:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579484105; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfcF8K1QBkOU5UC5ML1CAYJsTUH8o9qpDOqP63Pt312ygW077kDfTMFQ/+e8Y6Vmhk
         l12Dtq9mfxr1aM9l4uKu0CpLkRXmgHGm9z0j+UMysVgB13GgK3ytGLvUJCfgGbrY3Bk9
         SPrbb0T250NSOGvkMuJbmNiW1YEoWPIvq/jenvlswK9NOQFvYjBf+TXeeBH8RDDdVJ5p
         kAynzUqm3HP/qvMyW6DtKJf7HpD0mmwkvbPCagmYZB24qarHrWYgVaiz+rRaiQNjMDmx
         dcAfwhILtN7bt4pOsL+AluwMwW39H0h2iH3POWyG9YVXCQ1XfL+4hzGvTV0/NoSspU9R
         0Nsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=S3qA2X4Q559BrWAjBX6Vc4iuE/g5i6snCZAnlhQd1j4=;
        b=m3sf8nnSTAJC6VSjL+o8oin7Swi52FRgvd4ki/TuWOtohubAOY+HZnhx/53PIHly/O
         oGknfRv5W5UzOOyQb1Yhi9NGfypXu+2zlOL1sfS8rdIl+YSrEOzn4OX+1lw0MKcoPMU7
         tq6ovBmy4HLi0ZOysshf/0uWG5PTcZdE+cnxHOAlJuL4WPBHkkkSg5iptFTIiybhXqsi
         xKI+A+XXlGjosKx2WOnLZIJ6/Ns/dcSwaw5aZXe8QaUChdjfavqa5oVt4F2iTjM2I6fY
         ow95Z9ubtCMGnqtwfxImS8O/Ju0s9Dodzs7oIaHuamj6+G8RhcI8ExiD+PsrGr9Ugo1y
         2cKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Mk8+NnU2;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S3qA2X4Q559BrWAjBX6Vc4iuE/g5i6snCZAnlhQd1j4=;
        b=rmsdRd6b8IQrDkjBEwwxFB9QnFP8UtJZlr9V8EI5RUxETrYWlI4IGywuPNHICUOfBo
         MO2SVUrdo8vm3uBTACY21EijeG5tYSNrBMtpf9reCfDNjsAo990WFMslF3X8TDKdKA3/
         iWgPrcQOX0JvYU7JXVuecvxWPcmGKCwFNmupyJJOJlhBp18kbBzw3tVofCbS1QKdUJ8Z
         iVR3US34EOwa1Z844SVpwG8ra/3EfrLqA1nvxhvAFcCXbd/rSN0A/NI4mXN8SLQ0vG3I
         Po0zhpMRxJcZjJzKhBaIceCIWMdSo46Na7AoOkGP0erxWpbZ2kAhYgMZMnqb9n1sOpNM
         7r2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S3qA2X4Q559BrWAjBX6Vc4iuE/g5i6snCZAnlhQd1j4=;
        b=SkRrlJV2ss4SVyb/SQBmF2DFeaWgxErgey4saqZOzrOZvDo6em4o1NDyvmcbG446+6
         dHX10YOUKwFqQxFayoniVu8Mjz1wZkOqWRUIqbG7ZBxI3ucI9BQZF3C/f9Ue3n17qy8/
         BPN2KJe7S8QieKloWZr6JSAZ+tZwEieHYRdDoal7KdhIMGBHwh0yPR5w00dlYsOIUoy2
         EiL409qPriYafqqrr7v92C/aj3w93iN6EkfSu81x1+IzMqvhCIjLcKhSVdeyCOKShkUv
         TcX2OSkXdL92doHJmZqOYcEJ8TwEWChQgdgpB7+MfvpGD/b6r9I1hLA1qq68uqoY8gMw
         Wawg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUsvBRHVkls7ewFlgmV5apEM0cF+1N2oXQ2SUIHpzktA9xuQkDO
	D3BZjOEYbo38nT7hZ0RKJII=
X-Google-Smtp-Source: APXvYqxLyDjulAutVbZUBLfD9UETA5rNvx0CVYrcPvvAtrDb6dWR3wBks/VC/FO9+vvMJt4/w9CZ8g==
X-Received: by 2002:a05:6402:12d1:: with SMTP id k17mr15010414edx.291.1579484105242;
        Sun, 19 Jan 2020 17:35:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:177c:: with SMTP id da28ls7675764edb.8.gmail; Sun,
 19 Jan 2020 17:35:04 -0800 (PST)
X-Received: by 2002:a05:6402:1558:: with SMTP id p24mr15362202edx.120.1579484104665;
        Sun, 19 Jan 2020 17:35:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579484104; cv=none;
        d=google.com; s=arc-20160816;
        b=JNEd7xSC4orBTRoN7PHmbEeczZb/05V148HKWcQJrmmikbCDQFwNpFgPah0BE6zrYM
         Pp3aoq2KSguuJ0zy2PpBh4aGeyjIUsAkbgGRth6CMzxjcf9tD00bREkToFvXkSdyh/U0
         6T7eJL+WGAB9z6YR/MDsO/E1JIuRi17PX5i1hNkT0gTRsdY0FWISDK6t9eP3CHGN8TyB
         SOK4/CwiH/MiHcZiSlrhkinwabV4yQQLcQnYu9CQiM5/uDNHru63mvat95YMUKY4Q3gq
         eGIA3I+UjKCBs2jKMt47JYUw12D323vKdYq4vBxwgswiYgNhSQOLMhG99ZYva1k7D6PZ
         x5pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=xuSaKpJkgedDNrGGB49ngf/4ZUH38qNAP5eP/qlOmE4=;
        b=P+SWhDShOcgatOdGgEKibmdbOB56aaV2+CL5+8Uxqyf1vXs+u/G+WobieuNX70gX2Q
         0ZuEz1/EG9GoYGALtpmv5k/x8ZvQsAkvKNkXLVw+DGli6wFrezjGlT8GcN4BMD/WaD2y
         EOsglGGf1D0VROyqj/OgPg6cN0egxZe2T4GbFcEGGs1NVEU/c1bwxga6WtLfdCqkvOlC
         lLcajHbrNmsUb+FAoFHJnMEd72aYlEcFgmb1Fsb9t2UYve0JBA+s/LEpvfD/WIBE4KrL
         CdWn0hvYbYOKHzjaA2S1fC1BcfPPIbHliECuqD+GCQROtBu6hS3zMhPOA8042Da+bYK+
         S7Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Mk8+NnU2;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id z20si1120566ejx.1.2020.01.19.17.35.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 17:35:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Received: by mail-wr1-x429.google.com with SMTP id b6so27893606wrq.0
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 17:35:04 -0800 (PST)
X-Received: by 2002:adf:a308:: with SMTP id c8mr14808569wrb.240.1579484103988;
        Sun, 19 Jan 2020 17:35:03 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b68sm21383469wme.6.2020.01.19.17.35.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Jan 2020 17:35:03 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 20 Jan 2020 01:35:02 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <472903941.139.1579484103434.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig - Build # 23 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_138_1089078038.1579484102796"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Mk8+NnU2;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429
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

------=_Part_138_1089078038.1579484102796
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
<cut>
commit 0f957109761913c563922f1afd4ceb29ef21bbd0
Author: Roman Lebedev <lebedev.ri@gmail.com>

    [InstCombine] Shift amount reassociation: shl-trunc-shl pattern
</cut>

First few errors in logs of first_bad:
00:01:49 clang-10: error: unable to execute command: Aborted (core dumped)
00:01:49 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:49 make[2]: *** [kernel/dma/direct.o] Error 254
00:02:03 make[1]: *** [kernel/dma] Error 2
00:04:56 clang-10: error: unable to execute command: Aborted (core dumped)
00:04:56 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:04:56 make[3]: *** [drivers/clk/bcm/clk-bcm2835.o] Error 254
00:05:07 make[2]: *** [drivers/clk/bcm] Error 2
00:05:48 clang-10: error: unable to execute command: Aborted (core dumped)
00:05:48 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="5354c83ece00690b4dbfa47925f8f5a8f33f1d9e"

Results regressed to (for first_bad == 0f957109761913c563922f1afd4ceb29ef21bbd0)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18000

from (for last_good == 8fbb6ce847825ebda1dfcaee8a7bf88b4c4e3e52)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18088
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/artifact/artifacts/build-0f957109761913c563922f1afd4ceb29ef21bbd0/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/artifact/artifacts/build-8fbb6ce847825ebda1dfcaee8a7bf88b4c4e3e52/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/

Reproduce builds:
<cut>
mkdir investigate-llvm-0f957109761913c563922f1afd4ceb29ef21bbd0
cd investigate-llvm-0f957109761913c563922f1afd4ceb29ef21bbd0

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 0f957109761913c563922f1afd4ceb29ef21bbd0
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 8fbb6ce847825ebda1dfcaee8a7bf88b4c4e3e52
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/23/consoleText

Full commit:
<cut>
commit 0f957109761913c563922f1afd4ceb29ef21bbd0
Author: Roman Lebedev <lebedev.ri@gmail.com>
Date:   Tue Aug 6 17:03:40 2019 +0000

    [InstCombine] Shift amount reassociation: shl-trunc-shl pattern
    
    Summary:
    Currently `reassociateShiftAmtsOfTwoSameDirectionShifts()` only handles
    two shifts one after another. If the shifts are `shl`, we still can
    easily perform the fold, with no extra legality checks:
    https://rise4fun.com/Alive/OQbM
    
    If we have right-shift however, we won't be able to make it
    any simpler than it already is.
    
    After this the only thing missing here is constant-folding: (`NewShAmt >= bitwidth(X)`)
    * If it's a logical shift, then constant-fold to `0` (not `undef`)
    * If it's a `ashr`, then a splat of original signbit
    https://rise4fun.com/Alive/E1K
    https://rise4fun.com/Alive/i0V
    
    Reviewers: spatel, nikic, xbolva00
    
    Reviewed By: spatel
    
    Subscribers: hiraditya, llvm-commits
    
    Tags: #llvm
    
    Differential Revision: https://reviews.llvm.org/D65380
    
    llvm-svn: 368059
---
 llvm/include/llvm/IR/PatternMatch.h                |  6 ++
 .../Transforms/InstCombine/InstCombineShifts.cpp   | 90 ++++++++++++++++------
 ...ift-amount-reassociation-with-truncation-shl.ll | 61 ++++-----------
 3 files changed, 89 insertions(+), 68 deletions(-)

diff --git a/llvm/include/llvm/IR/PatternMatch.h b/llvm/include/llvm/IR/PatternMatch.h
index 2a9c3dd8c20..62cc59a5777 100644
--- a/llvm/include/llvm/IR/PatternMatch.h
+++ b/llvm/include/llvm/IR/PatternMatch.h
@@ -1270,6 +1270,12 @@ inline CastClass_match<OpTy, Instruction::ZExt> m_ZExt(const OpTy &Op) {
   return CastClass_match<OpTy, Instruction::ZExt>(Op);
 }
 
+template <typename OpTy>
+inline match_combine_or<CastClass_match<OpTy, Instruction::ZExt>, OpTy>
+m_ZExtOrSelf(const OpTy &Op) {
+  return m_CombineOr(m_ZExt(Op), Op);
+}
+
 template <typename OpTy>
 inline match_combine_or<CastClass_match<OpTy, Instruction::ZExt>,
                         CastClass_match<OpTy, Instruction::SExt>>
diff --git a/llvm/lib/Transforms/InstCombine/InstCombineShifts.cpp b/llvm/lib/Transforms/InstCombine/InstCombineShifts.cpp
index c0a1df6b9a7..b822761422c 100644
--- a/llvm/lib/Transforms/InstCombine/InstCombineShifts.cpp
+++ b/llvm/lib/Transforms/InstCombine/InstCombineShifts.cpp
@@ -27,42 +27,84 @@ using namespace PatternMatch;
 // This is valid for any shift, but they must be identical.
 static Instruction *
 reassociateShiftAmtsOfTwoSameDirectionShifts(BinaryOperator *Sh0,
-                                             const SimplifyQuery &SQ) {
-  // Look for:  (x shiftopcode ShAmt0) shiftopcode ShAmt1
-  Value *X, *ShAmt1, *ShAmt0;
+                                             const SimplifyQuery &SQ,
+                                             InstCombiner::BuilderTy &Builder) {
+  // Look for a shift of some instruction, ignore zext of shift amount if any.
+  Instruction *Sh0Op0;
+  Value *ShAmt0;
+  if (!match(Sh0,
+             m_Shift(m_Instruction(Sh0Op0), m_ZExtOrSelf(m_Value(ShAmt0)))))
+    return nullptr;
+
+  // If there is a truncation between the two shifts, we must make note of it
+  // and look through it. The truncation imposes additional constraints on the
+  // transform.
   Instruction *Sh1;
-  if (!match(Sh0, m_Shift(m_CombineAnd(m_Shift(m_Value(X), m_Value(ShAmt1)),
-                                       m_Instruction(Sh1)),
-                          m_Value(ShAmt0))))
+  Value *Trunc = nullptr;
+  match(Sh0Op0,
+        m_CombineOr(m_CombineAnd(m_Trunc(m_Instruction(Sh1)), m_Value(Trunc)),
+                    m_Instruction(Sh1)));
+
+  // Inner shift: (x shiftopcode ShAmt1)
+  Value *X, *ShAmt1;
+  if (!match(Sh1, m_Shift(m_Value(X), m_ZExtOrSelf(m_Value(ShAmt1)))))
     return nullptr;
 
   // The shift opcodes must be identical.
   Instruction::BinaryOps ShiftOpcode = Sh0->getOpcode();
   if (ShiftOpcode != Sh1->getOpcode())
     return nullptr;
+
+  // Did we match a pattern with truncation ?
+  if (Trunc) {
+    // For right-shifts we can't do any such simplifications. Leave as-is.
+    if (ShiftOpcode != Instruction::BinaryOps::Shl)
+      return nullptr; // FIXME: still could perform constant-folding.
+    // If we saw truncation, we'll need to produce extra instruction,
+    // and for that one of the operands of the shift must be one-use.
+    if (!match(Sh0, m_c_BinOp(m_OneUse(m_Value()), m_Value())))
+      return nullptr;
+  }
+
   // Can we fold (ShAmt0+ShAmt1) ?
-  Value *NewShAmt = SimplifyBinOp(Instruction::BinaryOps::Add, ShAmt0, ShAmt1,
-                                  SQ.getWithInstruction(Sh0));
+  auto *NewShAmt = dyn_cast_or_null<Constant>(
+      SimplifyAddInst(ShAmt0, ShAmt1, /*isNSW=*/false, /*isNUW=*/false,
+                      SQ.getWithInstruction(Sh0)));
   if (!NewShAmt)
     return nullptr; // Did not simplify.
-  // Is the new shift amount smaller than the bit width?
-  // FIXME: could also rely on ConstantRange.
-  unsigned BitWidth = X->getType()->getScalarSizeInBits();
-  if (!match(NewShAmt, m_SpecificInt_ICMP(ICmpInst::Predicate::ICMP_ULT,
-                                          APInt(BitWidth, BitWidth))))
-    return nullptr;
+  // Is the new shift amount smaller than the bit width of inner shift?
+  if (!match(NewShAmt, m_SpecificInt_ICMP(
+                           ICmpInst::Predicate::ICMP_ULT,
+                           APInt(NewShAmt->getType()->getScalarSizeInBits(),
+                                 X->getType()->getScalarSizeInBits()))))
+    return nullptr; // FIXME: could perform constant-folding.
+
   // All good, we can do this fold.
+  NewShAmt = ConstantExpr::getZExtOrBitCast(NewShAmt, X->getType());
+
   BinaryOperator *NewShift = BinaryOperator::Create(ShiftOpcode, X, NewShAmt);
-  // If both of the original shifts had the same flag set, preserve the flag.
-  if (ShiftOpcode == Instruction::BinaryOps::Shl) {
-    NewShift->setHasNoUnsignedWrap(Sh0->hasNoUnsignedWrap() &&
-                                   Sh1->hasNoUnsignedWrap());
-    NewShift->setHasNoSignedWrap(Sh0->hasNoSignedWrap() &&
-                                 Sh1->hasNoSignedWrap());
-  } else {
-    NewShift->setIsExact(Sh0->isExact() && Sh1->isExact());
+
+  // The flags can only be propagated if there wasn't a trunc.
+  if (!Trunc) {
+    // If the pattern did not involve trunc, and both of the original shifts
+    // had the same flag set, preserve the flag.
+    if (ShiftOpcode == Instruction::BinaryOps::Shl) {
+      NewShift->setHasNoUnsignedWrap(Sh0->hasNoUnsignedWrap() &&
+                                     Sh1->hasNoUnsignedWrap());
+      NewShift->setHasNoSignedWrap(Sh0->hasNoSignedWrap() &&
+                                   Sh1->hasNoSignedWrap());
+    } else {
+      NewShift->setIsExact(Sh0->isExact() && Sh1->isExact());
+    }
   }
-  return NewShift;
+
+  Instruction *Ret = NewShift;
+  if (Trunc) {
+    Builder.Insert(NewShift);
+    Ret = CastInst::Create(Instruction::Trunc, NewShift, Sh0->getType());
+  }
+
+  return Ret;
 }
 
 // If we have some pattern that leaves only some low bits set, and then performs
@@ -158,7 +200,7 @@ Instruction *InstCombiner::commonShiftTransforms(BinaryOperator &I) {
       return Res;
 
   if (Instruction *NewShift =
-          reassociateShiftAmtsOfTwoSameDirectionShifts(&I, SQ))
+          reassociateShiftAmtsOfTwoSameDirectionShifts(&I, SQ, Builder))
     return NewShift;
 
   // (C1 shift (A add C2)) -> (C1 shift C2) shift A)
diff --git a/llvm/test/Transforms/InstCombine/shift-amount-reassociation-with-truncation-shl.ll b/llvm/test/Transforms/InstCombine/shift-amount-reassociation-with-truncation-shl.ll
index 0f5965ba59e..3c63fa7aada 100644
--- a/llvm/test/Transforms/InstCombine/shift-amount-reassociation-with-truncation-shl.ll
+++ b/llvm/test/Transforms/InstCombine/shift-amount-reassociation-with-truncation-shl.ll
@@ -12,12 +12,8 @@
 
 define i16 @t0(i32 %x, i16 %y) {
 ; CHECK-LABEL: @t0(
-; CHECK-NEXT:    [[T0:%.*]] = sub i16 32, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext i16 [[T0]] to i32
-; CHECK-NEXT:    [[T2:%.*]] = shl i32 [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc i32 [[T2]] to i16
-; CHECK-NEXT:    [[T4:%.*]] = add i16 [[Y]], -24
-; CHECK-NEXT:    [[T5:%.*]] = shl i16 [[T3]], [[T4]]
+; CHECK-NEXT:    [[X_TR:%.*]] = trunc i32 [[X:%.*]] to i16
+; CHECK-NEXT:    [[T5:%.*]] = shl i16 [[X_TR]], 8
 ; CHECK-NEXT:    ret i16 [[T5]]
 ;
   %t0 = sub i16 32, %y
@@ -31,12 +27,8 @@ define i16 @t0(i32 %x, i16 %y) {
 
 define <2 x i16> @t1_vec_splat(<2 x i32> %x, <2 x i16> %y) {
 ; CHECK-LABEL: @t1_vec_splat(
-; CHECK-NEXT:    [[T0:%.*]] = sub <2 x i16> <i16 32, i16 32>, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext <2 x i16> [[T0]] to <2 x i32>
-; CHECK-NEXT:    [[T2:%.*]] = shl <2 x i32> [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc <2 x i32> [[T2]] to <2 x i16>
-; CHECK-NEXT:    [[T4:%.*]] = add <2 x i16> [[Y]], <i16 -24, i16 -24>
-; CHECK-NEXT:    [[T5:%.*]] = shl <2 x i16> [[T3]], [[T4]]
+; CHECK-NEXT:    [[TMP1:%.*]] = shl <2 x i32> [[X:%.*]], <i32 8, i32 8>
+; CHECK-NEXT:    [[T5:%.*]] = trunc <2 x i32> [[TMP1]] to <2 x i16>
 ; CHECK-NEXT:    ret <2 x i16> [[T5]]
 ;
   %t0 = sub <2 x i16> <i16 32, i16 32>, %y
@@ -50,12 +42,8 @@ define <2 x i16> @t1_vec_splat(<2 x i32> %x, <2 x i16> %y) {
 
 define <2 x i16> @t2_vec_nonsplat(<2 x i32> %x, <2 x i16> %y) {
 ; CHECK-LABEL: @t2_vec_nonsplat(
-; CHECK-NEXT:    [[T0:%.*]] = sub <2 x i16> <i16 32, i16 30>, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext <2 x i16> [[T0]] to <2 x i32>
-; CHECK-NEXT:    [[T2:%.*]] = shl <2 x i32> [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc <2 x i32> [[T2]] to <2 x i16>
-; CHECK-NEXT:    [[T4:%.*]] = add <2 x i16> [[Y]], <i16 -24, i16 0>
-; CHECK-NEXT:    [[T5:%.*]] = shl <2 x i16> [[T3]], [[T4]]
+; CHECK-NEXT:    [[TMP1:%.*]] = shl <2 x i32> [[X:%.*]], <i32 8, i32 30>
+; CHECK-NEXT:    [[T5:%.*]] = trunc <2 x i32> [[TMP1]] to <2 x i16>
 ; CHECK-NEXT:    ret <2 x i16> [[T5]]
 ;
   %t0 = sub <2 x i16> <i16 32, i16 30>, %y
@@ -71,12 +59,8 @@ define <2 x i16> @t2_vec_nonsplat(<2 x i32> %x, <2 x i16> %y) {
 
 define <3 x i16> @t3_vec_nonsplat_undef0(<3 x i32> %x, <3 x i16> %y) {
 ; CHECK-LABEL: @t3_vec_nonsplat_undef0(
-; CHECK-NEXT:    [[T0:%.*]] = sub <3 x i16> <i16 32, i16 undef, i16 32>, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext <3 x i16> [[T0]] to <3 x i32>
-; CHECK-NEXT:    [[T2:%.*]] = shl <3 x i32> [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc <3 x i32> [[T2]] to <3 x i16>
-; CHECK-NEXT:    [[T4:%.*]] = add <3 x i16> [[Y]], <i16 -24, i16 -24, i16 -24>
-; CHECK-NEXT:    [[T5:%.*]] = shl <3 x i16> [[T3]], [[T4]]
+; CHECK-NEXT:    [[TMP1:%.*]] = shl <3 x i32> [[X:%.*]], <i32 8, i32 0, i32 8>
+; CHECK-NEXT:    [[T5:%.*]] = trunc <3 x i32> [[TMP1]] to <3 x i16>
 ; CHECK-NEXT:    ret <3 x i16> [[T5]]
 ;
   %t0 = sub <3 x i16> <i16 32, i16 undef, i16 32>, %y
@@ -90,12 +74,8 @@ define <3 x i16> @t3_vec_nonsplat_undef0(<3 x i32> %x, <3 x i16> %y) {
 
 define <3 x i16> @t4_vec_nonsplat_undef1(<3 x i32> %x, <3 x i16> %y) {
 ; CHECK-LABEL: @t4_vec_nonsplat_undef1(
-; CHECK-NEXT:    [[T0:%.*]] = sub <3 x i16> <i16 32, i16 32, i16 32>, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext <3 x i16> [[T0]] to <3 x i32>
-; CHECK-NEXT:    [[T2:%.*]] = shl <3 x i32> [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc <3 x i32> [[T2]] to <3 x i16>
-; CHECK-NEXT:    [[T4:%.*]] = add <3 x i16> [[Y]], <i16 -24, i16 undef, i16 -24>
-; CHECK-NEXT:    [[T5:%.*]] = shl <3 x i16> [[T3]], [[T4]]
+; CHECK-NEXT:    [[TMP1:%.*]] = shl <3 x i32> [[X:%.*]], <i32 8, i32 0, i32 8>
+; CHECK-NEXT:    [[T5:%.*]] = trunc <3 x i32> [[TMP1]] to <3 x i16>
 ; CHECK-NEXT:    ret <3 x i16> [[T5]]
 ;
   %t0 = sub <3 x i16> <i16 32, i16 32, i16 32>, %y
@@ -109,12 +89,8 @@ define <3 x i16> @t4_vec_nonsplat_undef1(<3 x i32> %x, <3 x i16> %y) {
 
 define <3 x i16> @t5_vec_nonsplat_undef1(<3 x i32> %x, <3 x i16> %y) {
 ; CHECK-LABEL: @t5_vec_nonsplat_undef1(
-; CHECK-NEXT:    [[T0:%.*]] = sub <3 x i16> <i16 32, i16 undef, i16 32>, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext <3 x i16> [[T0]] to <3 x i32>
-; CHECK-NEXT:    [[T2:%.*]] = shl <3 x i32> [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc <3 x i32> [[T2]] to <3 x i16>
-; CHECK-NEXT:    [[T4:%.*]] = add <3 x i16> [[Y]], <i16 -24, i16 undef, i16 -24>
-; CHECK-NEXT:    [[T5:%.*]] = shl <3 x i16> [[T3]], [[T4]]
+; CHECK-NEXT:    [[TMP1:%.*]] = shl <3 x i32> [[X:%.*]], <i32 8, i32 0, i32 8>
+; CHECK-NEXT:    [[T5:%.*]] = trunc <3 x i32> [[TMP1]] to <3 x i16>
 ; CHECK-NEXT:    ret <3 x i16> [[T5]]
 ;
   %t0 = sub <3 x i16> <i16 32, i16 undef, i16 32>, %y
@@ -137,9 +113,9 @@ define i16 @t6_extrause0(i32 %x, i16 %y) {
 ; CHECK-NEXT:    [[T1:%.*]] = zext i16 [[T0]] to i32
 ; CHECK-NEXT:    [[T2:%.*]] = shl i32 [[X:%.*]], [[T1]]
 ; CHECK-NEXT:    [[T3:%.*]] = trunc i32 [[T2]] to i16
-; CHECK-NEXT:    [[T4:%.*]] = add i16 [[Y]], -24
 ; CHECK-NEXT:    call void @use16(i16 [[T3]])
-; CHECK-NEXT:    [[T5:%.*]] = shl i16 [[T3]], [[T4]]
+; CHECK-NEXT:    [[X_TR:%.*]] = trunc i32 [[X]] to i16
+; CHECK-NEXT:    [[T5:%.*]] = shl i16 [[X_TR]], 8
 ; CHECK-NEXT:    ret i16 [[T5]]
 ;
   %t0 = sub i16 32, %y
@@ -154,13 +130,10 @@ define i16 @t6_extrause0(i32 %x, i16 %y) {
 
 define i16 @t7_extrause1(i32 %x, i16 %y) {
 ; CHECK-LABEL: @t7_extrause1(
-; CHECK-NEXT:    [[T0:%.*]] = sub i16 32, [[Y:%.*]]
-; CHECK-NEXT:    [[T1:%.*]] = zext i16 [[T0]] to i32
-; CHECK-NEXT:    [[T2:%.*]] = shl i32 [[X:%.*]], [[T1]]
-; CHECK-NEXT:    [[T3:%.*]] = trunc i32 [[T2]] to i16
-; CHECK-NEXT:    [[T4:%.*]] = add i16 [[Y]], -24
+; CHECK-NEXT:    [[T4:%.*]] = add i16 [[Y:%.*]], -24
 ; CHECK-NEXT:    call void @use16(i16 [[T4]])
-; CHECK-NEXT:    [[T5:%.*]] = shl i16 [[T3]], [[T4]]
+; CHECK-NEXT:    [[X_TR:%.*]] = trunc i32 [[X:%.*]] to i16
+; CHECK-NEXT:    [[T5:%.*]] = shl i16 [[X_TR]], 8
 ; CHECK-NEXT:    ret i16 [[T5]]
 ;
   %t0 = sub i16 32, %y
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/472903941.139.1579484103434.JavaMail.javamailuser%40localhost.

------=_Part_138_1089078038.1579484102796--
