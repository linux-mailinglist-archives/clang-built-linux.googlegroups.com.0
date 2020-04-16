Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBPP4372AKGQEUEOSE4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FE21AB842
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 08:42:05 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id v22sf2102935lfa.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 23:42:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587019325; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dzpphi+KYkYSNsedx8WeHq7MBKb7kJ/2LaojF+URZ5sKY9z8V5sBeEYxbe4L7C8bCK
         52U4qbusGB6kz9Brb84pVXjjycAo1fSOAxYhitI1C3rwoFP/BDd3xsI9OOfpUPvkIohA
         AgyZg3/pINIsS0P4sJf1/rlF1EooC8aotyq4Lqg0iZq2aO+wx9Oh1EldJdgTjLrJvLFQ
         1pMFpt0U6+mvyFTpy0sGCvEOOrov9uwqhg4+EofenTdAZGo+i/na1/FAb8vaIShThzeg
         CeMHs+MM4Iww5nSDzQKMT5TiGK4yjIr+nAngGqYhsKxAdKO3MLyRzPbJ3K4vaCLRDaF3
         Obrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Udh7x2wr21d7nv7omEjAd3xjXsDFaFuL9zQyuEC87Jc=;
        b=FEHo/tgH94m3qe2kW7zH6hQb7pKlG77/VZLVOXHcv9Ap3E+qScN3P5e3c+q2Ln1tWm
         UAvmcvOIx49ectRkyQO4+R0m2ha9yhAPtk61AKZIv9UlBurSTDnFXrymhOrNNXQ7POcK
         0ujwg4RDG1mmJwUlErTy3+QWDMFXSba4EJbf1Qp1nPL466Vw+SdTZxscBpz8npaZY9hg
         Mx+HUiy3hxnH6dIfoV1BjDNQra2ZnbwYygHXmpNPYRPlmyM3s/6K54+TmOBo/8yIlUHB
         HyQma32tIOEzaYFNbt0rPJnsEOX59uvGuB/Fbr7elZBS1UR0lSu3+RDlXhB10e9Zvc4g
         EhNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mAKEaWaj;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Udh7x2wr21d7nv7omEjAd3xjXsDFaFuL9zQyuEC87Jc=;
        b=ICeKxiDGVKPe58wswPHc4g4zZxN3ZuSkvtQ6eahURSB8Jyo/ZeaAu76KJFrAojZ7/d
         /W1IWYoLtiPjCefoogrD+9zvH/XB2r2CW8cKbhZepwlBYqDIBKr/Lh/e+cBNMMW/r8yp
         xodBdF6MxKJHicHTsGNtTjsusR8hjzQB5IBGLZ0//By+b60klBZX0nXk+gDURDkZP6uo
         iCyREtssDaJJyIDR8ZBMV+ssQN0c62G1Owxi92603PhxB9oxtWUuAoWRkgQjhj4L2111
         xnqfdmYoBxH+GM55cTNeC2bYPgcoCr+At/KIE/XFLkWk88M+1FU+O7HqafiUdIFe1IPW
         97og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Udh7x2wr21d7nv7omEjAd3xjXsDFaFuL9zQyuEC87Jc=;
        b=sJB6tavNkl3SrYJn3iuwXSBIp/3o0QmaskFyUgwUc86lxCsrkDq344KFfp31rvMl47
         dJgcjeEurEXkRgww97JcJgdJmuGMbtP8VFrWfQqMzYJHW2qFQEReriFbdKYOal/6jdqr
         ryZQVHhaUUGjweFMxUyGsltYhuk31O6W0mQECK/ZRSZjMcdgQOtOaESAXoEOVwLxDwXR
         eFjAgjRzrttksQt6vkPozDmi4S3SO7wrrtnh6ld+UKrXKteMxl9gBIJDV3kNChN0+RJ0
         rjuIXrVXavBeNXPc428O/eT4BcUnz7M21Iy0GPbwn285mwdCG2lAoDym2KHWMb7gbwqX
         X09w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYRxdHklMQ2YOxQcSod+995l6Z+i0pLOqqbK8I1aQJWSk4nOLvn
	kS1My5sRiUsbrZvNCVxlw3s=
X-Google-Smtp-Source: APiQypLKRNATT/B241k4W7WimG1e4pqKUJ478pF27poFeGcx3IqpCkwg+wnoHHndn+czLHESMvS61w==
X-Received: by 2002:a2e:8056:: with SMTP id p22mr5655931ljg.266.1587019325438;
        Wed, 15 Apr 2020 23:42:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b883:: with SMTP id r3ls1947653ljp.2.gmail; Wed, 15 Apr
 2020 23:42:04 -0700 (PDT)
X-Received: by 2002:a05:651c:552:: with SMTP id q18mr5712145ljp.1.1587019324476;
        Wed, 15 Apr 2020 23:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587019324; cv=none;
        d=google.com; s=arc-20160816;
        b=R4pbenPx3LuqM0AGM2CHwcniS3IFHAJPm2yMmBGa4WkBL15eJGdz/l77AIQ5x/pXBs
         ncNEyBc4fDXnVjhvyjZykSG6kXGyYNGjhUVr3bIQfrFQsWSELU+nGxaMImdrmLjYQsPm
         xrPXvQhsG49qv0y0ouH0nOcaOvxrm9dTBwyhuCP5HzorYGaq4AXzNi7Saq6vGoWcULD6
         yJUQ+dlg6o8hu86aO4W4pkeNPuLlvF65j6hrqIonXAwC501YiwXZYqfXWxnzutYLW7l1
         xEEsgja7SBvHZpj2eKJv0bqPBOQxwmOkAm6oTsbUWd7mHYFN29cZfHrZ/veCAlZvUaUA
         dNew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=uqgx6n/gdh/Leq0C8i7Gw0qraME/TlBB2V0cYs2IuoM=;
        b=LesanMKSKdUQ4PbSuitwt4Wei5vBTjqDtsNuguPaBDRF7TUviL5uC9QvhRZncsg2sd
         YgCV+g7RehHgjsTCpmMo0oWSICjfFEEdti+2Hjl8pqcPE58vqZqzugUH0i3svKOA+gKK
         qsvG8SDv5Qcg1NIdK4eCGh8ro5446Q0xg8dbmqvKGGrXBP5Is39zXaeEer+1X7Lt1Cfb
         5lLoeWQGp+rQ7qUgT/5iZKVrY8weci3UVENWRFaXiEFAytZUFtc6u+yKXno1i6N5s2oH
         eaCw5/ot6jaP2t186uPQslXlPUm8EvsTLdQBoMnKZSy0AbHmRXbx4WVuCOJxuUhn56oL
         IgHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mAKEaWaj;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k13si921283lfg.5.2020.04.15.23.42.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 23:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id i10so3415380wrv.10
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 23:42:04 -0700 (PDT)
X-Received: by 2002:adf:e552:: with SMTP id z18mr19967213wrm.244.1587019323747;
        Wed, 15 Apr 2020 23:42:03 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id k8sm24264396wrm.52.2020.04.15.23.42.02
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 15 Apr 2020 23:42:03 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 16 Apr 2020 06:42:02 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1797823457.17573.1587019323134.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 75 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17572_431487450.1587019322263"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=mAKEaWaj;       spf=pass
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

------=_Part_17572_431487450.1587019322263
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig

Culprit:
<cut>
commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
Author: George Burgess IV <george.burgess.iv@gmail.com>

    [CodeGen] only add nobuiltin to inline builtins if we'll emit them
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="994543abc9bf7bbb94a2deea31323031fb9ff58d"

Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
20466
# First few build errors in logs:
# 00:01:52 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:01:52 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:01:52 make[1]: *** [arch/arm/kernel/armksyms.o] Error 254
# 00:01:59 make: *** [arch/arm/kernel] Error 2

from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
28012
# linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/

Reproduce builds:
<cut>
mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach f42baaab4f86d5259717bd26f713c002fd225669
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/75/consoleText

Full commit:
<cut>
commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
Author: George Burgess IV <george.burgess.iv@gmail.com>
Date:   Wed Apr 15 11:05:22 2020 -0700

    [CodeGen] only add nobuiltin to inline builtins if we'll emit them
    
    There are some inline builtin definitions that we can't emit
    (isTriviallyRecursive & callers go into why). Marking these
    nobuiltin is only useful if we actually emit the body, so don't mark
    these as such unless we _do_ plan on emitting that.
    
    This suboptimality was encountered in Linux (see some discussion on
    D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
    
    Differential Revision: https://reviews.llvm.org/D78162
---
 clang/lib/CodeGen/CodeGenModule.cpp                |  3 ++-
 .../CodeGen/memcpy-no-nobuiltin-if-not-emitted.c   | 25 ++++++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/clang/lib/CodeGen/CodeGenModule.cpp b/clang/lib/CodeGen/CodeGenModule.cpp
index 39aa5c1c512..73a3212bcd4 100644
--- a/clang/lib/CodeGen/CodeGenModule.cpp
+++ b/clang/lib/CodeGen/CodeGenModule.cpp
@@ -1908,7 +1908,8 @@ void CodeGenModule::SetFunctionAttributes(GlobalDecl GD, llvm::Function *F,
   else if (const auto *SA = FD->getAttr<SectionAttr>())
      F->setSection(SA->getName());
 
-  if (FD->isInlineBuiltinDeclaration()) {
+  // If we plan on emitting this inline builtin, we can't treat it as a builtin.
+  if (FD->isInlineBuiltinDeclaration() && shouldEmitFunction(FD)) {
     F->addAttribute(llvm::AttributeList::FunctionIndex,
                     llvm::Attribute::NoBuiltin);
   }
diff --git a/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
new file mode 100644
index 00000000000..b4c1376c5bb
--- /dev/null
+++ b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
@@ -0,0 +1,25 @@
+// RUN: %clang_cc1 -triple x86_64-unknown-unknown -S -emit-llvm -o - %s | FileCheck %s
+//
+// Verifies that clang doesn't mark an inline builtin definition as `nobuiltin`
+// if the builtin isn't emittable.
+
+typedef unsigned long size_t;
+
+// always_inline is used so clang will emit this body. Otherwise, we need >=
+// -O1.
+#define AVAILABLE_EXTERNALLY extern inline __attribute__((always_inline)) \
+    __attribute__((gnu_inline))
+
+AVAILABLE_EXTERNALLY void *memcpy(void *a, const void *b, size_t c) {
+  return __builtin_memcpy(a, b, c);
+}
+
+// CHECK-LABEL: define void @foo
+void foo(void *a, const void *b, size_t c) {
+  // Clang will always _emit_ this as memcpy. LLVM turns it into @llvm.memcpy
+  // later on if optimizations are enabled.
+  // CHECK: call i8* @memcpy
+  memcpy(a, b, c);
+}
+
+// CHECK-NOT: nobuiltin
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1797823457.17573.1587019323134.JavaMail.javamailuser%40localhost.

------=_Part_17572_431487450.1587019322263--
