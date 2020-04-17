Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBM5H4T2AKGQEOL34SVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFBA1AD46C
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 04:25:56 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id t194sf226011lff.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 19:25:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587090356; cv=pass;
        d=google.com; s=arc-20160816;
        b=fj4G1+oBnNyyp3yCSl/cRIVpgdBr3f5rxeLjebInQ1tReClo7aV+6eHxZv/t7ODcdE
         Ex4jrvhzrFjQesZmUQ/BpYOfoE13KfZPOW409WkN7G7w6W6fibIRh4nCOcIkFWvosX4D
         xtpwx0Qw+vJHD/OdcA4tOjwWyQMuiAqRWuJkiti28cnuTRRkQppiK5BRlHs/ggmw9/r/
         PglqyqZvf4yU22Xdj+wQA/E2nt4X7xHen63+Ya8AjRj3HE9+vB59fKzcSbcAbOy7ceJV
         MbhQgwF1gYDPBaUZ4cT8WmA6+9gjMcZB1iYourvGG/lq39SEV+CDl3TCAL8vuE+dOHo6
         gFoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=DdLGw0U4BKQCO4yrRnUrbDQd13ojYRkEtDjjpZ3HSVE=;
        b=MBf43iyX4DYmEla0wAV/nyD+fFry2HIQipp0eTRxWzejjVkch5gQYBtbMyblHVuc1i
         NouOIw/FXsMBgaaE5Meig4JqTw+eeAlvBkwqBw3gauBfwrQlUF7qCe6w74vuysW5oA4b
         pVDQiM0rqw9Oc1zFOaC4oBv6lrsrJ1ZHBeRkUgdHDJojcNdNS5KJoTOk/8ApSfX4KiHS
         k68NQxCTbDhIz7yZgOvGolth4ehlAxLkWfNXw2D4H5Y2Hm++RVfdzJT67JKi2PXkMVzr
         605q4779a1becoMHnZfQWS5cpVZgO9XBv2v7uWbbm8UGPLe6C5jN257nIHY/8fpLRVmc
         +XCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YYztSn60;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DdLGw0U4BKQCO4yrRnUrbDQd13ojYRkEtDjjpZ3HSVE=;
        b=cC8bolEdPHvmWxx9rO4kRiWTaZNX8IaezrrhJYqF44ljF1B9h3wKWg7RodmHi6px54
         4lIRb2kPBCgji5MzX8h/PX3JQQQDRu5cA1hswrxkK6MiYfnpgN43xkt1FH29vypw+D17
         tYrN3QMgSU3ycXZLU2f0m/4H+t1pMy8A1fdJdDueD0Fw4Ja0KZTf5q9+QDGCV7C/wM/S
         j2tFU4a30Hwz0K5ghGfp1QQ8lOD9Lk6yo67+hXpluHSZvhcrD25pjzcRocCFvfwx7Ib4
         adcvDdidcJUEvWZDRBfH7v5kMM3oQet/SLC382pT1P0kaTcF1JSVOqWXcShV47OaoYGN
         yGIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DdLGw0U4BKQCO4yrRnUrbDQd13ojYRkEtDjjpZ3HSVE=;
        b=Vh7Tfm+UeTQjlBkJyDmi48NsSFaJuNwdeV8Oh4+BXhntPz2Q9Sbsgltwk8f1i1+6CV
         IKWzf6BBKleRHAYGQb7j3rpyms7Y3GGtoqNYx9+JSBIDLfY/quJncTUr//koLpDkvO/C
         MPQJ4hGZPYlN2a9mMhuFuYhurRCdBoZldVDfyGfc5SOdsx0q9D0X7GGr2Wrbe5LZX5A4
         ZVP1f354JZl31TrYSe3nVIDAMfy4yOuNu+4IAHn6YC8XvwisfSCakf+nJIzJtehRNdDL
         yik33H6+FYnwIScdYGsexRXkKcxi4+HiQgG0b8y6741k47aAnvr6EqCPxH6UM58nAKFm
         tzaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYziv9pgu1oc80k9nrkjH3mR0pvy1mgsZaSpuMn8trbDFBFPMsN
	DHjjpX6gDBrx9ha/NdYT0yY=
X-Google-Smtp-Source: APiQypLYOAOHD4qJT2P/lJjVztzYw/gKEuZ+LkBZ9Nhvmfka85wolk/D3B85yC3J3Pu3XGs6v76Puw==
X-Received: by 2002:a05:6512:259:: with SMTP id b25mr523095lfo.16.1587090356174;
        Thu, 16 Apr 2020 19:25:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad6:: with SMTP id p22ls115302ljj.9.gmail; Thu, 16 Apr
 2020 19:25:55 -0700 (PDT)
X-Received: by 2002:a5d:4b49:: with SMTP id w9mr1285234wrs.359.1587090355253;
        Thu, 16 Apr 2020 19:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587090355; cv=none;
        d=google.com; s=arc-20160816;
        b=NQB8IdWKb4s3y8nFyi1SM+BoNdatJkIwD96AtuywAi8ap0diuMvIlRuUz/XcsrFfgB
         wk+EyDvkIp2uH9bg3xP5AWpLd5YTNDRFX/1oyieEKcQOGH1xRUEilC37LEJ34Ug3AVRG
         XJP1odgfjc68ZX6IrnEY/rEQwAvqBY7cdJSG/UXWkUJEQJ76hvAQXbzN8gbRvBkGzKiV
         h9mCSJBrEF6go99e+Lwfrxocrn6cy+EQlmlCyVu/CcjPMZyTYpYUBjmvdVa+IXZaragw
         Zr0UTtqESHwnYPImmOfA5ETVGyCptpTtDIUzu+jKl9qdRQauR/RLan82THlBQGxk/qFl
         E2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=XdUJrmz0tsdmqMn3AXAIuij31yuTr4p+sd5ELPwqOio=;
        b=E6WWd0sZ7AwVr/DbJOePFpnPejz+Q1OcZMzUHjncYcdLbhxEvcgpZTp3clPiD+XOJk
         HvlhQOsOt0c2nBexkGrkAH1hzSmKQYq3YpH+MHjakOcIxyAfXheJT4fnM82nGSxK4yhh
         G2c4uihiGkOMuW/1dn2X5No1gzgS49M9TV7snDlOOQwjqMNOlHfE/tfU1cKEARAj49A/
         UP4S7DM9eMfW6JNwxcyqbgIu0e21WAodd6i6DTaB/VAKSaTsLH1sgLb2ykr0Yn/E4njL
         j/ti1TJXMP1eG6yHIpOqH8wpZNeoN2Jps9zuXkw7oAUkd7GVXwdiNmLAUVr1rrLlS4xZ
         cshQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YYztSn60;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o125si211651wme.4.2020.04.16.19.25.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 19:25:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id t14so1245982wrw.12
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 19:25:55 -0700 (PDT)
X-Received: by 2002:adf:bb94:: with SMTP id q20mr1438630wrg.105.1587090354760;
        Thu, 16 Apr 2020 19:25:54 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id d24sm31051373wra.75.2020.04.16.19.25.54
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 16 Apr 2020 19:25:54 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 17 Apr 2020 02:25:53 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <2109008626.17756.1587090354238.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 33 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17755_452597118.1587090353751"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YYztSn60;       spf=pass
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

------=_Part_17755_452597118.1587090353751
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
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
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="f8a42bca2812fb602b0f2f24ce60f8216f6ddf87"

Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18623
# First few build errors in logs:
# 00:01:10 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:01:10 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:01:11 make[1]: *** [arch/arm/kernel/armksyms.o] Error 254
# 00:01:17 make: *** [arch/arm/kernel] Error 2

from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18624

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/

Reproduce builds:
<cut>
mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/33/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2109008626.17756.1587090354238.JavaMail.javamailuser%40localhost.

------=_Part_17755_452597118.1587090353751--
