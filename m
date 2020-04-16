Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB7FT4H2AKGQE3SAF7LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C531AC21E
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 15:13:33 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id p16sf1677066wro.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 06:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587042812; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYjAmIrFEPwaktAYVWsQpHdaTmq8WVa6EvId/5q2xqvsHq+xfTRoQ7fAv+W4p8vlmb
         XFyKk1xxDjqotEgZd2MQi5PVhogol+LQOCuF0I4KiUAV+VcAbsuBBkzMpK2DDYu9y0Ys
         ktjWNZ51h63IaxggWVLWh3758R9RHQAh44Y/2nSs9mOS3dudXJM7OZhesgHvUygAY77+
         g9bdhfj7hnQPpg990UC425kp/yE9nVa9j1ihzK27jVvdbYw4o3yBADxDZFgpildgbS+u
         wJ3JDGKNRzglsD3PJOEzOcUKRgkPuZqwtrESICKxN5LtSJ1Nbaic5ex9CTCLtFVIU6tN
         wCeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=cTIMHUnXFW1H9ECu9ZeDuW+YMWeGndDcnkDOrRje+WM=;
        b=VEYZ43pQoDacUZPzIGAN90udqcddU2jAbvMQivNfD0r+BowsFhzBcewNpL7h3YDeRc
         vmja3cAaBDsb42XSfLWaD+tmutD9wRaaqrumd3oj1ohBw5XkvHjoxmYosIajDzB24DSf
         4H1RHTB8ANNbTR3vvBFHQhp4MvegyyQ+6Rs7YOGUsalFqY+6TWov3crQAJtxlmqm8rn3
         GqKzQQwvMEzEwG7e5ecL0KGo++rVVE8K7oGcLOgE9YqQEQ8DQWOJ+0fX6npSAz/+nyL0
         PJ7Yq/9gWxOSopfr1UQyL5cyND+mimVjdEVeA6Ej7mOWtOAfqducBcGblohzgALAE4CP
         w4xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=inuWMHEi;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cTIMHUnXFW1H9ECu9ZeDuW+YMWeGndDcnkDOrRje+WM=;
        b=YqyXe6oK61adPNn4gLfzP2AgRntRhJV8D3qW19R3yWZ0A+ZCjs+oYXMMRMlWpWBJgP
         oG5Do38OLKE75MJgahhNvGLzfWAWF2L8YSW6o8mTGiL5egu89w3+dWTTkzCQ/8oK/RWV
         7aeyx08HjGYtPYQyMeEBkmisFUZ4relBw1QDFtHC3kAmO4sET8krjltTykRXPi7pj4ip
         SSGxsHz61a8lrUVbbfADZwP152fzqIifZxxERUrmt6QGkIxcaQ3b8Y+iEYFRY1fdFzja
         555I4oUaGTSwlHAMSSS0cByNm2GgLxGTPVOzXxnn53hqG3lflsCa5vye+h1w3yy8k79c
         UZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cTIMHUnXFW1H9ECu9ZeDuW+YMWeGndDcnkDOrRje+WM=;
        b=WNgC5HoO28XlJiQ51Hh7aSixYpBzZCAwa9+H4jM4emsyiFHPHeO+VL5Y+03ArK4vRO
         Yd+q3moNYTbbWb4YJ14HLYS+FT0xgUuT5x/wFosSFWbVlLHMrE+vNlcWUaWc4UKPlJiB
         aNDvM7ZFodfbztvg7cqte01tc5nAwkexoBU8Ws2K4y3yTl+80q3KOB7xTyqX1LDQjVIu
         NQprs3jTFsWSkJnwiA6S3JHxEc3p3CY1vNfMlLi3MwLW+7SOvVPCL5vPL2cjh53Ysgx0
         XJzGZIidUrefwYbxZYhwE2I5S5KXgFMX49PL8apUkkGn9GT1rYDEi8cskzaXM8QCrU9V
         a1Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY4slu+6TvU9HA2COeaBA5I+iOsEf6LY3Eh0n5ltGnrN4AmXqWQ
	ok53ly4uLsSK3W+gb1dK6Vo=
X-Google-Smtp-Source: APiQypK355oESTg4yZD2gBBGQrbqa4lqSyapauRZADRq3ATT+QAxfdqysexVAN7/cpL1MFDDGhSjvQ==
X-Received: by 2002:a1c:195:: with SMTP id 143mr4855456wmb.0.1587042812783;
        Thu, 16 Apr 2020 06:13:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls9041413wrp.6.gmail; Thu, 16 Apr
 2020 06:13:32 -0700 (PDT)
X-Received: by 2002:a05:6000:8b:: with SMTP id m11mr20665564wrx.168.1587042812330;
        Thu, 16 Apr 2020 06:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587042812; cv=none;
        d=google.com; s=arc-20160816;
        b=L4U9No/4oqMOxXKzevwvhbG7BArXiHGuIZIH4Ndor7+77sJhbZfPs/unMYCpK5+jA9
         tAp+NRfBZpJOwqNPe1DNM3/o15K/455Zgk9wcQk6Z0ciLvCzFmYzMgt9Kc9Y0M/oHThX
         ZXto1O4Gis/Kv2fx3TYLAbEWVW3kPGHfUbywdv6Vj4GXkNoUVnPmlSYUex7NZ2vvlgx4
         O0lYmgV2c+ODPKFxSkAgZ4Uf6xJip6K+d7vayuwVhf1neqSMmipZOnnNqiV+d1CiJIaM
         UXwPLRl8DX7zU6G6EI5EFmFabJ+Wc1KBYfPEdwQhlDZ94w0ITDQ3TC40O+/dle1W/oqT
         fp4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=KLe7XCUAMtxxLR/GfHnksXhwDQsOaHF2SQrjQA5N/KU=;
        b=lnR609am2w1kLJRCTDKK3OfkcdcaC5/NWNmq7fn+cY2w25sztbOnsSbDNRQi6tVyrS
         DhrDVbF93ENYX4rUCucB2+tBdZ4mfx0AGHcfisxMhYj7yWrs7y4LW3to58apPLk+mNDX
         B6XzzDeNuKLuZi9IFr/koHfHx1S4Z+ghSxEEz8MK8sfZ43BBHUKSEo6W3nJ28Be8CN2C
         Lpl6SgV9ahB+KaYP+Hp7KEsRvuTTaO+zlRHI6NPSMutl8ERENMvnafHOsu0tp3JbSqwj
         oEplPsMCLXTelcHX90f1c+rGwxaaG5JildxIzUPjsc6ogZJOHAfKvOnjcSB2sobGX6PD
         XvoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=inuWMHEi;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o125si133251wme.4.2020.04.16.06.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 06:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id h2so4518399wmb.4
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 06:13:32 -0700 (PDT)
X-Received: by 2002:a7b:c74d:: with SMTP id w13mr4693701wmk.36.1587042811895;
        Thu, 16 Apr 2020 06:13:31 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n4sm2712206wrr.68.2020.04.16.06.13.31
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 16 Apr 2020 06:13:31 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 16 Apr 2020 13:13:30 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1360296694.17616.1587042811367.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allmodconfig - Build # 33 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17615_446845655.1587042810819"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=inuWMHEi;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344
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

------=_Part_17615_446845655.1587042810819
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig

Culprit:
<cut>
commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
Author: George Burgess IV <george.burgess.iv@gmail.com>

    [CodeGen] only add nobuiltin to inline builtins if we'll emit them
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="8da5b9083691b557f50f72ab099598bb291aec5f"

Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
20441
# First few build errors in logs:
# 00:01:12 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:01:12 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:01:12 make[1]: *** [arch/arm/kernel/armksyms.o] Error 254
# 00:01:27 make: *** [arch/arm/kernel] Error 2

from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27976
# linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/

Reproduce builds:
<cut>
mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/33/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1360296694.17616.1587042811367.JavaMail.javamailuser%40localhost.

------=_Part_17615_446845655.1587042810819--
