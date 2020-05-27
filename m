Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBOHDXD3AKGQE53MH4LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CA91E3D7B
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:24:08 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id v23sf677905wmj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 02:24:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590571448; cv=pass;
        d=google.com; s=arc-20160816;
        b=E+TCgJpMsxnyQzrFFW9JJG4PJkh92sskXyZQbajK6SUlhuVIQG12xEnNt+BAN/flvO
         kzZIt/oe4U9B+Xhvqpr7c8TS8tQ+pJ0fri0fvB85rzRlmjNctO+7+wJ8H+XHLYVO2RLQ
         ZnRX2jmTcVDCKoIv8aRLDzr+5iUzZLp3aNh5aFzXJoA9b1vpRUMzPquCl6KjUpULQIrv
         JMhVz4R6zKC129LpyQiMzzM2CRIj1rEBwGmQA602+mL9/PFxYJAJNwZ80d1XIpZy4Ioc
         sKSkWmIP1bZhzINxmlpYYbN8wDPSvKvPbfieAUXh5Ea8k+GX0ohYjLEzMMXaX4gE8yHu
         I0rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=zRBxV9Av6B5YIn0xulkE5T3YgB0zUcVuwt24NUfqYZQ=;
        b=Uhp7WVN2iHuLV5cZ8eStzOqun6LfZx9croUxsrJpn4dK5O3O47ULb2JoPBXj7huORx
         73LZ3szbjrLjTI03g3nDbFQ4faywzcJJjLvzQUV+legyxEhomF55XjESdfTrnM2Ie3BG
         kNqRM3sh8/+zInfXMK1hiuLlN8Kz8j7ipvuczvHWdwwlkXPKmlrr4UwgBoiG+OAS9aEO
         OTLX2MqVh1VQLt63A5MjtDlPUum4TmbSFTFm84HmMhwtJsSPkrKUxtQVq4twQvZbz+VP
         knkwjm1UN+uOZM0CKOJt6II0VtrCE7HrofPEngWqPyadTJV6QMyuJiFHFxqbg8r9t7UO
         nRrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sjQ5hHLc;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zRBxV9Av6B5YIn0xulkE5T3YgB0zUcVuwt24NUfqYZQ=;
        b=kVvoKMMiUUF+IZrf6rvtL9/dy6XeMALAMQrxMP7Yu6SJVUbCJ2/t/xXDhON9J3ZAD6
         mu/5vPmOxZBxOL1yPSfTloC5n0rCQ5CTRMnbOZ03mmMOkVtsEG3X+yyTYxEyS7dpRfNi
         AIyhNszkzkLoNDWS+1CSLxdWu4gDDZhjavpHKmVGm3tWgnAQ7Zh8t0Lxk//XRZGsDtiR
         gEBEYaJ5IeMS+pTiSok+63cnBpBjZ62UM2Sug0pwFbDM7L2IDwfYq8En3Ox+7oNtCl9C
         8um9pQRgV+w1KzhPRa72t4e0JAowvhWSjKpJK/OiL3GRzfvMp/aE5osAX0L3F+4e3fWM
         Be7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zRBxV9Av6B5YIn0xulkE5T3YgB0zUcVuwt24NUfqYZQ=;
        b=qYsPv9qRZ4CkB9oV8RD490eFqPznJmHNJCtLBOz6RqHfgsCi2DeJrqoZgDmbPrkYNt
         diM8avfO+Zg3Nw0UzktC8eGzkjJ7ueztxbj2IfOo52a1nhyhpVQ1PkKs5DfMjiRxHAsj
         9aupR68BjOASiwqNx1tn1Bv7EAD+0ZL9C8nA8HRjZKXtNYHIZ0X70N2M+EYp31xdTUBO
         Jiqu3XZp5EqkPrQQmVQBrOc8Au3UfO5O+YJ031hFmmowOUBvnpfhdj8h9IZvSUH6Go9i
         37cTvEpQigMTyR1V3Aq0DF8R3whnHkgLzMjdnjWHYNnTaMLDdRC89ctaFyHtDgGn+aVF
         uWUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326WSi6JJ1czCYsS2RGOtgALirzh6hN0J0Dt9xSbGNmQ25is1oX
	A+SfigBBBBs0Gpfg68P+JN4=
X-Google-Smtp-Source: ABdhPJyQ4LEh6GjnlRC2gmUs5Q4nHJRwhLFvdL/7SydTtkXsiLtARrVzsGSZ4bQsFhz9jS+F51+sOw==
X-Received: by 2002:a5d:49c5:: with SMTP id t5mr24592123wrs.18.1590571448351;
        Wed, 27 May 2020 02:24:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls2631386wrc.1.gmail; Wed, 27 May
 2020 02:24:07 -0700 (PDT)
X-Received: by 2002:adf:aa97:: with SMTP id h23mr21294658wrc.251.1590571447822;
        Wed, 27 May 2020 02:24:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590571447; cv=none;
        d=google.com; s=arc-20160816;
        b=vkEyf5fy1h5A6+t7uVa8wbuqVEKanID/FNNert2UGMUeuvsqmB8FDla1kq+3uyuJNU
         PsVgyybN1Cz15elQKbU6KecMCicrjMO0IYXZvHgbKOu0VBZwx4JGLPRqgu+cG2sdeYl7
         FgOQI/8jj+adkL3/veSy2eJd5T8IJejIeGHy7Y0E8bNBrPOrFyaW2Q31rvs/vyGOe6Kk
         XxZhwY2JSNGchWYcBQpbZmxRn2xedQrkwwgSEr/lgRwW7X85PbrYKosgBG9XUqkvXMPf
         7F+8YpS7Q0VKtok6zDVlWVIlKd/rBc0mI6xjE1Si7lXfdoq4BEGfNi4SOV7ztle+iUht
         Qvzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=PTqrMt+Q9OOgPO9nrdkUBN4gkOtfYzm6K7seVv2KEWQ=;
        b=fiThl3rKkM4YBmansZfvmQNvObxslJhbeSo3BtI74JiEZZKclru7XNviHFsUGIeDG7
         1DCvQBIL10LiC8h33er71jXCXkx4UHFExMrxzOS9KY5TwYLF3I+K5y/9sXbxO9aNtYgO
         SsN/pqaZnrvM4sPUaEwxsB2hKSnALrkWE6KiuORKH5NrEUonYnYctTDpvY7Nll2/4oJj
         +W08XyEMwopaDZwItCEz5AXQUX3youJ6Ta2Z7azJH/qG/JoKGuRdlUc/QcawHk+QlUVW
         1ce9K5k3DjPow2XevY0/9O20PTR5UeoD1mPPqd+NG/UIvUlD9vhZce+XlCF4AxxlUB1t
         IK1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sjQ5hHLc;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id z18si91456wml.2.2020.05.27.02.24.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 02:24:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Received: by mail-wr1-x42b.google.com with SMTP id l11so23331611wru.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 02:24:07 -0700 (PDT)
X-Received: by 2002:a05:6000:114e:: with SMTP id d14mr23520661wrx.110.1590571447045;
        Wed, 27 May 2020 02:24:07 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id j4sm101849wma.7.2020.05.27.02.24.06
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 27 May 2020 02:24:06 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 27 May 2020 09:24:05 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1911984047.98.1590571446364.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allyesconfig - Build # 2 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_97_1674878126.1590571445980"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=sjQ5hHLc;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42b
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

------=_Part_97_1674878126.1590571445980
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig

Culprit:
<cut>
commit 98cad555e29187a03e2bc3db5780762981913902
Author: Lucas Prates <lucas.prates@arm.com>

    [Clang][AArch64] Capturing proper pointer alignment for Neon vld1 intrinsicts
</cut>

Results regressed to (for first_bad == 98cad555e29187a03e2bc3db5780762981913902)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18709
# First few build errors in logs:
# 00:07:35 clang-11: error: unable to execute command: Aborted (core dumped)
# 00:07:35 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
# 00:07:36 make[1]: *** [crypto/aegis128-neon-inner.o] Error 254
# 00:12:01 make: *** [crypto] Error 2

from (for last_good == 871556a494552c0f503eec17055f075bcd859937)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18784
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/build-871556a494552c0f503eec17055f075bcd859937/
Artifacts of first_bad build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/build-98cad555e29187a03e2bc3db5780762981913902/
Build top page/logs: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="179c80117c91fc3ba3079740a91de40d98b18916"

Reproduce builds:
<cut>
mkdir investigate-llvm-98cad555e29187a03e2bc3db5780762981913902
cd investigate-llvm-98cad555e29187a03e2bc3db5780762981913902

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 98cad555e29187a03e2bc3db5780762981913902
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 871556a494552c0f503eec17055f075bcd859937
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/
Build log: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/consoleText

Full commit:
<cut>
commit 98cad555e29187a03e2bc3db5780762981913902
Author: Lucas Prates <lucas.prates@arm.com>
Date:   Tue May 5 11:52:09 2020 +0100

    [Clang][AArch64] Capturing proper pointer alignment for Neon vld1 intrinsicts
    
    Summary:
    During CodeGen for AArch64 Neon intrinsics, Clang was incorrectly
    assuming all the pointers from which loads were being generated for vld1
    intrinsics were aligned according to the intrinsics result type, causing
    alignment faults on the code generated by the backend.
    
    This patch updates vld1 intrinsics' CodeGen to properly capture the
    correct load alignment based on the type of the pointer provided as
    input for the intrinsic.
    
    Reviewers: t.p.northover, ostannard, pcc
    
    Reviewed By: ostannard
    
    Subscribers: kristof.beyls, danielkiss, cfe-commits
    
    Tags: #clang
    
    Differential Revision: https://reviews.llvm.org/D79721
---
 clang/lib/CodeGen/CGBuiltin.cpp              | 12 +++----
 clang/test/CodeGen/aarch64-neon-intrinsics.c | 52 ++++++++++++++--------------
 2 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/clang/lib/CodeGen/CGBuiltin.cpp b/clang/lib/CodeGen/CGBuiltin.cpp
index 1adae1a7ea42..ddd9a68a8edb 100644
--- a/clang/lib/CodeGen/CGBuiltin.cpp
+++ b/clang/lib/CodeGen/CGBuiltin.cpp
@@ -10327,9 +10327,9 @@ Value *CodeGenFunction::EmitAArch64BuiltinExpr(unsigned BuiltinID,
   }
   case NEON::BI__builtin_neon_vld1_v:
   case NEON::BI__builtin_neon_vld1q_v: {
+    auto Alignment = CGM.getNaturalPointeeTypeAlignment(
+        E->getArg(0)->IgnoreParenCasts()->getType());
     Ops[0] = Builder.CreateBitCast(Ops[0], llvm::PointerType::getUnqual(VTy));
-    auto Alignment = CharUnits::fromQuantity(
-        BuiltinID == NEON::BI__builtin_neon_vld1_v ? 8 : 16);
     return Builder.CreateAlignedLoad(VTy, Ops[0], Alignment);
   }
   case NEON::BI__builtin_neon_vst1_v:
@@ -10342,8 +10342,8 @@ Value *CodeGenFunction::EmitAArch64BuiltinExpr(unsigned BuiltinID,
     Ops[1] = Builder.CreateBitCast(Ops[1], Ty);
     Ty = llvm::PointerType::getUnqual(VTy->getElementType());
     Ops[0] = Builder.CreateBitCast(Ops[0], Ty);
-    auto Alignment = CharUnits::fromQuantity(
-        BuiltinID == NEON::BI__builtin_neon_vld1_lane_v ? 8 : 16);
+    auto Alignment = CGM.getNaturalPointeeTypeAlignment(
+        E->getArg(0)->IgnoreParenCasts()->getType());
     Ops[0] =
         Builder.CreateAlignedLoad(VTy->getElementType(), Ops[0], Alignment);
     return Builder.CreateInsertElement(Ops[1], Ops[0], Ops[2], "vld1_lane");
@@ -10353,8 +10353,8 @@ Value *CodeGenFunction::EmitAArch64BuiltinExpr(unsigned BuiltinID,
     Value *V = UndefValue::get(Ty);
     Ty = llvm::PointerType::getUnqual(VTy->getElementType());
     Ops[0] = Builder.CreateBitCast(Ops[0], Ty);
-    auto Alignment = CharUnits::fromQuantity(
-        BuiltinID == NEON::BI__builtin_neon_vld1_dup_v ? 8 : 16);
+    auto Alignment = CGM.getNaturalPointeeTypeAlignment(
+        E->getArg(0)->IgnoreParenCasts()->getType());
     Ops[0] =
         Builder.CreateAlignedLoad(VTy->getElementType(), Ops[0], Alignment);
     llvm::Constant *CI = ConstantInt::get(Int32Ty, 0);
diff --git a/clang/test/CodeGen/aarch64-neon-intrinsics.c b/clang/test/CodeGen/aarch64-neon-intrinsics.c
index 7744b4f4a159..1fb245f3d342 100644
--- a/clang/test/CodeGen/aarch64-neon-intrinsics.c
+++ b/clang/test/CodeGen/aarch64-neon-intrinsics.c
@@ -8956,7 +8956,7 @@ float64_t test_vrsqrted_f64(float64_t a) {
 
 // CHECK-LABEL: @test_vld1q_u8(
 // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <16 x i8>*
-// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]]
+// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
 // CHECK:   ret <16 x i8> [[TMP1]]
 uint8x16_t test_vld1q_u8(uint8_t const *a) {
   return vld1q_u8(a);
@@ -8965,7 +8965,7 @@ uint8x16_t test_vld1q_u8(uint8_t const *a) {
 // CHECK-LABEL: @test_vld1q_u16(
 // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x i16>*
-// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]], align 2
 // CHECK:   ret <8 x i16> [[TMP2]]
 uint16x8_t test_vld1q_u16(uint16_t const *a) {
   return vld1q_u16(a);
@@ -8974,7 +8974,7 @@ uint16x8_t test_vld1q_u16(uint16_t const *a) {
 // CHECK-LABEL: @test_vld1q_u32(
 // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i32>*
-// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]], align 4
 // CHECK:   ret <4 x i32> [[TMP2]]
 uint32x4_t test_vld1q_u32(uint32_t const *a) {
   return vld1q_u32(a);
@@ -8983,7 +8983,7 @@ uint32x4_t test_vld1q_u32(uint32_t const *a) {
 // CHECK-LABEL: @test_vld1q_u64(
 // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i64>*
-// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]], align 8
 // CHECK:   ret <2 x i64> [[TMP2]]
 uint64x2_t test_vld1q_u64(uint64_t const *a) {
   return vld1q_u64(a);
@@ -8991,7 +8991,7 @@ uint64x2_t test_vld1q_u64(uint64_t const *a) {
 
 // CHECK-LABEL: @test_vld1q_s8(
 // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <16 x i8>*
-// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]]
+// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
 // CHECK:   ret <16 x i8> [[TMP1]]
 int8x16_t test_vld1q_s8(int8_t const *a) {
   return vld1q_s8(a);
@@ -9000,7 +9000,7 @@ int8x16_t test_vld1q_s8(int8_t const *a) {
 // CHECK-LABEL: @test_vld1q_s16(
 // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x i16>*
-// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]], align 2
 // CHECK:   ret <8 x i16> [[TMP2]]
 int16x8_t test_vld1q_s16(int16_t const *a) {
   return vld1q_s16(a);
@@ -9009,7 +9009,7 @@ int16x8_t test_vld1q_s16(int16_t const *a) {
 // CHECK-LABEL: @test_vld1q_s32(
 // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i32>*
-// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]], align 4
 // CHECK:   ret <4 x i32> [[TMP2]]
 int32x4_t test_vld1q_s32(int32_t const *a) {
   return vld1q_s32(a);
@@ -9018,7 +9018,7 @@ int32x4_t test_vld1q_s32(int32_t const *a) {
 // CHECK-LABEL: @test_vld1q_s64(
 // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i64>*
-// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]], align 8
 // CHECK:   ret <2 x i64> [[TMP2]]
 int64x2_t test_vld1q_s64(int64_t const *a) {
   return vld1q_s64(a);
@@ -9027,7 +9027,7 @@ int64x2_t test_vld1q_s64(int64_t const *a) {
 // CHECK-LABEL: @test_vld1q_f16(
 // CHECK:   [[TMP0:%.*]] = bitcast half* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x half>*
-// CHECK:   [[TMP2:%.*]] = load <8 x half>, <8 x half>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <8 x half>, <8 x half>* [[TMP1]], align 2
 // CHECK:   ret <8 x half> [[TMP2]]
 float16x8_t test_vld1q_f16(float16_t const *a) {
   return vld1q_f16(a);
@@ -9036,7 +9036,7 @@ float16x8_t test_vld1q_f16(float16_t const *a) {
 // CHECK-LABEL: @test_vld1q_f32(
 // CHECK:   [[TMP0:%.*]] = bitcast float* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x float>*
-// CHECK:   [[TMP2:%.*]] = load <4 x float>, <4 x float>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x float>, <4 x float>* [[TMP1]], align 4
 // CHECK:   ret <4 x float> [[TMP2]]
 float32x4_t test_vld1q_f32(float32_t const *a) {
   return vld1q_f32(a);
@@ -9045,7 +9045,7 @@ float32x4_t test_vld1q_f32(float32_t const *a) {
 // CHECK-LABEL: @test_vld1q_f64(
 // CHECK:   [[TMP0:%.*]] = bitcast double* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x double>*
-// CHECK:   [[TMP2:%.*]] = load <2 x double>, <2 x double>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <2 x double>, <2 x double>* [[TMP1]], align 8
 // CHECK:   ret <2 x double> [[TMP2]]
 float64x2_t test_vld1q_f64(float64_t const *a) {
   return vld1q_f64(a);
@@ -9053,7 +9053,7 @@ float64x2_t test_vld1q_f64(float64_t const *a) {
 
 // CHECK-LABEL: @test_vld1q_p8(
 // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <16 x i8>*
-// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]]
+// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
 // CHECK:   ret <16 x i8> [[TMP1]]
 poly8x16_t test_vld1q_p8(poly8_t const *a) {
   return vld1q_p8(a);
@@ -9062,7 +9062,7 @@ poly8x16_t test_vld1q_p8(poly8_t const *a) {
 // CHECK-LABEL: @test_vld1q_p16(
 // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x i16>*
-// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]], align 2
 // CHECK:   ret <8 x i16> [[TMP2]]
 poly16x8_t test_vld1q_p16(poly16_t const *a) {
   return vld1q_p16(a);
@@ -9070,7 +9070,7 @@ poly16x8_t test_vld1q_p16(poly16_t const *a) {
 
 // CHECK-LABEL: @test_vld1_u8(
 // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <8 x i8>*
-// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]]
+// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]], align 1
 // CHECK:   ret <8 x i8> [[TMP1]]
 uint8x8_t test_vld1_u8(uint8_t const *a) {
   return vld1_u8(a);
@@ -9079,7 +9079,7 @@ uint8x8_t test_vld1_u8(uint8_t const *a) {
 // CHECK-LABEL: @test_vld1_u16(
 // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i16>*
-// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]], align 2
 // CHECK:   ret <4 x i16> [[TMP2]]
 uint16x4_t test_vld1_u16(uint16_t const *a) {
   return vld1_u16(a);
@@ -9088,7 +9088,7 @@ uint16x4_t test_vld1_u16(uint16_t const *a) {
 // CHECK-LABEL: @test_vld1_u32(
 // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i32>*
-// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]], align 4
 // CHECK:   ret <2 x i32> [[TMP2]]
 uint32x2_t test_vld1_u32(uint32_t const *a) {
   return vld1_u32(a);
@@ -9097,7 +9097,7 @@ uint32x2_t test_vld1_u32(uint32_t const *a) {
 // CHECK-LABEL: @test_vld1_u64(
 // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <1 x i64>*
-// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]], align 8
 // CHECK:   ret <1 x i64> [[TMP2]]
 uint64x1_t test_vld1_u64(uint64_t const *a) {
   return vld1_u64(a);
@@ -9105,7 +9105,7 @@ uint64x1_t test_vld1_u64(uint64_t const *a) {
 
 // CHECK-LABEL: @test_vld1_s8(
 // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <8 x i8>*
-// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]]
+// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]], align 1
 // CHECK:   ret <8 x i8> [[TMP1]]
 int8x8_t test_vld1_s8(int8_t const *a) {
   return vld1_s8(a);
@@ -9114,7 +9114,7 @@ int8x8_t test_vld1_s8(int8_t const *a) {
 // CHECK-LABEL: @test_vld1_s16(
 // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i16>*
-// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]], align 2
 // CHECK:   ret <4 x i16> [[TMP2]]
 int16x4_t test_vld1_s16(int16_t const *a) {
   return vld1_s16(a);
@@ -9123,7 +9123,7 @@ int16x4_t test_vld1_s16(int16_t const *a) {
 // CHECK-LABEL: @test_vld1_s32(
 // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i32>*
-// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]], align 4
 // CHECK:   ret <2 x i32> [[TMP2]]
 int32x2_t test_vld1_s32(int32_t const *a) {
   return vld1_s32(a);
@@ -9132,7 +9132,7 @@ int32x2_t test_vld1_s32(int32_t const *a) {
 // CHECK-LABEL: @test_vld1_s64(
 // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <1 x i64>*
-// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]], align 8
 // CHECK:   ret <1 x i64> [[TMP2]]
 int64x1_t test_vld1_s64(int64_t const *a) {
   return vld1_s64(a);
@@ -9141,7 +9141,7 @@ int64x1_t test_vld1_s64(int64_t const *a) {
 // CHECK-LABEL: @test_vld1_f16(
 // CHECK:   [[TMP0:%.*]] = bitcast half* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x half>*
-// CHECK:   [[TMP2:%.*]] = load <4 x half>, <4 x half>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x half>, <4 x half>* [[TMP1]], align 2
 // CHECK:   ret <4 x half> [[TMP2]]
 float16x4_t test_vld1_f16(float16_t const *a) {
   return vld1_f16(a);
@@ -9150,7 +9150,7 @@ float16x4_t test_vld1_f16(float16_t const *a) {
 // CHECK-LABEL: @test_vld1_f32(
 // CHECK:   [[TMP0:%.*]] = bitcast float* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x float>*
-// CHECK:   [[TMP2:%.*]] = load <2 x float>, <2 x float>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <2 x float>, <2 x float>* [[TMP1]], align 4
 // CHECK:   ret <2 x float> [[TMP2]]
 float32x2_t test_vld1_f32(float32_t const *a) {
   return vld1_f32(a);
@@ -9159,7 +9159,7 @@ float32x2_t test_vld1_f32(float32_t const *a) {
 // CHECK-LABEL: @test_vld1_f64(
 // CHECK:   [[TMP0:%.*]] = bitcast double* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <1 x double>*
-// CHECK:   [[TMP2:%.*]] = load <1 x double>, <1 x double>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <1 x double>, <1 x double>* [[TMP1]], align 8
 // CHECK:   ret <1 x double> [[TMP2]]
 float64x1_t test_vld1_f64(float64_t const *a) {
   return vld1_f64(a);
@@ -9167,7 +9167,7 @@ float64x1_t test_vld1_f64(float64_t const *a) {
 
 // CHECK-LABEL: @test_vld1_p8(
 // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <8 x i8>*
-// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]]
+// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]], align 1
 // CHECK:   ret <8 x i8> [[TMP1]]
 poly8x8_t test_vld1_p8(poly8_t const *a) {
   return vld1_p8(a);
@@ -9176,7 +9176,7 @@ poly8x8_t test_vld1_p8(poly8_t const *a) {
 // CHECK-LABEL: @test_vld1_p16(
 // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
 // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i16>*
-// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]]
+// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]], align 2
 // CHECK:   ret <4 x i16> [[TMP2]]
 poly16x4_t test_vld1_p16(poly16_t const *a) {
   return vld1_p16(a);
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1911984047.98.1590571446364.JavaMail.javamailuser%40localhost.

------=_Part_97_1674878126.1590571445980--
