Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBQUZWDZQKGQE7E2RJVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F227F1851C4
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 23:44:18 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id j13sf3776487lfg.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 15:44:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584139458; cv=pass;
        d=google.com; s=arc-20160816;
        b=AaU0zBvi21ybAhhGbUSeiQSFudb0zQ/4Vave71UhiOH+kt/hNepEcoCyPGtQHI5pFP
         0wJXerHdbu30VPjgvYuCRnEm6esKyS0u9h0dozsr5OcD2OYuW4F6BC/MBD0kDMp4dLHb
         b0E25gvupkrDXdDxD3PnuD/8RnQJBLPBh5xNSep7EzJiM2Q8z+fAV7U9UiFru8J9wGo3
         ojYCoajbrVrNDoqZZN5R+nDeI0fFlPiL8n+PMikkpTifhe4Zk5v1ZOfCpiDssSjQGahm
         Io9gAz+/VOzon9ptwQD2HZfT0lejQiBhZ2Uyfz/3CduHe+4thtHSqksf7y6eX6niIKbE
         H+dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=hSt6r2Ml6sjQBACQ/fYDWP6wpRp5MpNWV0TcVouLqXY=;
        b=Vn8Nu3rpSK2S0StdvxnXrbJLRHIhi3AN8i0C8+9i3GMkosKnQBxp4yquYLgXV5eley
         91FJrFtzu0wVlGesaihTc619cpAA//6hn52rFbgNdu2xtWKeNdctWnJLbdKHHCt3lXH0
         ftf/4f++FHu37K6aPpEZECfJCjPLV88UA7sd9MV0N3e/RlWOWJZGFqPOyDgdEYw/aiFc
         Vs4S65y3Ao5GCC50f5fU5vvjQOubtqMQdF/8NbjFn4cNaUIlPZqoCFxBCjozphzkPTcv
         atav1VEeS2e738NGPqYwjVrUU/RTO5FiBFC5UlLSL7UzFp9+tyP+670Z41uTyb8EI029
         8nVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TXBnqAtA;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hSt6r2Ml6sjQBACQ/fYDWP6wpRp5MpNWV0TcVouLqXY=;
        b=FzG4qs1RWSaB4p0vPXyKfmlsHzjVlNW7v1YYiMQwOxjE9i9o0OvsPYYRc/hTIQ50MS
         iCpjznxYuWUtcqld01p+Jd4cn7yPTWzexXPbSCH0wK7S0HLru7DVUeGRGl233mK05YKl
         ShpDXLRH3VhX66bzMcty4tWHnD2zIIp/7Qnfqnlr6NGPnkvaUVL8fPneMM5xOA0bQftz
         o/ZSUAB1tn7SOww2/cAtRctOUhazBJzLi6ZHFu2zAwZWt/v5M48o2JAMhg3IxGjRuQC3
         K2/6jOJQ8PRpWh9of658xqnViLfm8y2Fbtpv/QgzilejZmAZ2it7AzUriFiBF3S9aOpE
         ejJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hSt6r2Ml6sjQBACQ/fYDWP6wpRp5MpNWV0TcVouLqXY=;
        b=WA2nenM+tYYs8fWK4j79Bav6YnWtGAgqGHBcGt5Gies10zpXdRxdimyLAFGMT8OC6s
         U1TSzCa6rlEOR9fTVn2kaJT5zdDTlsMs8fevB4eksqe1044i4P0JTwlD0x7o5H7TDkxi
         bCluHowLTmDvtzUm7+xInHIV+f450rvldgOmVE/wirb9iNwWKOEB6IHP/Mm1PpzA2kwB
         tVcdj3yMyYawAsPxqwuA37bep8yX7BmdeNErsk5ZZu4bnttYt8VuUXynGJJCXW8qGGMR
         ukd/zJQzJVsRy4bsIRc5k3ABbj9SkohZWUiUg5li53BxvCYuH2LHaLIaAgl7EZRNMSoT
         LrZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3USEPlSafV3F4wQO57LzuPgHEWasFdbOFxrDv/T1NssJnykUMu
	hlFlAZtuVaRf66/Bv6JXsAw=
X-Google-Smtp-Source: ADFU+vvnsVNt5IGjUlDGzlblCekGSo0kFk7NXLZ96sT9X+0fCnlMl3pIGmGFLuvgZvkIkOEOtjX8sg==
X-Received: by 2002:a2e:2a44:: with SMTP id q65mr9883141ljq.8.1584139458439;
        Fri, 13 Mar 2020 15:44:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls2166438ljh.2.gmail; Fri, 13 Mar
 2020 15:44:17 -0700 (PDT)
X-Received: by 2002:a2e:9c8e:: with SMTP id x14mr9766339lji.65.1584139457816;
        Fri, 13 Mar 2020 15:44:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584139457; cv=none;
        d=google.com; s=arc-20160816;
        b=xy8RK+9+tafpUu6cff3j2rMoYYRhDMlYNtDClEFNcqNiX0XgnpeUTkFSyhFbD3XKIw
         leQLtJTj1388Ps6KRwQnHIkQ5W1aNixM4TJGivf7XsB+ydSgOrGTa5dr/KqwDrFmw0bs
         JC+92Y8kDmCgWuzQ41K5sHmmF1fGJAldi+EKq3XBqlFdipvVUq30kJOyyZkgpMRDMexx
         HfS27j8w2z9xFH4mpzj8msQvyIH+2/TGXycvapGrgixY7lCsX/8D/BXbO3Hlo7gzyEv+
         i4N5fboZwsMPkhHZLkG/ipuaHRpEUe1pee3MlEN3p8w85g0mU/07hbPgqpYHW/59U5OL
         +tiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=o8NspM2HySIn9BI+n8ppp9tQqIGjJcU9iLGr0W3lgV4=;
        b=eGeuS8oLc4+AcroatHDvebxQ+3cH+Ca/YdAEVu3/7lnC3babjHNkRP6XPWw3wJgwe1
         mcqn66GgS6jG6M3rZb/RbZbE8YlqxNiElgHNLIlvAYABdSVRJdmAkk//diQvBCzUu/Xm
         TTEoXVStxOusg4oFFnDNO81pQths+v/oue9NvjjY78n4tjtx7oXSKGjqhRfoB0z0N/qm
         7VFpiJwgR6LUghXcEaYFy+QiJr1ygEZN99zIJbFVvOWOCNGVRnSJc+98WRz/4QfqRFeo
         RAPkXwhZ+Dts+5cPpqtqpyU4Dr/+VaEUbWYI3uJHySkYKHMjlyrOi2vkj+UOLo7/SGZQ
         eOvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TXBnqAtA;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id s8si593838ljg.0.2020.03.13.15.44.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 15:44:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Received: by mail-wm1-x32a.google.com with SMTP id 25so11574890wmk.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 15:44:17 -0700 (PDT)
X-Received: by 2002:a1c:3241:: with SMTP id y62mr13423013wmy.66.1584139456843;
        Fri, 13 Mar 2020 15:44:16 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 19sm19228267wma.3.2020.03.13.15.44.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2020 15:44:16 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 13 Mar 2020 22:44:15 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <278254926.9984.1584139456203.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 27 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9983_1545341319.1584139455598"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=TXBnqAtA;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32a
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

------=_Part_9983_1545341319.1584139455598
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Culprit:
<cut>
commit fcc2238b8bfb9498b46a48d219193de8c00a25a0
Author: Ehud Katz <ehudkatz@gmail.com>
Date:   Fri Mar 13 15:32:43 2020 +0200

    [SCEV] Add missing cache queries
    
    Calculating SCEVs can be cumbersome, and may take very long time (even
    hours, for very long expressions). To prevent recalculating expressions
    over and over again, we cache them.
    This change add cache queries to key positions, to prevent recalculation
    of the expressions.
    
    Fix PR43571.
    
    Differential Revision: https://reviews.llvm.org/D70097
</cut>

First few build errors in logs:
00:14:41 clang-11: error: unable to execute command: Aborted (core dumped)
00:14:41 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:14:41 make[3]: *** [drivers/input/joystick/db9.o] Error 254
00:15:25 make[2]: *** [drivers/input/joystick] Error 2
00:17:08 clang-11: error: unable to execute command: Aborted (core dumped)
00:17:08 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:17:08 make[3]: *** [drivers/net/slip/slip.o] Error 254
00:17:09 make[2]: *** [drivers/net/slip] Error 2
00:17:47 make[1]: *** [drivers/input] Error 2
00:27:10 clang-11: error: unable to execute command: Aborted (core dumped)
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="43252c1b17b9a199c6a1673996cf61e1cfff90c8"

Results regressed to (for first_bad == fcc2238b8bfb9498b46a48d219193de8c00a25a0)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18455

from (for last_good == a0c15ed46056a5c8bc6f86d6d636b6375354efc6)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18458

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/build-fcc2238b8bfb9498b46a48d219193de8c00a25a0/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/build-a0c15ed46056a5c8bc6f86d6d636b6375354efc6/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/

Reproduce builds:
<cut>
mkdir investigate-llvm-fcc2238b8bfb9498b46a48d219193de8c00a25a0
cd investigate-llvm-fcc2238b8bfb9498b46a48d219193de8c00a25a0

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach fcc2238b8bfb9498b46a48d219193de8c00a25a0
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach a0c15ed46056a5c8bc6f86d6d636b6375354efc6
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/consoleText

Full commit:
<cut>
commit fcc2238b8bfb9498b46a48d219193de8c00a25a0
Author: Ehud Katz <ehudkatz@gmail.com>
Date:   Fri Mar 13 15:32:43 2020 +0200

    [SCEV] Add missing cache queries
    
    Calculating SCEVs can be cumbersome, and may take very long time (even
    hours, for very long expressions). To prevent recalculating expressions
    over and over again, we cache them.
    This change add cache queries to key positions, to prevent recalculation
    of the expressions.
    
    Fix PR43571.
    
    Differential Revision: https://reviews.llvm.org/D70097
---
 llvm/include/llvm/Analysis/ScalarEvolution.h |  2 +-
 llvm/lib/Analysis/ScalarEvolution.cpp        | 49 +++++++++++++++++++++-------
 2 files changed, 39 insertions(+), 12 deletions(-)

diff --git a/llvm/include/llvm/Analysis/ScalarEvolution.h b/llvm/include/llvm/Analysis/ScalarEvolution.h
index faedc1b241c..fcb5c887acd 100644
--- a/llvm/include/llvm/Analysis/ScalarEvolution.h
+++ b/llvm/include/llvm/Analysis/ScalarEvolution.h
@@ -1899,7 +1899,7 @@ private:
   /// otherwise.  The second component is the `FoldingSetNodeID` that was
   /// constructed to look up the SCEV and the third component is the insertion
   /// point.
-  std::tuple<const SCEV *, FoldingSetNodeID, void *>
+  std::tuple<SCEV *, FoldingSetNodeID, void *>
   findExistingSCEVInCache(int SCEVType, ArrayRef<const SCEV *> Ops);
 
   FoldingSet<SCEV> UniqueSCEVs;
diff --git a/llvm/lib/Analysis/ScalarEvolution.cpp b/llvm/lib/Analysis/ScalarEvolution.cpp
index eeb5e507b0b..debd03bf47b 100644
--- a/llvm/lib/Analysis/ScalarEvolution.cpp
+++ b/llvm/lib/Analysis/ScalarEvolution.cpp
@@ -2452,6 +2452,11 @@ const SCEV *ScalarEvolution::getAddExpr(SmallVectorImpl<const SCEV *> &Ops,
   if (Depth > MaxArithDepth || hasHugeExpression(Ops))
     return getOrCreateAddExpr(Ops, Flags);
 
+  if (SCEV *S = std::get<0>(findExistingSCEVInCache(scAddExpr, Ops))) {
+    static_cast<SCEVAddExpr *>(S)->setNoWrapFlags(Flags);
+    return S;
+  }
+
   // Okay, check to see if the same value occurs in the operand list more than
   // once.  If so, merge them together into an multiply expression.  Since we
   // sorted the list, these values are required to be adjacent.
@@ -2931,6 +2936,11 @@ const SCEV *ScalarEvolution::getMulExpr(SmallVectorImpl<const SCEV *> &Ops,
   if (Depth > MaxArithDepth || hasHugeExpression(Ops))
     return getOrCreateMulExpr(Ops, Flags);
 
+  if (SCEV *S = std::get<0>(findExistingSCEVInCache(scMulExpr, Ops))) {
+    static_cast<SCEVMulExpr *>(S)->setNoWrapFlags(Flags);
+    return S;
+  }
+
   // If there are any constants, fold them together.
   unsigned Idx = 0;
   if (const SCEVConstant *LHSC = dyn_cast<SCEVConstant>(Ops[0])) {
@@ -3193,6 +3203,14 @@ const SCEV *ScalarEvolution::getUDivExpr(const SCEV *LHS,
          getEffectiveSCEVType(RHS->getType()) &&
          "SCEVUDivExpr operand types don't match!");
 
+  FoldingSetNodeID ID;
+  ID.AddInteger(scUDivExpr);
+  ID.AddPointer(LHS);
+  ID.AddPointer(RHS);
+  void *IP = nullptr;
+  if (const SCEV *S = UniqueSCEVs.FindNodeOrInsertPos(ID, IP))
+    return S;
+
   if (const SCEVConstant *RHSC = dyn_cast<SCEVConstant>(RHS)) {
     if (RHSC->getValue()->isOne())
       return LHS;                               // X udiv 1 --> x
@@ -3239,9 +3257,24 @@ const SCEV *ScalarEvolution::getUDivExpr(const SCEV *LHS,
                             AR->getLoop(), SCEV::FlagAnyWrap)) {
             const APInt &StartInt = StartC->getAPInt();
             const APInt &StartRem = StartInt.urem(StepInt);
-            if (StartRem != 0)
-              LHS = getAddRecExpr(getConstant(StartInt - StartRem), Step,
-                                  AR->getLoop(), SCEV::FlagNW);
+            if (StartRem != 0) {
+              const SCEV *NewLHS =
+                  getAddRecExpr(getConstant(StartInt - StartRem), Step,
+                                AR->getLoop(), SCEV::FlagNW);
+              if (LHS != NewLHS) {
+                LHS = NewLHS;
+
+                // Reset the ID to include the new LHS, and check if it is
+                // already cached.
+                ID.clear();
+                ID.AddInteger(scUDivExpr);
+                ID.AddPointer(LHS);
+                ID.AddPointer(RHS);
+                IP = nullptr;
+                if (const SCEV *S = UniqueSCEVs.FindNodeOrInsertPos(ID, IP))
+                  return S;
+              }
+            }
           }
         }
       // (A*B)/C --> A*(B/C) if safe and B/C can be folded.
@@ -3306,12 +3339,6 @@ const SCEV *ScalarEvolution::getUDivExpr(const SCEV *LHS,
     }
   }
 
-  FoldingSetNodeID ID;
-  ID.AddInteger(scUDivExpr);
-  ID.AddPointer(LHS);
-  ID.AddPointer(RHS);
-  void *IP = nullptr;
-  if (const SCEV *S = UniqueSCEVs.FindNodeOrInsertPos(ID, IP)) return S;
   SCEV *S = new (SCEVAllocator) SCEVUDivExpr(ID.Intern(SCEVAllocator),
                                              LHS, RHS);
   UniqueSCEVs.InsertNode(S, IP);
@@ -3537,7 +3564,7 @@ ScalarEvolution::getGEPExpr(GEPOperator *GEP,
   return getAddExpr(BaseExpr, TotalOffset, Wrap);
 }
 
-std::tuple<const SCEV *, FoldingSetNodeID, void *>
+std::tuple<SCEV *, FoldingSetNodeID, void *>
 ScalarEvolution::findExistingSCEVInCache(int SCEVType,
                                          ArrayRef<const SCEV *> Ops) {
   FoldingSetNodeID ID;
@@ -3545,7 +3572,7 @@ ScalarEvolution::findExistingSCEVInCache(int SCEVType,
   ID.AddInteger(SCEVType);
   for (unsigned i = 0, e = Ops.size(); i != e; ++i)
     ID.AddPointer(Ops[i]);
-  return std::tuple<const SCEV *, FoldingSetNodeID, void *>(
+  return std::tuple<SCEV *, FoldingSetNodeID, void *>(
       UniqueSCEVs.FindNodeOrInsertPos(ID, IP), std::move(ID), IP);
 }
 
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/278254926.9984.1584139456203.JavaMail.javamailuser%40localhost.

------=_Part_9983_1545341319.1584139455598--
