Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBA7Z4L2AKGQE65YSHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6957B1AD0E9
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 22:13:56 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id v6sf2574030lfi.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 13:13:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587068036; cv=pass;
        d=google.com; s=arc-20160816;
        b=IIWs4hmQoTtrxnSPm3Uy1cjZ0+KXrHDhI/UEqvtCCJ9iPd7r8KYo3CL22VZJViLSFe
         U/XIF8nThKfZMrL9xQAxRHoW7tloDz8zrQRmcPOkT7pdKQSWTv2Doksozm9JTuqO/Qdv
         Iqea8p+rKHiYRFuAMAwlRqspuZKcf8oTwVzLvwr0ESdEl1YByAKnAo/p2gz2S02IO2z/
         llhbaxmA+eVyB6PolfV+r0nK+5AFWdvaFsKNFVU8GgNacbtbX2leclNnORyZN5hkqFrB
         GXxT2NB2N9dRbDvP1XC5Pzni0pwN/DmHUSi0tTdrE42KeBj5YZpF70I9kUpAZOxyqBbH
         uohw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ahK60MBatBMGoNj6DHAaxMaBmBm2fxE570par4DvWMk=;
        b=yT3Gs13xIPX2nFwVPGmq+5GcfyDWR68BJqsOokW6AYhDEWUDHns7ad5MImvaRjqTOD
         pbRTXSYklSB5AbhhnTWpUdgZnL4HA7loNRhvmojmBBJRYELi4ALN30yPGHkdE3dzSQwR
         /hc7+VvUDAaDn62v51Peddn4ErARlL9lgKTH6QEtBfuD+XV9yCM3Dj1Ux/kWhtepGDbT
         KlDOD/L24GVhgGE8gAMC7gB0d2n6Y9OAAbZVQypEvR8bwck0J/LOvFf4z3gEbh7vFKK5
         kbyQ/jXbTiFTXrhmAbmq6R09iBun2xnqn6D9uew1oB/m2OYMDC8EjWQa8FSici4VC3EJ
         3FVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Uv5Q7lEf;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahK60MBatBMGoNj6DHAaxMaBmBm2fxE570par4DvWMk=;
        b=psL0oQKHsxlGBZakFtffkylboLpZ8NqylYZ9IbPmXVSbfyOVCdC5jQ7mDxkxni328I
         LLjcwtYqv8P5Q2Loj+EttMqkGx4T4gCOoD5edskuzhRnPvG/41YbGvRgI3XxjL1DvP06
         SJeCz/fvF2mPjfKhw3zpvMe312+QMt5T0hraLugZ0VXSrSOrNh4UVz86sRSDB9aqg7GA
         wY75T/i/GBxsF19tOf+qFqUfGqRyyqyW6daUQobpcxxOsOli2vwkzNvQuU5gwPwWn22k
         Pqm/11UZVBLwhW2xPnMwGps6ZQNdBaZfoFnpspGkebNX3iZCYac46VTi4YLW/XQFOJZA
         eWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ahK60MBatBMGoNj6DHAaxMaBmBm2fxE570par4DvWMk=;
        b=UgokHhE3lsyoRedbaLW0iNk4/ESDdAjgXHVMmbJ/JkMBKGD/xVmSRcyRDVYF+QltD9
         Kk/5mrYEP7v58Iy7DmVRNGIqgP/ZhLygBx2vcUJCF0Eo12G1oRXRQ5zLvY8E+m/kCibq
         /DW3MbM84u65UGEfJX9Q0o2pgDe7M6t+CvOIIDgWPjtObqytoJejrcyTazekxJebeOgn
         74RJAnvUazg/z03lkLetppbYzMAdeAxcXi0vOgKcHwmHUjA2eg8vnV3i0A/SvE/dt6rD
         NMPDiJuEymjJyvDd4BmZygi+PI579mAq83Bk2I/3nj2e9xlyqXXGng83r0VL5JpWo5fT
         sZlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaQJmsvLmQG5FmczajmtQsvOVgHmUTmqxVxggzixJiIT9pKVclc
	nItRwbuLXdLx7OwQiDoo9O4=
X-Google-Smtp-Source: APiQypI6yiKj0dccvZqljbuiDA1aM6RsUcmxkltDO64loMIQ8sdwr3sSkr4Caf7fACy2XZ+m+w0/+Q==
X-Received: by 2002:a19:e308:: with SMTP id a8mr6912095lfh.135.1587068035746;
        Thu, 16 Apr 2020 13:13:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a179:: with SMTP id u25ls94833ljl.0.gmail; Thu, 16 Apr
 2020 13:13:54 -0700 (PDT)
X-Received: by 2002:a2e:9456:: with SMTP id o22mr7592302ljh.94.1587068034914;
        Thu, 16 Apr 2020 13:13:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587068034; cv=none;
        d=google.com; s=arc-20160816;
        b=u4A9sgoUV2BJGvSVfk1fS7AInnf+GbtNN8KDQnY438RUWGe3aFQg8NGMcsy3FaKehn
         3rwjxjoV5+wKGKf+aCfWPkkOYScUrF5KLITnd/kjAiuBVyFv8rvTfUbmn1CEtN0MNMWL
         bEQ8a9t9cMzEKub7x+9myVwERuW0EdKgJhZ91HsuJvrxLVy9DAeAfjG8nSz2sKwv+Ewz
         NRcoopuVRVowI8+M/gGfMxDYidVoAaun/X/0e/YuHuVVbrG91PhUCQV4GfMcavAtRjrE
         x6/2I8nRyK/fwT25G1yypJnkLn9of+Ipu/tv8ULdwTK9FOrAsMIJed313d/xcNMF7AK5
         bqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=xOgniqjT3ATjEwRLSYntQTKglqgRiRAlVcYeg055AF8=;
        b=ggG7uQh2FwAFaGT0jStdV8/fDl2GzXoKIOXCCzbDqNNTElIwqAVhfqHLgb3/RnQ76U
         zvnFdDddhJX/1JrZG8D9FKdw1mOgKsXZx8xN6ybWbnBPnGyLX6qilkJvqN8/LiLdXMVp
         DugPjckvNHJuOBB2RyC/VDcsVHfsODI6cARpXwoWVXQ1z3G6rPTnbmoAuapV5lWJGW/e
         gtAiKxG9D9KehKt/PRyDO/FDNOE3vxVW8ujnOH5mdG/I7EvbYgiL6IpmP6Dt+XBFpwuA
         VI0/7oiO959nqyZz0y2FevJ93BT8z+U7lPUIlcOMgwzQKr6TMOff8Hz/o9Vmj4r8CHl/
         AXeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Uv5Q7lEf;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q24si480602ljg.4.2020.04.16.13.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 13:13:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id i10so6337976wrv.10
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 13:13:54 -0700 (PDT)
X-Received: by 2002:adf:f0cb:: with SMTP id x11mr31214149wro.266.1587068034446;
        Thu, 16 Apr 2020 13:13:54 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id j124sm4923900wmb.25.2020.04.16.13.13.53
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 16 Apr 2020 13:13:53 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 16 Apr 2020 20:13:53 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <243206200.17707.1587068033947.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allyesconfig - Build # 12 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17706_1987919064.1587068033171"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Uv5Q7lEf;       spf=pass
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

------=_Part_17706_1987919064.1587068033171
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-stable-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-stable-allyesconfig

Culprit:
<cut>
commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
Author: George Burgess IV <george.burgess.iv@gmail.com>

    [CodeGen] only add nobuiltin to inline builtins if we'll emit them
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="9bd6b77ac66fddadc50ca99ca327f1b7f9b0d6e4"

Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18068
# First few build errors in logs:
# 00:01:25 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:01:25 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:01:26 make[1]: *** [arch/arm/kernel/armksyms.o] Error 254
# 00:01:35 make: *** [arch/arm/kernel] Error 2
# 00:00:00 +++ grep ' error:\|^ERROR:\|: undefined reference\|\] Error '

from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18069

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/

Reproduce builds:
<cut>
mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-stable-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/12/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/243206200.17707.1587068033947.JavaMail.javamailuser%40localhost.

------=_Part_17706_1987919064.1587068033171--
