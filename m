Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB76RYTZQKGQEDWDGHAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C8B188E3D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 20:46:08 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id e14sf3888785ljp.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 12:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584474367; cv=pass;
        d=google.com; s=arc-20160816;
        b=DHP1wPtLuwMu/DWVjyM0xIu0kTolYA8Ba3/qYyODTWwIQNABbWjBR4b1c5USNNe8rx
         7XoNbXxvCOusrplgSo60AKZI+S8uzYK9LIce71cNtYJDh1mBZh5oVQa9k9L6QdTDFs+q
         Atih701UU2WY9mph/3/t+9HdjPG8BmwuX5M7OyeMCxdTnMjgmyudbBIL020B5QRGm+x1
         EiYHjrZ8UcqNbyltnItn2k+fOyV/3n7WnYrX5I6S2K5CTm51RHayHVC9PhXfFQzM1I0F
         r+WAz0XeRJk55jt7ZWEvsyy14Dxqi0veBCVqIJxaDCH/lr9b3apuP3Mkk1U26cgWww20
         ZlyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=XLL/NhNxnCIZKB69tqUUG/Wcn3XWTd3aWo4ffeTY84A=;
        b=i50Iu1bilWqU8DfSuJXdS+Tpz0hoSVwfpi+6fwxt7wG3xIJ8KA03UQs6nky58rFOp3
         Oerr8/EV0KNkR6LfIBg9w1u/6cTJMnZ9p6R+6d2QfbDpiUH95ZLiDFTKnms4r+BZH/zF
         zzoSOtPf91IAg/UmQnNqbvCce1Oq7pkb3jZ2bZL0+BrPmKJB0xcwHYM1sEkrCv14nLiL
         iARPCQu9QvElGZVkDptQDNhjQowSYvEPZzHuKylANMB2f3z89cgbBGr2ZS5MZqIDQWFB
         eydBzNLnAoqqwQY739oqg5szf5qQ89TZ4cAQ0uDvBIE57yShG/9tkTgBO1ipbwE82Fue
         w4oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="gu69/6ZY";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XLL/NhNxnCIZKB69tqUUG/Wcn3XWTd3aWo4ffeTY84A=;
        b=LQWZ2QJo7QFuONtzPe9Gz3B3W8KE+PuRvfXeQ8TOoBMcVOYjOAv267DNCSdwc66lrc
         47ltpRwRuSRAz7QvLsKfNzxXmTqsRI7GiyBQ4RC0zqTVZIt5NvKR1/xhz5m9wSNsHEO1
         ai98vWfNdqSb42zmXkF01FX/jgYkv2YVjUIRtT2Fl3V7sjRMgAltVJW6udfIBTrBjhGB
         Bo6JutULMgk31UGEWpQL8HBceczqfxUywC2kj3Syem2C8AMtcnkWfiIafv3VkIyN7Eh8
         aGynKnsDUb+NlIxNBDlHBOz5PPBEn5U3W8QjUzeqFzFMt2lWiEgX2Ug5Jujh3qoElu0V
         0E5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XLL/NhNxnCIZKB69tqUUG/Wcn3XWTd3aWo4ffeTY84A=;
        b=PhDMaYrNo9Fy5X4QOjS+vFlm0LoRe9B+yKqAZs7z9RsMTzhPsmHQWScKEgMlg6Q5d9
         2w2Zajva/jROfYOHMeMsrMQNylRPcMjatcTxFgWfFxyJV7HtaIXD3bOhK2Rz/2ELRCL/
         9WoJUVsxwR8eqbzOzcGJ88BXEeD7NJp2zL44vwRPuvR+N0l5yxr+HcnL2eLqp4eH8yqy
         uU2UGprjU4jP879vQUxgSNK3b7CfN9ZE5zNFDUSY3mWwf2dsXIB7MX42GPNNbIxag2kI
         vO/I/SUzHpVYm/18dFBDgBO9RG4lt5HQ5qfCr4/yNzbpM171lJpf0IlAUaCwj56mhYTG
         8vdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2FWcjsqtsUqt2INokiA/UJUwc0yk+neVoLewShbSv1Lmf2QHe8
	h8pYzMHluuhkqe/cHAufRDw=
X-Google-Smtp-Source: ADFU+vufoa5zc00UrLd8Z+Rqx1dbtZCLW2DVtgI5fbbdZ2I2TI72pvtaLbSUsW6FFej5lEgklwGi/Q==
X-Received: by 2002:a05:651c:2c9:: with SMTP id f9mr228625ljo.85.1584474367466;
        Tue, 17 Mar 2020 12:46:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls2369331ljj.11.gmail; Tue, 17
 Mar 2020 12:46:06 -0700 (PDT)
X-Received: by 2002:a2e:9f49:: with SMTP id v9mr230089ljk.238.1584474366719;
        Tue, 17 Mar 2020 12:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584474366; cv=none;
        d=google.com; s=arc-20160816;
        b=zSPHX9Ml2OINVeJRSxQyTPiJPxDOS6oBN5VJWTYus7nelhbaUycBZF5PSbRrAtuY9x
         goSxRt3TxyVn1siMEWKOKNY/tR6CHqslZH420/jdVslVOzX9aK/E+0P9fs/KhzlsgEiz
         dR9KXoluPRa5bqCourZ2kajluLQ6J4pATiGrkqMgaz5jm8e7vHF4LLbzBYpN4upR/m/F
         dgXjbB7fMAHgtw/of5KSIis0eutSQ6hcDBUcPTjNvlcdv86JNa9q9o8TYggQuCHnOBZi
         VqjyDAY4CPs0uXzubqr1LHrxUdbye/8iVCui4Sy4Pl47LZrttRnAAItVbaQTTGptW7eh
         JUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=rFFRtWHjiiMH3F6mMA9ICDyPmkvR5Xy2vTpcf/23k4Q=;
        b=dem1URq5jMu8HDQ7Q5r/12Go7V+9DS3TpPZXuhhB4dV9TXCmZXIXoQ5LgqcIIy6lOZ
         9qmeyqLNtZCSZM8EZogat2qkKClcMaQjpGm516E8J5q+aPKyVHc3Sg1Bc3lmwHqixEuD
         rCQp6ecw2w1H/LJnCnhdqV9C357wMPVoLw+Jr3x4P2FIJXusPVb/AW/sw2rX2E/VcSt1
         ofPv+yGLkcgHwptSNCYLLMEgdAeIiBTsE7CDC1rrzwUfkarLzxFycd2PxZ1zcQa898Ev
         tXIu64imzFkNuqZjWeD5xznJYoavjXf7IPgvURyzeSDMBB8jF58CcNCZRCftzaEOz+qj
         AnzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="gu69/6ZY";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c15si190923ljn.3.2020.03.17.12.46.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 12:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id f3so20330715wrw.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 12:46:06 -0700 (PDT)
X-Received: by 2002:a5d:6845:: with SMTP id o5mr658490wrw.86.1584474365809;
        Tue, 17 Mar 2020 12:46:05 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n9sm557565wmi.23.2020.03.17.12.46.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Mar 2020 12:46:05 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 17 Mar 2020 19:46:04 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <388916845.10393.1584474365248.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-stable-allnoconfig - Build # 7 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10392_1824992997.1584474364710"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-stable-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="gu69/6ZY";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
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

------=_Part_10392_1824992997.1584474364710
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-stable-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allnoconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allnoconfig

Culprit:
<cut>
commit af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
Author: Kerry McLaughlin <kerry.mclaughlin@arm.com>

    [SVE][Inline-Asm] Add constraints for SVE ACLE types
</cut>

First few build errors in logs:
00:00:49 ./arch/arm64/include/asm/processor.h:272:15: error: invalid operand for inline asm constraint 'p'
00:00:49 make[2]: *** [kernel/locking/qspinlock.o] Error 1
00:00:49 make[1]: *** [kernel/locking] Error 2
00:00:54 ./arch/arm64/include/asm/processor.h:266:15: error: invalid operand for inline asm constraint 'p'
00:00:54 ./arch/arm64/include/asm/processor.h:266:15: error: invalid operand for inline asm constraint 'p'
00:00:55 make[2]: *** [kernel/sched/core.o] Error 1
00:00:56 ./arch/arm64/include/asm/processor.h:279:8: error: invalid operand for inline asm constraint 'p'
00:00:56 make[1]: *** [fs/inode.o] Error 1
00:00:56 ./arch/arm64/include/asm/processor.h:272:15: error: invalid operand for inline asm constraint 'p'
00:00:56 make[1]: *** [mm/vmscan.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="c5ff3df839321847ab7558ffb292f725d0356dfe"

Results regressed to (for first_bad == af64948e2a050d1ef3b7fd314ed07b2a2fe402a5)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
441

from (for last_good == 06489eaa92162c6b01a767124f3fcdada99bb2f1)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
449
# linux build successful:
all
# linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/artifact/artifacts/build-af64948e2a050d1ef3b7fd314ed07b2a2fe402a5/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/artifact/artifacts/build-06489eaa92162c6b01a767124f3fcdada99bb2f1/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/

Reproduce builds:
<cut>
mkdir investigate-llvm-af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
cd investigate-llvm-af64948e2a050d1ef3b7fd314ed07b2a2fe402a5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 06489eaa92162c6b01a767124f3fcdada99bb2f1
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-stable-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allnoconfig/7/consoleText

Full commit:
<cut>
commit af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
Author: Kerry McLaughlin <kerry.mclaughlin@arm.com>
Date:   Tue Mar 17 10:27:29 2020 +0000

    [SVE][Inline-Asm] Add constraints for SVE ACLE types
    
    Summary:
    Adds the constraints described below to ensure that we
    can tie variables of SVE ACLE types to operands in inline-asm:
     - y: SVE registers Z0-Z7
     - Upl: One of the low eight SVE predicate registers (P0-P7)
     - Upa: Full range of SVE predicate registers (P0-P15)
    
    Reviewers: sdesmalen, huntergr, rovka, cameron.mcinally, efriedma, rengolin
    
    Reviewed By: efriedma
    
    Subscribers: miyuki, tschuett, rkruppe, psnobl, cfe-commits
    
    Tags: #clang
    
    Differential Revision: https://reviews.llvm.org/D75690
---
 clang/lib/Basic/Targets/AArch64.cpp                |  14 +-
 clang/lib/Basic/Targets/AArch64.h                  |  15 ++
 clang/lib/CodeGen/CGCall.cpp                       |  10 +-
 clang/lib/CodeGen/CGStmt.cpp                       |  15 +-
 clang/test/CodeGen/aarch64-sve-inline-asm-crash.c  |  24 ++
 .../CodeGen/aarch64-sve-inline-asm-datatypes.c     | 252 +++++++++++++++++++++
 .../CodeGen/aarch64-sve-inline-asm-negative-test.c |  21 ++
 7 files changed, 340 insertions(+), 11 deletions(-)

diff --git a/clang/lib/Basic/Targets/AArch64.cpp b/clang/lib/Basic/Targets/AArch64.cpp
index bd1a8834c2f..336c7491a5c 100644
--- a/clang/lib/Basic/Targets/AArch64.cpp
+++ b/clang/lib/Basic/Targets/AArch64.cpp
@@ -486,17 +486,29 @@ bool AArch64TargetInfo::validateAsmConstraint(
     Info.setAllowsRegister();
     return true;
   case 'U':
+    if (Name[1] == 'p' && (Name[2] == 'l' || Name[2] == 'a')) {
+      // SVE predicate registers ("Upa"=P0-15, "Upl"=P0-P7)
+      Info.setAllowsRegister();
+      Name += 2;
+      return true;
+    }
     // Ump: A memory address suitable for ldp/stp in SI, DI, SF and DF modes.
     // Utf: A memory address suitable for ldp/stp in TF mode.
     // Usa: An absolute symbolic address.
     // Ush: The high part (bits 32:12) of a pc-relative symbolic address.
-    llvm_unreachable("FIXME: Unimplemented support for U* constraints.");
+
+    // Better to return an error saying that it's an unrecognised constraint
+    // even if this is a valid constraint in gcc.
+    return false;
   case 'z': // Zero register, wzr or xzr
     Info.setAllowsRegister();
     return true;
   case 'x': // Floating point and SIMD registers (V0-V15)
     Info.setAllowsRegister();
     return true;
+  case 'y': // SVE registers (V0-V7)
+    Info.setAllowsRegister();
+    return true;
   }
   return false;
 }
diff --git a/clang/lib/Basic/Targets/AArch64.h b/clang/lib/Basic/Targets/AArch64.h
index 5e78237743c..befbf693ad8 100644
--- a/clang/lib/Basic/Targets/AArch64.h
+++ b/clang/lib/Basic/Targets/AArch64.h
@@ -87,6 +87,21 @@ public:
 
   ArrayRef<const char *> getGCCRegNames() const override;
   ArrayRef<TargetInfo::GCCRegAlias> getGCCRegAliases() const override;
+
+  std::string convertConstraint(const char *&Constraint) const override {
+    std::string R;
+    switch (*Constraint) {
+    case 'U': // Three-character constraint; add "@3" hint for later parsing.
+      R = std::string("@3") + std::string(Constraint, 3);
+      Constraint += 2;
+      break;
+    default:
+      R = std::string(1, *Constraint);
+      break;
+    }
+    return R;
+  }
+
   bool validateAsmConstraint(const char *&Name,
                              TargetInfo::ConstraintInfo &Info) const override;
   bool
diff --git a/clang/lib/CodeGen/CGCall.cpp b/clang/lib/CodeGen/CGCall.cpp
index 1188ea39ba2..ad8ebd245b9 100644
--- a/clang/lib/CodeGen/CGCall.cpp
+++ b/clang/lib/CodeGen/CGCall.cpp
@@ -4496,8 +4496,9 @@ RValue CodeGenFunction::EmitCall(const CGFunctionInfo &CallInfo,
   // Update the largest vector width if any arguments have vector types.
   for (unsigned i = 0; i < IRCallArgs.size(); ++i) {
     if (auto *VT = dyn_cast<llvm::VectorType>(IRCallArgs[i]->getType()))
-      LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
-                                   VT->getPrimitiveSizeInBits().getFixedSize());
+      LargestVectorWidth =
+          std::max((uint64_t)LargestVectorWidth,
+                   VT->getPrimitiveSizeInBits().getKnownMinSize());
   }
 
   // Compute the calling convention and attributes.
@@ -4611,8 +4612,9 @@ RValue CodeGenFunction::EmitCall(const CGFunctionInfo &CallInfo,
 
   // Update largest vector width from the return type.
   if (auto *VT = dyn_cast<llvm::VectorType>(CI->getType()))
-    LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
-                                  VT->getPrimitiveSizeInBits().getFixedSize());
+    LargestVectorWidth =
+        std::max((uint64_t)LargestVectorWidth,
+                 VT->getPrimitiveSizeInBits().getKnownMinSize());
 
   // Insert instrumentation or attach profile metadata at indirect call sites.
   // For more details, see the comment before the definition of
diff --git a/clang/lib/CodeGen/CGStmt.cpp b/clang/lib/CodeGen/CGStmt.cpp
index a334bab0678..49f1725ed47 100644
--- a/clang/lib/CodeGen/CGStmt.cpp
+++ b/clang/lib/CodeGen/CGStmt.cpp
@@ -2095,8 +2095,9 @@ void CodeGenFunction::EmitAsmStmt(const AsmStmt &S) {
 
       // Update largest vector width for any vector types.
       if (auto *VT = dyn_cast<llvm::VectorType>(ResultRegTypes.back()))
-        LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
-                                   VT->getPrimitiveSizeInBits().getFixedSize());
+        LargestVectorWidth =
+            std::max((uint64_t)LargestVectorWidth,
+                     VT->getPrimitiveSizeInBits().getKnownMinSize());
     } else {
       ArgTypes.push_back(Dest.getAddress(*this).getType());
       Args.push_back(Dest.getPointer(*this));
@@ -2120,8 +2121,9 @@ void CodeGenFunction::EmitAsmStmt(const AsmStmt &S) {
 
       // Update largest vector width for any vector types.
       if (auto *VT = dyn_cast<llvm::VectorType>(Arg->getType()))
-        LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
-                                   VT->getPrimitiveSizeInBits().getFixedSize());
+        LargestVectorWidth =
+            std::max((uint64_t)LargestVectorWidth,
+                     VT->getPrimitiveSizeInBits().getKnownMinSize());
       if (Info.allowsRegister())
         InOutConstraints += llvm::utostr(i);
       else
@@ -2207,8 +2209,9 @@ void CodeGenFunction::EmitAsmStmt(const AsmStmt &S) {
 
     // Update largest vector width for any vector types.
     if (auto *VT = dyn_cast<llvm::VectorType>(Arg->getType()))
-      LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
-                                   VT->getPrimitiveSizeInBits().getFixedSize());
+      LargestVectorWidth =
+          std::max((uint64_t)LargestVectorWidth,
+                   VT->getPrimitiveSizeInBits().getKnownMinSize());
 
     ArgTypes.push_back(Arg->getType());
     Args.push_back(Arg);
diff --git a/clang/test/CodeGen/aarch64-sve-inline-asm-crash.c b/clang/test/CodeGen/aarch64-sve-inline-asm-crash.c
new file mode 100644
index 00000000000..11ddb7f6d58
--- /dev/null
+++ b/clang/test/CodeGen/aarch64-sve-inline-asm-crash.c
@@ -0,0 +1,24 @@
+// REQUIRES: aarch64-registered-target
+
+// RUN: not %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve -fallow-half-arguments-and-returns \
+// RUN:   -target-feature +neon -S -O1 -o - %s 2>&1 | FileCheck %s
+
+// Set a vector constraint for an sve predicate register
+// As the wrong constraint is used for an SVBool,
+// the compiler will try to extend the nxv16i1 to an nxv16i8
+// TODO: We don't have patterns for this yet but once they are added this test
+// should be updated to check for an assembler error
+__SVBool_t funcB1(__SVBool_t in)
+{
+  __SVBool_t ret ;
+  asm volatile (
+    "mov %[ret].b, %[in].b \n"
+    : [ret] "=w" (ret)
+    : [in] "w" (in)
+    :);
+
+  return ret ;
+}
+
+// CHECK: funcB1
+// CHECK-ERROR: fatal error: error in backend: Cannot select
diff --git a/clang/test/CodeGen/aarch64-sve-inline-asm-datatypes.c b/clang/test/CodeGen/aarch64-sve-inline-asm-datatypes.c
new file mode 100644
index 00000000000..c68bb25e36f
--- /dev/null
+++ b/clang/test/CodeGen/aarch64-sve-inline-asm-datatypes.c
@@ -0,0 +1,252 @@
+// RUN: %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve -fallow-half-arguments-and-returns \
+// RUN:   -target-feature +neon -S -O1 -o - -emit-llvm %s | FileCheck %s
+
+// Tests to check that all sve datatypes can be passed in as input operands
+// and passed out as output operands.
+
+#define SVINT_TEST(DT, KIND)\
+DT func_int_##DT##KIND(DT in)\
+{\
+  DT out;\
+  asm volatile (\
+    "ptrue p0.b\n"\
+    "mov %[out]." #KIND ", p0/m, %[in]." #KIND "\n"\
+    : [out] "=w" (out)\
+    : [in] "w" (in)\
+    : "p0"\
+    );\
+  return out;\
+}
+
+SVINT_TEST(__SVUint8_t,b);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+SVINT_TEST(__SVUint8_t,h);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+SVINT_TEST(__SVUint8_t,s);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+SVINT_TEST(__SVUint8_t,d);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+
+SVINT_TEST(__SVUint16_t,b);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+SVINT_TEST(__SVUint16_t,h);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+SVINT_TEST(__SVUint16_t,s);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+SVINT_TEST(__SVUint16_t,d);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+
+SVINT_TEST(__SVUint32_t,b);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+SVINT_TEST(__SVUint32_t,h);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+SVINT_TEST(__SVUint32_t,s);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+SVINT_TEST(__SVUint32_t,d);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+
+SVINT_TEST(__SVUint64_t,b);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+SVINT_TEST(__SVUint64_t,h);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+SVINT_TEST(__SVUint64_t,s);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+SVINT_TEST(__SVUint64_t,d);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+
+SVINT_TEST(__SVInt8_t,b);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+SVINT_TEST(__SVInt8_t,h);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+SVINT_TEST(__SVInt8_t,s);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+SVINT_TEST(__SVInt8_t,d);
+// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
+
+SVINT_TEST(__SVInt16_t,b);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+SVINT_TEST(__SVInt16_t,h);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+SVINT_TEST(__SVInt16_t,s);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+SVINT_TEST(__SVInt16_t,d);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
+
+SVINT_TEST(__SVInt32_t,b);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+SVINT_TEST(__SVInt32_t,h);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+SVINT_TEST(__SVInt32_t,s);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+SVINT_TEST(__SVInt32_t,d);
+// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
+
+SVINT_TEST(__SVInt64_t,b);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+SVINT_TEST(__SVInt64_t,h);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+SVINT_TEST(__SVInt64_t,s);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+SVINT_TEST(__SVInt64_t,d);
+// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
+
+
+//Test that floats can also be used as datatypes for integer instructions
+//and check all the variants which would not be possible with a float
+//instruction
+SVINT_TEST(__SVFloat16_t,b);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
+SVINT_TEST(__SVFloat16_t,h);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
+SVINT_TEST(__SVFloat16_t,s);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
+SVINT_TEST(__SVFloat16_t,d);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
+
+SVINT_TEST(__SVFloat32_t,b);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
+SVINT_TEST(__SVFloat32_t,h);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
+SVINT_TEST(__SVFloat32_t,s);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
+SVINT_TEST(__SVFloat32_t,d);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
+
+SVINT_TEST(__SVFloat64_t,b);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
+SVINT_TEST(__SVFloat64_t,h);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
+SVINT_TEST(__SVFloat64_t,s);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
+SVINT_TEST(__SVFloat64_t,d);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
+
+
+#define SVBOOL_TEST(KIND)\
+__SVBool_t func_bool_##KIND(__SVBool_t in1, __SVBool_t in2)\
+{\
+  __SVBool_t out;\
+  asm volatile (\
+    "zip1 %[out]." #KIND ", %[in1]." #KIND ", %[in2]." #KIND "\n"\
+    : [out] "=Upa" (out)\
+    :  [in1] "Upa" (in1),\
+      [in2] "Upa" (in2)\
+    :);\
+  return out;\
+}
+
+SVBOOL_TEST(b) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.b, $1.b, $2.b\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
+SVBOOL_TEST(h) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.h, $1.h, $2.h\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
+SVBOOL_TEST(s) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.s, $1.s, $2.s\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
+SVBOOL_TEST(d) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.d, $1.d, $2.d\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
+
+
+#define SVBOOL_TEST_UPL(DT, KIND)\
+__SVBool_t func_bool_upl_##KIND(__SVBool_t in1, DT in2, DT in3)\
+{\
+  __SVBool_t out;\
+  asm volatile (\
+    "fadd %[out]." #KIND ", %[in1]." #KIND ", %[in2]." #KIND ", %[in3]." #KIND "\n"\
+    : [out] "=w" (out)\
+    :  [in1] "Upl" (in1),\
+      [in2] "w" (in2),\
+      [in3] "w" (in3)\
+    :);\
+  return out;\
+}
+
+SVBOOL_TEST_UPL(__SVInt8_t, b) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.b, $1.b, $2.b, $3.b\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 16 x i8> %in2, <vscale x 16 x i8> %in3)
+SVBOOL_TEST_UPL(__SVInt16_t, h) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.h, $1.h, $2.h, $3.h\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 8 x i16> %in2, <vscale x 8 x i16> %in3)
+SVBOOL_TEST_UPL(__SVInt32_t, s) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.s, $1.s, $2.s, $3.s\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 4 x i32> %in2, <vscale x 4 x i32> %in3)
+SVBOOL_TEST_UPL(__SVInt64_t, d) ;
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.d, $1.d, $2.d, $3.d\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 2 x i64> %in2, <vscale x 2 x i64> %in3)
+
+#define SVFLOAT_TEST(DT,KIND)\
+DT func_float_##DT##KIND(DT inout1, DT in2)\
+{\
+  asm volatile (\
+    "ptrue p0." #KIND ", #1 \n"\
+    "fsub %[inout1]." #KIND ", p0/m, %[inout1]." #KIND ", %[in2]." #KIND "\n"\
+    : [inout1] "=w" (inout1)\
+    : "[inout1]" (inout1),\
+      [in2] "w" (in2)\
+    : "p0");\
+  return inout1 ;\
+}\
+
+SVFLOAT_TEST(__SVFloat16_t,s);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.s, #1 \0Afsub $0.s, p0/m, $0.s, $2.s\0A", "=w,0,w,~{p0}"(<vscale x 8 x half> %inout1, <vscale x 8 x half> %in2)
+SVFLOAT_TEST(__SVFloat16_t,d);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.d, #1 \0Afsub $0.d, p0/m, $0.d, $2.d\0A", "=w,0,w,~{p0}"(<vscale x 8 x half> %inout1, <vscale x 8 x half> %in2)
+
+SVFLOAT_TEST(__SVFloat32_t,s);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.s, #1 \0Afsub $0.s, p0/m, $0.s, $2.s\0A", "=w,0,w,~{p0}"(<vscale x 4 x float> %inout1, <vscale x 4 x float> %in2)
+SVFLOAT_TEST(__SVFloat32_t,d);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.d, #1 \0Afsub $0.d, p0/m, $0.d, $2.d\0A", "=w,0,w,~{p0}"(<vscale x 4 x float> %inout1, <vscale x 4 x float> %in2)
+
+SVFLOAT_TEST(__SVFloat64_t,s);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.s, #1 \0Afsub $0.s, p0/m, $0.s, $2.s\0A", "=w,0,w,~{p0}"(<vscale x 2 x double> %inout1, <vscale x 2 x double> %in2)
+SVFLOAT_TEST(__SVFloat64_t,d);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.d, #1 \0Afsub $0.d, p0/m, $0.d, $2.d\0A", "=w,0,w,~{p0}"(<vscale x 2 x double> %inout1, <vscale x 2 x double> %in2)
+
+#define SVFLOAT_TEST_Y(DT, KIND)\
+__SVBool_t func_float_y_##KIND(DT in1, DT in2)\
+{\
+  __SVBool_t out;\
+  asm volatile (\
+    "fmul %[out]." #KIND ", %[in1]." #KIND ", %[in2]." #KIND "\n"\
+    : [out] "=w" (out)\
+    :  [in1] "w" (in1),\
+      [in2] "y" (in2)\
+    :);\
+  return out;\
+}
+
+SVFLOAT_TEST_Y(__SVFloat16_t,h);
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fmul $0.h, $1.h, $2.h\0A", "=w,w,y"(<vscale x 8 x half> %in1, <vscale x 8 x half> %in2)
+SVFLOAT_TEST_Y(__SVFloat32_t,s);
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fmul $0.s, $1.s, $2.s\0A", "=w,w,y"(<vscale x 4 x float> %in1, <vscale x 4 x float> %in2)
+SVFLOAT_TEST_Y(__SVFloat64_t,d);
+// CHECK: call <vscale x 16 x i1> asm sideeffect "fmul $0.d, $1.d, $2.d\0A", "=w,w,y"(<vscale x 2 x double> %in1, <vscale x 2 x double> %in2)
+
+
+// Another test for floats to include h suffix
+
+#define SVFLOAT_CVT_TEST(DT1,KIND1,DT2,KIND2)\
+DT1 func_float_cvt_##DT1##KIND1##DT2##KIND2(DT2 in1)\
+{\
+  DT1 out1 ;\
+  asm volatile (\
+    "ptrue p0." #KIND2 ", #1 \n"\
+    "fcvt %[out1]." #KIND1 ", p0/m, %[in1]." #KIND2 "\n"\
+    : [out1] "=w" (out1)\
+    : [in1] "w" (in1)\
+    : "p0");\
+  return out1 ;\
+}\
+
+SVFLOAT_CVT_TEST(__SVFloat64_t,d,__SVFloat32_t,s);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.s, #1 \0Afcvt $0.d, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in1)
+SVFLOAT_CVT_TEST(__SVFloat64_t,d,__SVFloat16_t,h);
+// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.h, #1 \0Afcvt $0.d, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in1)
+SVFLOAT_CVT_TEST(__SVFloat32_t,s,__SVFloat16_t,h);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.h, #1 \0Afcvt $0.s, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in1)
+SVFLOAT_CVT_TEST(__SVFloat32_t,s,__SVFloat64_t,d);
+// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.d, #1 \0Afcvt $0.s, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in1)
+SVFLOAT_CVT_TEST(__SVFloat16_t,h,__SVFloat64_t,d);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.d, #1 \0Afcvt $0.h, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in1)
+SVFLOAT_CVT_TEST(__SVFloat16_t,h,__SVFloat32_t,s);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.s, #1 \0Afcvt $0.h, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in1)
+
+//Test a mix of float and ints
+SVFLOAT_CVT_TEST(__SVInt16_t,h,__SVFloat32_t,s);
+// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.s, #1 \0Afcvt $0.h, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in1)
+SVFLOAT_CVT_TEST(__SVFloat16_t,s,__SVUint32_t,d);
+// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.d, #1 \0Afcvt $0.s, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in1)
diff --git a/clang/test/CodeGen/aarch64-sve-inline-asm-negative-test.c b/clang/test/CodeGen/aarch64-sve-inline-asm-negative-test.c
new file mode 100644
index 00000000000..ffe7a419469
--- /dev/null
+++ b/clang/test/CodeGen/aarch64-sve-inline-asm-negative-test.c
@@ -0,0 +1,21 @@
+// REQUIRES: aarch64-registered-target
+
+// RUN: not %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve -fallow-half-arguments-and-returns \
+// RUN:   -target-feature +neon -S -O1 -o - %s | FileCheck %s
+
+// Assembler error
+// Output constraint : Set a vector constraint on an integer
+__SVFloat32_t funcB2()
+{
+  __SVFloat32_t ret ;
+  asm volatile (
+    "fmov %[ret], wzr \n"
+    : [ret] "=w" (ret)
+    :
+    :);
+
+  return ret ;
+}
+
+// CHECK: funcB2
+// CHECK-ERROR: error: invalid operand for instruction
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/388916845.10393.1584474365248.JavaMail.javamailuser%40localhost.

------=_Part_10392_1824992997.1584474364710--
