Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBC46372AKGQEIBVOEJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C7B1AB626
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 05:20:44 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id dx16sf343442ejb.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 20:20:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587007244; cv=pass;
        d=google.com; s=arc-20160816;
        b=QIH3LCrtr2E+E1NJc98woqCL0xRNkOmo+YrZVO8LCFMfWo2Jzgna0kjCfn0J87+MD+
         UnVnzwOjXVCo8jJzw1Urn3X4VbtZb3bKhNJb/+CeQTkTCWfDqKXaMi+aacWNPJmHQJDu
         Hi0CTPuLcJwkDaL+N+NeSj8Go10AYhVB8i5Dd5jkaFwI256sh2NkLLnUSO2A6iANzC4C
         X/aQIEbLJEbCfZXlUEQl5BPE9kZZfWG5kfnNpu2k8a8UzqZ4bgsFOasORCCwXWX/jn3k
         pMShw25eMUjGRD43PmsX+WUvLPPNwc0DOt4I8RROXn/Ajs2s6jGKiBimWDz1zuvbq8Ox
         WRdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=M59Azco5o2gsr7jEysUY384Qp0PTQcQQCpxfPutt8I4=;
        b=PiiP+1i415h+LxzpeY4f3GRLFre+A23f1Ziyeq+TlmiEhGIYkaamUmCZhu3qlrZbIf
         JhB6WH05n6+h/DL/fJUC5hIyX18WjUM4QTkUBpmqW/pmd/eTm9qRFbDsIhvWrQBy5HZ8
         lEou1+j79X3qaCviMYhSZnqVMz77VwtDLbpEXOGT7gV5PQxy9tf182kvLL9PbfVOmTYy
         B09M1piaWhtUt52xdYPrAnyvOy+VbKYvy+tBUs4opigCSbBWQ/JPtui44KXimxISRxZN
         dYsYeee6++aht5iZkdd1+udXFfO4wLvDfRtcArJkxhejz+0oi7GKkmB4744JsWfHkI4n
         EEsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=M3gEw1vK;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M59Azco5o2gsr7jEysUY384Qp0PTQcQQCpxfPutt8I4=;
        b=At7VMFDRFTOu6hmEpyQHmBgyGd6+G8yqCK2afNOEgdgvpP7Np+UtnalQ1tnLjAiCoS
         jLRbvgTun1+qSxvPNvQZ3xq4zx/szMzfAnt1l9AL8EJBnqxzT5ws7X+NAynr2DfOSAx9
         8tXGMK18bw4e/WB0Z3WPEa+XvH6H/gOYP1CEHW2siuqf4AyM2NOJjtHRkNdUAM1lgTAf
         1Hxnj/xfBfLR1n58Y3NnxYor1VT92RyaybXUCSfWVgJZ36o7VglTJCG/5tPuEggm8QHT
         DFyz7n9ufAbINpx+87xABRM4emgOshajSZ1PHml3o0y+MPQYtp7f9lgkTdRH3hLoLALN
         aqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M59Azco5o2gsr7jEysUY384Qp0PTQcQQCpxfPutt8I4=;
        b=LG8XzbYljnQHI8Sf+/1VTFbA2ebP5052pIRROwhTilhpKHwEb1ffPjn1yhn7uyPC/0
         JOu/k/swH53TPOYUsQXCBteyuOPQfEDiqzBo5qOEqBFt81jOPstEMtuuBqbRC1rZjfpm
         dgRQE11gVnj/wN370gi85GmWWp39l74VnT/rJ50nApSFeW9hSxW4WA6MAvVP9RHkAUEE
         zVWnwhPMTTZUYJ8iRYcdfnI/SHNcjxjSjYqfsvYbyoAFLOImFFAphDs2659pzGBK6vQR
         +c9k+dJV0G/y6fIwCOrjmYnLsJyyarP4IQxXs4AaSSsyCAi7CKGpteBUkYk6O+0FOAZY
         dTMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZyOJsnZKyeT8R7YuzfEDTPnL7lJBpHKslTVP75tw6nsX3t8L9e
	6+0qUTvNHAgNkqy+xzE/ihQ=
X-Google-Smtp-Source: APiQypJ04AmuYQK1XysmHxEzByDUml4f5UPIxS6hXZSsD4/m7zXOkyR98Ee3QVOfNI03+deWFUpsrQ==
X-Received: by 2002:a50:8a03:: with SMTP id i3mr28264359edi.121.1587007243829;
        Wed, 15 Apr 2020 20:20:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a2d2:: with SMTP id by18ls7767056ejb.2.gmail; Wed,
 15 Apr 2020 20:20:43 -0700 (PDT)
X-Received: by 2002:a17:907:9484:: with SMTP id dm4mr7953833ejc.240.1587007243192;
        Wed, 15 Apr 2020 20:20:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587007243; cv=none;
        d=google.com; s=arc-20160816;
        b=BqO8ZWlue3/1s0ZGPgzN7g4boj3+GKzEJ+1wepA/SefxznACAyD1HgiFEdz+TM7P/R
         UzgKAic+HEd1nkk7qgwPNlTiiwJnxcWXLsSe4d/lACYg0TNA1GAINlygqVI/F8wRdgcd
         omWK9NP9k2kpVOBDMxsSbh0B54UuC2pUHz1tTLdktYj4QABlDOKc3/telcziibPjUm7o
         zkEOyDJsWc2gKxAUjiXp1LyXHYKTjnIFMcwWrpSnOEOwGM973zDujwKmF58DvWb4M+a6
         XLI3936yOBKKhXKQ5NEAttsCrXJFvinFBOujacIUz3YYaVwqJ1lnFsgJYjXe+0gxAt+4
         /qaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=H7HHz2ix/7wfl2SO/UMAxB99I34Kmg6XPEQZkrriSu0=;
        b=kk7rOIf1OpN04Tt+GGh3lgJy2XTy91sobYFgcLGLm4KrWG3Rdtjni65m6jZATWM7E7
         aA3OAU+772+FdiSkqkdfuIZTI46d9ce0xEnlfRc5yybd/6wp7YQRbW+7bbhOI7ltnl1I
         dYbfnQY0LmMiqUpNpbdMjQucuAbjamPPsMjgx6WVK8hOH+eWl9hDyzZfJjEanOUnA2+z
         ey3TdAcBWiMiSQZ1kRpIuJm1p8C4RENk++rqIGny5QxQfPHRidmeghrVnLUA4ui/Is0t
         6xfhTN/P87htVWSh0ozLxawNz3nlcBh2iKUvAbQm90K+an7ai/AeLBRFZOLt4yEmqxk8
         +akw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=M3gEw1vK;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v14si920503edr.4.2020.04.15.20.20.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 20:20:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id h26so3097140wrb.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 20:20:43 -0700 (PDT)
X-Received: by 2002:a5d:4752:: with SMTP id o18mr18248712wrs.283.1587007242821;
        Wed, 15 Apr 2020 20:20:42 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id p3sm7723810wrx.82.2020.04.15.20.20.42
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 15 Apr 2020 20:20:42 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 16 Apr 2020 03:20:41 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <766678058.17562.1587007242346.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allyesconfig - Build # 30 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17561_2074334072.1587007241652"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=M3gEw1vK;       spf=pass
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

------=_Part_17561_2074334072.1587007241652
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig

Culprit:
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
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="35bbf3bb7168a3d8062500b63af87079f6519794"

Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
16047
# First few build errors in logs:
# 00:01:16 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:01:16 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:01:16 make[1]: *** [arch/arm64/kernel/arm64ksyms.o] Error 254
# 00:01:56 make: *** [arch/arm64/kernel] Error 2

from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
16048

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/

Reproduce builds:
<cut>
mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/consoleText

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
index 39aa5c1c512f..73a3212bcd47 100644
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
index 000000000000..b4c1376c5bb3
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/766678058.17562.1587007242346.JavaMail.javamailuser%40localhost.

------=_Part_17561_2074334072.1587007241652--
