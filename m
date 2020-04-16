Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBMOU4P2AKGQEAUON53I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 000D21AD326
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 01:28:49 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id f81sf134451wmf.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 16:28:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587079729; cv=pass;
        d=google.com; s=arc-20160816;
        b=LmS6wrJwBAVL3oAfvuF5yhPJSzPEC/BgMN0lyLJ8q1cSErZTt+LuVESCCOnSjiCQCe
         M+unUMbmpwbe3ZrZA1FkdUSN1TgNVSaTi/NBQoSoy8a1pQptojzw4Kdj/qa6r0nAmwyU
         KAcmUzAoYJ6L25yJ25w6x1pYVtXr9/pkASDEbf3g+ErW0X7P6h491SsAaplnbEH7VSIP
         51Qu37uqwrCMLrfXfdYl4Ln7x0xHS4Rn/duWptI7o8WYlUNKf8Rdc26G9c9hDCLwU/qP
         4hG6D25KZlpdWBcdZP0F+h5x7qdi3gQO0kjZG/IPoN9JebybQbSH9f3Wjv9005j0iUCf
         IlEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=/lI1zUY37kjg1wYvT7zzz0Xwy4scaErX8ErTN3pgs3k=;
        b=OFgXLqwJceA5pRnEaGahFAZtSxEFlrVHjVJ1RmV5Cul/6nittrTyuun6sUCk4HlMt2
         6SsS8Mv4/8D8flLsNkzaef0gtK7NTNCw6/t21pqABccla+EcqTL2CnvVjoDm3k23oKhN
         FleurDjJ3qHeFu1fhQMPA4ZkDYWePwpkCJHsKqNcEB6MOCWfB0uvE6qmBKwUc1uIsY6I
         y79NzO48BKQ/vAz6yjCogiUpHiIfzXtsE8OtPLw6bEVHoZBpTcnfPeHNF1FYA73/Rv0N
         bJiJHah5BlpCiKCieM3FMXD5z1Jjen4IASUjIjAn4lI1tmrpucdI0Q9vI+tEytefYYr9
         qUYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lNgndu6u;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/lI1zUY37kjg1wYvT7zzz0Xwy4scaErX8ErTN3pgs3k=;
        b=auMqjnw7gOOQogknhNCRrPVKA4+YnhP9x8sXwhVlQ/ccLuXeei/wWvppm+1Coi8Z0p
         xPMViqbIkzJqxI7XfppzsZ7FIz4xPbXkfQLRTiEGLFYs1VpHWBCwsqMZIoXlOO50TZaH
         WfuuPQGpSAPK2YeP2fU+FqtnvDJKBQwGI+AdkPAcxzAoIOnZfrPPHj/QSZ+MCuYm1zBD
         GwdDRyD5mKeXx4xSKMCOctspeJSF/X56mrHUjhFGNo87/CFF3uLlTFS0d6OBM8kjv4pX
         4Z/TQZY735vAXm/AQJQtGaC2jfFK3JukhvUExTS+JuWyzZPsQREvMmn3DSmGPSQP0QVZ
         LH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/lI1zUY37kjg1wYvT7zzz0Xwy4scaErX8ErTN3pgs3k=;
        b=qmwN2qQHUonMto7xpwEHgwqs1TZcrc0FneweEoYcZrJkEbrFck859N8rwQCpRZje5h
         Te5Vuk2vHoAGT9hDLEainP94e8PFt+GOE7HJXxsyjXoS3zhaWPzhyw+9+/xL3nVC1msA
         l839SAMOrNwy+h0w6OsOx5GvD4KVT7/pJQABaYRJPvVRcGlySfXRuWJeX3E4GMlC0VFH
         uwXTL1C/MnXdOGVuv92YUC2CNijIMn86g5YhauU7lRc8Hi+eeY7pkddNpC0zDHaYIEDm
         llFqTc+53Iv9WG80eEha0+xMelqO2rN0w2DvLXO4TlJR97B8yh+vAsJDmsjG9VeVOptx
         IuqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubYc2J+MkFxBGwLl4XTGcxxUP5WoiYfhosw+b2fJE9Dcqg6wwZi
	jz5QhGMc6RCTJ7kSCoHCV6w=
X-Google-Smtp-Source: APiQypJqpHWJB6uKrxe8MS4moKnxih1lnUkUTV/7XEygjkWHtlP9S5mAqKdGPZNycFgL4mt3oksJQA==
X-Received: by 2002:a05:600c:2c47:: with SMTP id r7mr304956wmg.50.1587079729560;
        Thu, 16 Apr 2020 16:28:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls403585wrp.8.gmail; Thu, 16 Apr
 2020 16:28:48 -0700 (PDT)
X-Received: by 2002:a5d:5150:: with SMTP id u16mr729875wrt.371.1587079728834;
        Thu, 16 Apr 2020 16:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587079728; cv=none;
        d=google.com; s=arc-20160816;
        b=gCB3JkPjqb6G7rbSl9oGxWi7tvVx3dLRAOk4LeVF2ISTH5SdbgYM79QOfgELjS1tqr
         MHw4jr5oUls8QEA7+nzg44uq2lRSEYa5E0l8orOqBqhVtxl5rCKC8PEQu2wGXr0lC5N1
         loOj6FcinQuclC51AFRz2J3rSJ5k+ctbHvZvKAyZXVeUpTaFGQmXHXExB1ERG1rO68fj
         8qJME8Lq32Kxo3wp3w+YL0HG9/fLQqQ/HxuAdHO/ywzM44dWoCeP4cLfkH/kl4BTcKOC
         628HnPLUtavD5rmcDW3ZzL5UEqDpy4R3fMFWtHzQSdOa2bNSPm7PSKgSsAJa/G+X6pZD
         Yhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=nFgRkpsoQ+g/2S5R6L//JjltdffKRpeCFz0UEpAEdLM=;
        b=CaQvZjJa5RFzzfGNbGgfzgyvpYjz9r77mJl7ayoXSamRRRD2edMXSPOCMVpk3caMJD
         CLSbqR3WOeAQNHalQriOmlMupHCFiD0aj1xHMUIhn05rcreKuEFsGO2pD48/UT3+bj5x
         ur71F/rCPj5z8IutgJjjoDAOnxUoZdu6nbDmYHOFx10POAe2Pz8mavmeM3PahxgKFPki
         X5gzwUUx9KrBGeDRa8SCCt03DO2tA74arAgUjubHgiVbbXs+fekIPQtkYiZLlRLuztv3
         gjbtvCbw9nNixwQzAMARk2ZYGYozKj3sABLTl/lFF11dxRjY3nTblx7B1aIMjwyRhq+p
         ILBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lNgndu6u;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s22si286796wme.0.2020.04.16.16.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 16:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id d27so816427wra.1
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 16:28:48 -0700 (PDT)
X-Received: by 2002:a5d:6688:: with SMTP id l8mr732151wru.179.1587079727895;
        Thu, 16 Apr 2020 16:28:47 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id l185sm5501911wml.44.2020.04.16.16.28.47
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 16 Apr 2020 16:28:47 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 16 Apr 2020 23:28:46 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <145237217.17743.1587079727468.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allmodconfig - Build # 13 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17742_764535508.1587079726824"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=lNgndu6u;       spf=pass
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

------=_Part_17742_764535508.1587079726824
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-stable-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-stable-allmodconfig
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
rr[llvm_branch]="6d538975543475ce64e840b6b7c9915250bdac36"

Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
19863
# First few build errors in logs:
# 00:01:26 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:01:26 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:01:26 make[1]: *** [arch/arm/kernel/armksyms.o] Error 254
# 00:01:48 make: *** [arch/arm/kernel] Error 2

from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27150
# linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/

Reproduce builds:
<cut>
mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-stable-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/13/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/145237217.17743.1587079727468.JavaMail.javamailuser%40localhost.

------=_Part_17742_764535508.1587079726824--
