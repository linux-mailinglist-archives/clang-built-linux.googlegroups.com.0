Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBOP2SHYQKGQEGE4RECA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E974141EF2
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 17:00:58 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id c2sf20127445edx.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 08:00:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579449658; cv=pass;
        d=google.com; s=arc-20160816;
        b=KuZKoedtbmPt5EG2BaKQQPQcwmRp1LkzhjRjq+ldpsSeFh5Hf37ZPkMopiH3yGBncZ
         EHHQ7FS2hGXb4TNObLW8UDi/13Uy2IDad4gX8mVwp/5ZzLOkFpLYQODLOljIWiZxDnto
         ygHblNg6t9pOO8DX2NbAnAkMxcihLmY8MpcULy4+y4U193aR/CcmgdGt4FzfCNf8Jumj
         iziHyVXQzBs2EB7IQrBIKsMvfAWjZd3Or4l0tdKZEJiCpMSbo7aKAj6jdVRe01xAol86
         LB1McB5OpZ0BTwky6LlykliWfBCA+CxkL7PbxSIVuxO8ywzDsz6LYi+V77dNMX9mTLa1
         j7xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=q7uFBjj3m4rczho/tazIvQmmhh3me5ssqJeajkfvHHQ=;
        b=n8NxWc0qg6Xj6wMYlqPRP6E1w/vOfI68PuAxMRFBOYbclCnT416kGwutzthCxAmq8K
         Ac28WpOKWERfQ+uHv0iCIkLQRlDypbi9A7sa2lxH9gwWN/3aSJBIxzyLUkFXB3NosVEN
         AzzbB/i57IdcEKNJHDA3Ci3fBnHKsC9Ja9U1Wea/2+pA7miBvAJ7fb2/lfGGk9E7hvni
         a1be3QVa5FP+KAmaI4JDEmG4lKl0Gk5UJpChWoLXETBT87FA8QBGOAnkqU+DjnRhvQ+e
         smViR7QKIQGyf1kzI8v+epD8YCIO1P5w5nyYADocbUXdiw8BzNJNEXvLNo1BSp11SUj1
         TGSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vloIWTeg;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q7uFBjj3m4rczho/tazIvQmmhh3me5ssqJeajkfvHHQ=;
        b=m5TY2tb8iELFkkrE0PKY+oU3C9mLeXFa7BY7LgfB2sP8o8xVlVezMXo54v+CbTQLds
         M4kaix6dxgH1vB35mTYQzN5NbKDj5wv47xEap/rfJ8uxy8/p8O3lQf+0Qt8WqkeoigH/
         DJPBdlMwoXTWUVAOIcdNEuUNGmff4NEKjYLoHgGgSFxR34wsNAk1ejJ7AVEsza5DWAz7
         78hjaF4egulNAZ35nel8WhcnAiJdNdLkPZJRISgekzaxtBTpeQqMTZ4HP3TilOls1dtx
         gLuuyXItNLwTXszjyW8p5FeylX7C3hMUb6xdCHskveokYPde+GbH8wmFBWqAeNHlpQzt
         gbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q7uFBjj3m4rczho/tazIvQmmhh3me5ssqJeajkfvHHQ=;
        b=j0QLFEZlRXouEG8qxOgvM0KEWDaLEEWQRen7xCIwJ6fpHt/mDJQlPoViSFfEE/HTdB
         aT/+GCYwzruBmbbghNfKcWan1PWEb6ePYbbmLCg2cFpqbmVVgA/tKNmbsTBeCcqGHaKy
         mDiriyVYj9578IuYSfXZkuzWNMN9Jg5TAN61xQ6RLWR8RusG8/HZ28q42GljqW2mEZrR
         WkyeDg/yKmsOyNBB8oqNuBGmlxID2C9fSPua6QaYICBO9gwp1YMlZfNoSauzE5OhT+vl
         pSrOsAwldYWX3ZCYSS3NbwnI7kv+LmZFPALeMVCmlGV4RYGfAXnNr+SYfWv39d06CqIV
         4P6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwCICZ7WeGLjq+n+0uXcL0BnV5WxHpjnlyRsVtvCytPFj8u1dn
	pDpFI09ba7Oldu9lBZswtbE=
X-Google-Smtp-Source: APXvYqwORlYuIimdzPvomASrSZzaL+SXrihnawYNXoU+DJY3wae/5XttOHOhPbP2e5u0D9fdDsT1Wg==
X-Received: by 2002:a05:6402:b7a:: with SMTP id cb26mr13443534edb.2.1579449657694;
        Sun, 19 Jan 2020 08:00:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d6c8:: with SMTP id x8ls7462906edr.14.gmail; Sun, 19 Jan
 2020 08:00:57 -0800 (PST)
X-Received: by 2002:a50:8d13:: with SMTP id s19mr14076466eds.40.1579449656993;
        Sun, 19 Jan 2020 08:00:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579449656; cv=none;
        d=google.com; s=arc-20160816;
        b=vCcY+tax4P56H+Abcyr3P7jGT3FmtPF3aI0vH7NVX4nq+NbiaVLCwIVCTZtXkAojQt
         dTBSqDa75IyYqDrJMJPuCLxrDDBLMF1yDIucjo6mhozcc7ru5vfWTZgQF3TBuQdIQxpv
         IQC/zxgte7wmI3CQlXnsL1tZ9AInobtwmIKwSfYz/uhaEvf+QQOgP8BXIn4Y+8IgMjJ3
         xBRxLJCcs74DA6oxVnlyQ8VRdqawwcOyfMGLaok5EmjGHnqe4ugva6Q4vkwArmL0v+bR
         ll4+kn0tii1e138Rmq2dD9JUwUoV38zwBNUG0MgWnLA8E6kq8cE2LwQGrn29GMc8HJ0M
         WsIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=8SKKInuOMpCLi4HB4bhTVe5NBuoyXQYb/JGXr3SKFxM=;
        b=wrkGed2k6jvWMw8iOVht6ITBU9S0Rp3o5THWvh92Q3EEfmug9kdpN+/LDNUMrEBG8X
         H8ERie/8HtNCnObyoHOG54jubRILLePNEfVWafiKXLPsPX9kWbgbgIdqCn2Ef8tpC+GB
         2mo58RJGlYvUWydu22Ww3DJMQ4SeeJPtxWFAOmWODtIowYMgRXFGeL0Dm9GnQSqSn+y8
         8tdYV/k6MHzo/JoLJ1zALeMmbdBtkHu9ariP+0pCKSEWk7wJa19VvfBCfYBzvMr1Y8b9
         Bn4/9FsT9Nh7jczfXDkzedJwdcpwLeaYhCW9GXBUFH4b+d5XySjC88+0R63CMvdM/blg
         vAbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vloIWTeg;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id x18si1330174eds.2.2020.01.19.08.00.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 08:00:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id z7so27005034wrl.13
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 08:00:56 -0800 (PST)
X-Received: by 2002:a5d:4085:: with SMTP id o5mr13688239wrp.321.1579449656113;
        Sun, 19 Jan 2020 08:00:56 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id f1sm44616430wrp.93.2020.01.19.08.00.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Jan 2020 08:00:55 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 19 Jan 2020 16:00:54 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <198927633.100.1579449655484.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 47 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_99_913235866.1579449654576"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vloIWTeg;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434
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

------=_Part_99_913235866.1579449654576
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
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
</cut>

First few errors in logs of first_bad:
00:03:06 clang-10: error: unable to execute command: Aborted (core dumped)
00:03:06 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:03:06 make[2]: *** [fs/ext4/super.o] Error 254
00:03:17 make[1]: *** [fs/ext4] Error 2
00:03:25 clang-10: error: unable to execute command: Aborted (core dumped)
00:03:25 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:03:26 make[2]: *** [kernel/dma/direct.o] Error 254
00:03:32 make[1]: *** [kernel/dma] Error 2
00:05:26 clang-10: error: unable to execute command: Aborted (core dumped)
00:05:26 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="5354c83ece00690b4dbfa47925f8f5a8f33f1d9e"

Results regressed to (for first_bad == 0f957109761913c563922f1afd4ceb29ef21bbd0)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18189

from (for last_good == 8fbb6ce847825ebda1dfcaee8a7bf88b4c4e3e52)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18276
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/artifact/artifacts/build-0f957109761913c563922f1afd4ceb29ef21bbd0/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/artifact/artifacts/build-8fbb6ce847825ebda1dfcaee8a7bf88b4c4e3e52/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/

Reproduce builds:
<cut>
mkdir investigate-llvm-0f957109761913c563922f1afd4ceb29ef21bbd0
cd investigate-llvm-0f957109761913c563922f1afd4ceb29ef21bbd0

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/47/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/198927633.100.1579449655484.JavaMail.javamailuser%40localhost.

------=_Part_99_913235866.1579449654576--
