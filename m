Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZ7W2HZAKGQEM4MYBZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1DA16B748
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 02:42:00 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id l3sf944865lfg.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 17:42:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582594919; cv=pass;
        d=google.com; s=arc-20160816;
        b=h9pn83JPWLkg6KbFwxeXa+f/zrbKcEz+9AAJJptHIhva2DNs3sl5s6V9f2aAyydYba
         2i5vuAQe+St1+dbUO6ZzodWLtihC+3SnI0L1kc/IZBek6ZWsCy3mmT2w4UWxtE4VIdxK
         1FAGYflmrsGfSfYD/JJEDJ322RQ9osCJkhHT/f6uDPsMCfADfVfolWyHbSL9C6ZG2rdN
         TQCu2t69LPJZJs+e//bhRobeBkjERZSD6yA4vwaygO2tAUvpQmomB7sIX4gljHC1sYUf
         04o9qEXO10VNq2xea9UB81FYshx65K44CGvqVfgIDjXeFvSSkC+Zy/84KRPbFrLA7fNK
         yzag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=CbucLYugxpcVucpHslNYqWIg0GJmW0GqswtLAo8mq9Y=;
        b=dOJVNi3uxEWBvTv4QYWF8KePjEHnrkGRK5/m82GwKeh2F9YC7xoe4CFF/Uv8v+v07p
         2NLJGeURi4joxUaMa2Iy+xz6YKJUMiXHz+ltkAKQ2D0gDnB4VnT+jG8B3fWPDZHjWa7a
         3tMf6qFeRz7CFw2zwHmjiyS2/dKglcDBvtksOJFN/wO0d/T2DmXo+tipJEze202u4Ao5
         msTRVa9rpV41+4RBsUO2s0OT3rKLMRA4Cp3ASVvFIHBl2GZ0y+rs49irX6gRBcYfChNy
         MXt5UeIFRQyQXPuZqqjAXYz9XnOMH+2Xxw7oXoXd1CuIO6FfViSmUX6SXLm13jy4ZoUL
         iCcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="r7RE+J/t";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CbucLYugxpcVucpHslNYqWIg0GJmW0GqswtLAo8mq9Y=;
        b=AJwkKq43Ay4hN4Sk1UFo+4UO/SE3klq3Wi/ZhVIXYOddLOtuQo/Qq4OrBH1Ik7QDoe
         2bKjDW4Dl3V7RdB3mSmH8rlFRbigKqoHgCWXxWne+OWMVwc4WJhoeYC1UIudblDrhwQm
         KM3dzzQS5HL34iVjp1GiB9kf11S18DyJWWfnanTDtykzNfCFD4VlKd1nhb1+fb8mAaTl
         6Y2Fu1wXm2/YOy0IM5mvttvYfnm8muaLKA8OcV6aADvlAy2vL4SNJQ2ytvSX3uUja+c2
         M2igd98S9js7kTKAxPrqlqDGD2ShJMHVgnA8p747opcUaOVjKiDShHfQnZGn1ItreBAO
         3vLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CbucLYugxpcVucpHslNYqWIg0GJmW0GqswtLAo8mq9Y=;
        b=qEDav5W77THjEzpsWtZPgHH+OFz3yt/eSPjFgq6yBNO1O/Kjg3y6l3h1gKGDNOtDIe
         mjY0aj5aDnjUzJIUqD6Eojvwgv1DpkRKk+3m6w9yJGugG9Xs9O1L28TiY0aD597RTJSJ
         kPgkpabK4m/fAfiYBfsJSx/y+x5yuBPFwUrqkBL9be7yEFUNnjn5zIhKEBRQG5Up4Qul
         0nBO0EXlNWvyHMcIb393njzWrxXUkCx4PDqIw7OJdFAP92OHtJ3M1Fqh67YzayjV6O5D
         LjOzMdZE//D73Z2d4b8wPny2ZGMK59ogk0c33KQ10FSfdoWgB5DXXUMo4y+MYETljwWN
         7bBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWe+FyJGlzWreYHBbKijpqhjcLTAkNUi4+CFJhS74yh7rkkYSt4
	6eK5DNa/E4AntgfGLZLvJRY=
X-Google-Smtp-Source: APXvYqyKT8BfAqJXGCIScRVNcgcarxeZeeDTl3MxrYIPHfztWGs1IiZE2oNMWBIGcertmkWd+k7Jgg==
X-Received: by 2002:a19:8c12:: with SMTP id o18mr6574075lfd.145.1582594919513;
        Mon, 24 Feb 2020 17:41:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1b4:: with SMTP id c20ls1822724ljn.5.gmail; Mon, 24
 Feb 2020 17:41:58 -0800 (PST)
X-Received: by 2002:a05:651c:448:: with SMTP id g8mr32675591ljg.35.1582594918910;
        Mon, 24 Feb 2020 17:41:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582594918; cv=none;
        d=google.com; s=arc-20160816;
        b=hs+Yn0AvTHtRVmfd21nhrbfPT8yhxTHM+6cfLTBppJXN0dtdzclVsu7QMOIk4MoStU
         2D1UE8v0nVGr8dF2scHKkSdsIU6EWt9bgcIAgYVzgtTsLf0fzWzodmZbgxg+EFP1E/oD
         kFkDHnSI49MrIOZgNh/o50Eqn5dlG4OkIxpoe3+W0RMUK5pnU44hN2JGdKXujCmqvjfr
         22eZstoIi+LbzJe0gRkxVLggnFvjxnp/kuzPPaXWQE1Iu9f8VkMloaf31WZcoEcR+Qee
         SpeUhtXpu7JLPFdnuNUKRxDbK1N7DzZTTbezQ/MbfZBlsGrOQog94Hysn4xbk1gzeORM
         rqvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=LLJaW/egu1wSyRYEDBoqYVbSUeIRJaENM2wa2j9c87s=;
        b=dvOHmNgk/QefTerRxR7yO+PM5SCGQZ0j+J0xIxzIs8AgicBGHTbEkWIjcHoKaL2iKV
         4WZNUU+b/XYC279MMXY6USJMC26HtminZ0cpqrN023yX/OS56o8RnRHnIL17i+C7yF5x
         PNJj3gJHLyBrlfgZw9tYlkU0tGcIshky2fE/eGt6r7yKthTII1mHdhs8c0TSNjHzOPYM
         gy+6Hbsh0CS9hifa9Gxa5UbqtTke3mt9Fg34+suFE4BLiAEPFsK8vv59iC7cctoBDp+7
         dSz1AjEpuKGPW7xiDE9KHJfGrZcl+5XbIiQAsRpXfx58WLzbjkz46gu1Y/ZTfIq/lAyt
         Oc3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="r7RE+J/t";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d8si1131087lji.0.2020.02.24.17.41.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 17:41:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t14so1386539wmi.5
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 17:41:58 -0800 (PST)
X-Received: by 2002:a7b:c750:: with SMTP id w16mr1916482wmk.46.1582594918214;
        Mon, 24 Feb 2020 17:41:58 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id z19sm1795594wmi.43.2020.02.24.17.41.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 24 Feb 2020 17:41:57 -0800 (PST)
From: ci_notify@linaro.org
Date: Tue, 25 Feb 2020 01:41:56 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <565726565.3814.1582594917238.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-lts-defconfig
 - Build # 9 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3813_1848146433.1582594916249"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-lts-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="r7RE+J/t";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341
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

------=_Part_3813_1848146433.1582594916249
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-lts-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-lts-defconfig

Culprit:
<cut>
commit c93112dc4f745b0455addb54bfe1c2f79b827c6d
Author: zoecarver <z.zoelec2@gmail.com>
Date:   Mon Feb 24 13:43:22 2020 -0800

    Validate argument passed to __builtin_frame_address and __builtin_return_address
    
    Verifies that the argument passed to __builtin_frame_address and __builtin_return_address is within the range [0, 0xFFFF].
</cut>

First few errors in logs of first_bad:
00:02:30 clang-11: error: unable to execute command: Aborted (core dumped)
00:02:30 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:02:30 make[2]: *** [kernel/printk/printk.o] Error 254
00:02:31 make[1]: *** [kernel/printk] Error 2
00:04:17 make: *** [kernel] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="bae33a7c5a1f220671e6d99cda21749afe2501a6"

Results regressed to (for first_bad == c93112dc4f745b0455addb54bfe1c2f79b827c6d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
5374

from (for last_good == df8dda67ed03f7d7ba3d9475556ab01946386852)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
5820
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/build-c93112dc4f745b0455addb54bfe1c2f79b827c6d/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/build-df8dda67ed03f7d7ba3d9475556ab01946386852/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/

Reproduce builds:
<cut>
mkdir investigate-llvm-c93112dc4f745b0455addb54bfe1c2f79b827c6d
cd investigate-llvm-c93112dc4f745b0455addb54bfe1c2f79b827c6d

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach c93112dc4f745b0455addb54bfe1c2f79b827c6d
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach df8dda67ed03f7d7ba3d9475556ab01946386852
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-lts-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/consoleText

Full commit:
<cut>
commit c93112dc4f745b0455addb54bfe1c2f79b827c6d
Author: zoecarver <z.zoelec2@gmail.com>
Date:   Mon Feb 24 13:43:22 2020 -0800

    Validate argument passed to __builtin_frame_address and __builtin_return_address
    
    Verifies that the argument passed to __builtin_frame_address and __builtin_return_address is within the range [0, 0xFFFF].
---
 clang/lib/Sema/SemaChecking.cpp        |  5 +++++
 clang/test/Sema/builtin-stackaddress.c | 28 +++++++++++++++++++++++++---
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/clang/lib/Sema/SemaChecking.cpp b/clang/lib/Sema/SemaChecking.cpp
index a986ef2bb68..590a7b43d1e 100644
--- a/clang/lib/Sema/SemaChecking.cpp
+++ b/clang/lib/Sema/SemaChecking.cpp
@@ -1847,6 +1847,11 @@ Sema::CheckBuiltinFunctionCall(FunctionDecl *FDecl, unsigned BuiltinID,
     if (SemaBuiltinOSLogFormat(TheCall))
       return ExprError();
     break;
+  case Builtin::BI__builtin_frame_address:
+  case Builtin::BI__builtin_return_address:
+    if (!SemaBuiltinConstantArgRange(TheCall, 0, 0, 0xFFFF))
+      return ExprError();
+    break;
   }
 
   // Since the target specific builtins for each arch overlap, only check those
diff --git a/clang/test/Sema/builtin-stackaddress.c b/clang/test/Sema/builtin-stackaddress.c
index 5f63bb11462..a122f851adb 100644
--- a/clang/test/Sema/builtin-stackaddress.c
+++ b/clang/test/Sema/builtin-stackaddress.c
@@ -1,5 +1,6 @@
 // RUN: %clang_cc1 -fsyntax-only -verify %s
-void* a(unsigned x) {
+
+void a(unsigned x) {
 return __builtin_return_address(0);
 }
 
@@ -8,9 +9,30 @@ return __builtin_return_address(x); // expected-error{{argument to '__builtin_re
 }
 
 void* c(unsigned x) {
+// expected-error@+1 {{argument value 4294967295 is outside the valid range [0, 65535]}}
+return __builtin_return_address(-1);
+}
+
+void* d(unsigned x) {
+// expected-error@+1 {{argument value 1048575 is outside the valid range [0, 65535]}}
+return __builtin_return_address(0xFFFFF);
+}
+
+void* e(unsigned x) {
 return __builtin_frame_address(0);
 }
 
-void d(unsigned x) {
-return __builtin_frame_address(x); // expected-error{{argument to '__builtin_frame_address' must be a constant integer}}
+void f(unsigned x) {
+// expected-error@+1 {{argument to '__builtin_frame_address' must be a constant integer}}
+return __builtin_frame_address(x);
+}
+
+void* g(unsigned x) {
+// expected-error@+1 {{argument value 4294967295 is outside the valid range [0, 65535]}}
+return __builtin_frame_address(-1);
+}
+
+void* h(unsigned x) {
+// expected-error@+1 {{argument value 1048575 is outside the valid range [0, 65535]}}
+return __builtin_frame_address(0xFFFFF);
 }
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/565726565.3814.1582594917238.JavaMail.javamailuser%40localhost.

------=_Part_3813_1848146433.1582594916249--
