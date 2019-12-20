Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBR546HXQKGQES6LD4ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ABF12755D
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 06:38:15 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id z10sf1018829wrt.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 21:38:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576820295; cv=pass;
        d=google.com; s=arc-20160816;
        b=TlczNqe5DaqLYj77pJCg0bTLoj3La/6kGvJgNUU+ri9w39TGWvQCxwUmm4/27RvxwB
         EsoSmiFpVNUfbZvliium4oSPUUToNJFWrKAB4tCQsLtLvSQkDUpTHBnuDTKTNBXsmtdF
         rf4SxSRs7pAmFWAauNA9awDDVjyuFrGlaBG1OgAnPhzYW4kjvG0Fo+Ty5Y7lQdVVsuPB
         KtCKsV68xpQ3IqBU16g43KBtzdF8qhlG9XU722fksxnJCQYJgpiMBh44Mj73ttkncatg
         IyKuXR1jJC/G+xnuI0LZN0dt/byjbf1lQXjS25rup1zpybj2J/AohCyPGdkEgqg/i90+
         V6cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ISX5rE3dKwAnKbzCfwAhuWChhMwlVHgmeMK5Pfiy3Xc=;
        b=vkHe0FN2mJ5OlNM9E+vgks44TlKG2JHZGGrrtr6Koi8WYwayd9Iba3WNU6qbglGDYn
         Q7fl1b/CreALxEE613Y9qmpLHyAiIUckDDj8zq7utyuDY8uV+lu0jitzUK1SwmJNhoZ7
         gp1xBIn2QL967GNvDj5dOkQ3nBK7t9abOK6mkETdSG5pUZYe8oXRad5gN6R0b+XL67zk
         bY/DbtHfQgudTIg4kuK/c0SgMYVMdTnLzlyCZOyA1HjLaSu9Bt1Hq1TxxJX5dr4uF6Sj
         /Eit/iFLsb11qnLMzT8Cbf+bho615lJWNkQuGNMmeJYk31bo51yZ4hGHH3YVyq9pOja3
         C5xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=izrqYnT2;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ISX5rE3dKwAnKbzCfwAhuWChhMwlVHgmeMK5Pfiy3Xc=;
        b=ACU9TFqJ04nRBhKVtuBmLdGJYaDfESWCS6G9+kMQuS54Xme1yt1zKOQCprvKmtcNhf
         y1yKJDEQVTnCgHdRBzRUcz3ch0OsywfzAETm+GIXYdzYWbr7sGE87h3TAFDzIBGH7ZIF
         uc+myihyNoFnLunL25EzKZ/GegwG/B5+13EAv7ceUufteS4H5yfI0VphnvgglQqvF1+j
         JKkCTcMm/NRp6XEqqBrYxbZ8mDVgAAhpoBO08oco2ogy756QcvsClcJkcYcYy366Ue2b
         /G0H6OZwnRiI3K4mVPDSxUFq+ORDfuAKPlWK8XviT2rwDOLpKfsVxyvFlWJD4KYFlTJe
         0ULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ISX5rE3dKwAnKbzCfwAhuWChhMwlVHgmeMK5Pfiy3Xc=;
        b=aj5MaKIonup3J9W+f4nIkWxxdog8moKhFmBIE6GBuVgBu2kK3hq4lQdaAoLoAppDYE
         /fGx7/MN3vjyyWxl4hdSoiDfzsjxoWsMOVZgtVX1JVIYCeNhsQhV8ypaAMQmonUt0x4o
         op0ylr+f0hVDcvkbejuhS4z4KzEn1XyWmmA+eJmJ/J2FCYmtBoKE29mWcSUy4Yxicl6l
         9z8D8sdIhLPGrmNIj+wLbvG1Mg7VzjH6z2005wTlKFnyCP5a7CcgtKOHdR2ZJkEBA6iL
         +jL6ALFrV0tQzN+T6akrudUm2axodmhpcnwDVbyijh3xly1cGgM10FwOr5WGRvExjnjh
         QiPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDAx+yAO3XfUOP9Cht5A73vtQf54CdKxRXXZBEmj2rI2kbYoEF
	0EEx6SR7Da8MuQGOlRocV1A=
X-Google-Smtp-Source: APXvYqyexUiqsVd7s+lL7Z2NMeK+QjNwBFyP+ZF54JsGKJ043Sf7df+fNd2YwP0SqdXhDSUf3JwzRg==
X-Received: by 2002:adf:fa50:: with SMTP id y16mr13228176wrr.183.1576820295355;
        Thu, 19 Dec 2019 21:38:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls2143899wrn.6.gmail; Thu, 19 Dec
 2019 21:38:14 -0800 (PST)
X-Received: by 2002:a05:6000:1044:: with SMTP id c4mr13563318wrx.204.1576820294819;
        Thu, 19 Dec 2019 21:38:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576820294; cv=none;
        d=google.com; s=arc-20160816;
        b=QrEc2fMcHeDN3V6pN+x61lk8FU+5UcVAfJelGp0d/S4gEkINfvzeRRaS0sg/jCWUTU
         xJiaRa7NmGu9utBZ2SJzva253BsParj+i7j4ToqkqI+I9TZVEU3Aq46qo7nmqBMpaUaB
         0gCkUFWIwhVE0kXH6KUkxDma/Ht4v4QBRXignWg3HX93HqlcSAVspQXwqbKyAbMGcDlk
         YY/HiA4DyX7hZiT6Bvuz2MxyImONiRISvPRpV/7uLvi7UHof39Eq+rLjx5VGzvGf3nXW
         MJnxmGfIJXXAFe7IGpzyhgsBkSlMN/ka8xUW2OyNmoq+JagoPMAO/TGennlTNZOCgDcb
         E93Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=BsxbgCovSbPuvwn2gzBWdE60qAbf/E+cB0kyNzBpCv0=;
        b=A240fDfnpQqcmOAub8/yKhN10DuvjgskGDTiM41/odSjToVCkU5VSVJ5qsGUOZPdVD
         Hniz+/S4ZUjQM2ttV2+uwnq1hcMwXl2TrAt1PYXVS2dO5Km0EA63Llv5QxF29cl5oGpE
         vfrp9g7caMjbbPsxdGV5y8PpCGkQ0sACNqt7dt+fCxF3XaZomksyWz88P9kPhCbbvZ32
         wNRKYDYVBQbPFQiKcBrKY44vRnxjx4pYAuZZ6qGyS/3gwljQ439LGNFJgh2IK6gi/XDo
         /bCd9JSCf0ZJaSNXX5bmzQXB2Ts0xco18kviXgimUrlnLCt0dPqQLg/SseBa5InxkQvB
         Na1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=izrqYnT2;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id m2si580751wmi.3.2019.12.19.21.38.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 21:38:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Received: by mail-wm1-x32f.google.com with SMTP id m24so7645254wmc.3
        for <clang-built-linux@googlegroups.com>; Thu, 19 Dec 2019 21:38:14 -0800 (PST)
X-Received: by 2002:a7b:c5cd:: with SMTP id n13mr13790002wmk.172.1576820294260;
        Thu, 19 Dec 2019 21:38:14 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id k19sm8352250wmi.42.2019.12.19.21.38.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Dec 2019 21:38:13 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 20 Dec 2019 05:38:12 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1039530165.6040.1576820293557.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allyesconfig - Build # 28 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6039_1028004989.1576820292474"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=izrqYnT2;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32f
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

------=_Part_6039_1028004989.1576820292474
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>
Date:   Tue Dec 17 12:00:43 2019 -0800

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
    
    Recognize -mrecord-mcount from the command line and add a function attribute
    "mrecord-mcount" when passed.
    
    Only valid on SystemZ (when used with -mfentry).
    
    Review: Ulrich Weigand
    https://reviews.llvm.org/D71627
</cut>

First few errors in logs of first_bad:
00:01:00 error: option '-mrecord-mcount' cannot be specified on this target
00:01:00 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:00 make[2]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:01 error: option '-mrecord-mcount' cannot be specified on this target
00:01:01 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:01 make[1]: *** [kernel/bounds.s] Error 1
00:01:01 make: *** [prepare0] Error 2
00:01:02 make[1]: *** [scripts/mod] Error 2
00:01:02 make: *** [scripts] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="406b6019cd2bd50924be11c634b058c01053fbd3"

Results regressed to (for first_bad == 2520bef865329d4c04e2de30c222ad0d5ad13ccc)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19

from (for last_good == a116f28a0d71c221c1dc023908b180beaf22799d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
16048

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 2520bef865329d4c04e2de30c222ad0d5ad13ccc
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach a116f28a0d71c221c1dc023908b180beaf22799d
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/28/consoleText

Full commit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>
Date:   Tue Dec 17 12:00:43 2019 -0800

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
    
    Recognize -mrecord-mcount from the command line and add a function attribute
    "mrecord-mcount" when passed.
    
    Only valid on SystemZ (when used with -mfentry).
    
    Review: Ulrich Weigand
    https://reviews.llvm.org/D71627
---
 clang/include/clang/Basic/CodeGenOptions.def |  1 +
 clang/include/clang/Driver/Options.td        |  2 ++
 clang/lib/CodeGen/CodeGenFunction.cpp        | 11 +++++++++++
 clang/lib/Driver/ToolChains/Clang.cpp        |  3 +++
 clang/lib/Frontend/CompilerInvocation.cpp    |  1 +
 clang/test/CodeGen/mrecord-mcount.c          | 26 ++++++++++++++++++++++++++
 6 files changed, 44 insertions(+)

diff --git a/clang/include/clang/Basic/CodeGenOptions.def b/clang/include/clang/Basic/CodeGenOptions.def
index c6700333c13..7f26ca8b4d6 100644
--- a/clang/include/clang/Basic/CodeGenOptions.def
+++ b/clang/include/clang/Basic/CodeGenOptions.def
@@ -113,6 +113,7 @@ VALUE_CODEGENOPT(XRayInstructionThreshold , 32, 200)
 CODEGENOPT(InstrumentForProfiling , 1, 0) ///< Set when -pg is enabled.
 CODEGENOPT(CallFEntry , 1, 0) ///< Set when -mfentry is enabled.
 CODEGENOPT(MNopMCount , 1, 0) ///< Set when -mnop-mcount is enabled.
+CODEGENOPT(RecordMCount , 1, 0) ///< Set when -mrecord-mcount is enabled.
 CODEGENOPT(PackedStack , 1, 0) ///< Set when -mpacked-stack is enabled.
 CODEGENOPT(LessPreciseFPMAD  , 1, 0) ///< Enable less precise MAD instructions to
                                      ///< be generated.
diff --git a/clang/include/clang/Driver/Options.td b/clang/include/clang/Driver/Options.td
index 2a72b87355d..86aee334436 100644
--- a/clang/include/clang/Driver/Options.td
+++ b/clang/include/clang/Driver/Options.td
@@ -2477,6 +2477,8 @@ def mfentry : Flag<["-"], "mfentry">, HelpText<"Insert calls to fentry at functi
   Flags<[CC1Option]>, Group<m_Group>;
 def mnop_mcount : Flag<["-"], "mnop-mcount">, HelpText<"Generate mcount/__fentry__ calls as nops. To activate they need to be patched in.">,
   Flags<[CC1Option]>, Group<m_Group>;
+def mrecord_mcount : Flag<["-"], "mrecord-mcount">, HelpText<"Generate a __mcount_loc section entry for each __fentry__ call.">,
+  Flags<[CC1Option]>, Group<m_Group>;
 def mpacked_stack : Flag<["-"], "mpacked-stack">, HelpText<"Use packed stack layout (SystemZ only).">,
   Flags<[CC1Option]>, Group<m_Group>;
 def mips16 : Flag<["-"], "mips16">, Group<m_mips_Features_Group>;
diff --git a/clang/lib/CodeGen/CodeGenFunction.cpp b/clang/lib/CodeGen/CodeGenFunction.cpp
index 89ce31e9b45..6f7e06b773d 100644
--- a/clang/lib/CodeGen/CodeGenFunction.cpp
+++ b/clang/lib/CodeGen/CodeGenFunction.cpp
@@ -968,6 +968,17 @@ void CodeGenFunction::StartFunction(GlobalDecl GD, QualType RetTy,
             << "-mnop-mcount" << "-mfentry";
         Fn->addFnAttr("mnop-mcount");
       }
+
+      if (CGM.getCodeGenOpts().RecordMCount) {
+        if (getContext().getTargetInfo().getTriple().getArch() !=
+            llvm::Triple::systemz)
+          CGM.getDiags().Report(diag::err_opt_not_valid_on_target)
+            << "-mrecord-mcount";
+        if (!CGM.getCodeGenOpts().CallFEntry)
+          CGM.getDiags().Report(diag::err_opt_not_valid_without_opt)
+            << "-mrecord-mcount" << "-mfentry";
+        Fn->addFnAttr("mrecord-mcount");
+      }
     }
   }
 
diff --git a/clang/lib/Driver/ToolChains/Clang.cpp b/clang/lib/Driver/ToolChains/Clang.cpp
index a79c96d25d9..6b93dc2939e 100644
--- a/clang/lib/Driver/ToolChains/Clang.cpp
+++ b/clang/lib/Driver/ToolChains/Clang.cpp
@@ -4990,6 +4990,9 @@ void Clang::ConstructJob(Compilation &C, const JobAction &JA,
   if (TC.SupportsProfiling())
     Args.AddLastArg(CmdArgs, options::OPT_mnop_mcount);
 
+  if (TC.SupportsProfiling())
+    Args.AddLastArg(CmdArgs, options::OPT_mrecord_mcount);
+
   Args.AddLastArg(CmdArgs, options::OPT_mpacked_stack);
 
   if (Args.getLastArg(options::OPT_fapple_kext) ||
diff --git a/clang/lib/Frontend/CompilerInvocation.cpp b/clang/lib/Frontend/CompilerInvocation.cpp
index d68244dce5c..93193edff9c 100644
--- a/clang/lib/Frontend/CompilerInvocation.cpp
+++ b/clang/lib/Frontend/CompilerInvocation.cpp
@@ -1104,6 +1104,7 @@ static bool ParseCodeGenArgs(CodeGenOptions &Opts, ArgList &Args, InputKind IK,
   Opts.InstrumentForProfiling = Args.hasArg(OPT_pg);
   Opts.CallFEntry = Args.hasArg(OPT_mfentry);
   Opts.MNopMCount = Args.hasArg(OPT_mnop_mcount);
+  Opts.RecordMCount = Args.hasArg(OPT_mrecord_mcount);
   Opts.PackedStack = Args.hasArg(OPT_mpacked_stack);
   Opts.EmitOpenCLArgMetadata = Args.hasArg(OPT_cl_kernel_arg_info);
 
diff --git a/clang/test/CodeGen/mrecord-mcount.c b/clang/test/CodeGen/mrecord-mcount.c
new file mode 100644
index 00000000000..eecee0e24cd
--- /dev/null
+++ b/clang/test/CodeGen/mrecord-mcount.c
@@ -0,0 +1,26 @@
+// RUN: %clang_cc1 -pg -mfentry -mrecord-mcount -triple s390x-ibm-linux -emit-llvm \
+// RUN:   -o - %s 2>&1 | FileCheck  %s
+// RUN: not %clang_cc1 -pg -mrecord-mcount -triple s390x-ibm-linux -emit-llvm -o - \
+// RUN:   %s 2>&1 | FileCheck -check-prefix=NOMFENTRY %s
+// RUN: %clang_cc1 -mfentry -mrecord-mcount -triple s390x-ibm-linux -emit-llvm -o - \
+// RUN:   %s 2>&1 | FileCheck -check-prefix=NOPG %s
+// RUN: %clang_cc1 -mrecord-mcount -triple s390x-ibm-linux -emit-llvm -o - %s \
+// RUN:   2>&1 | FileCheck -check-prefix=NOPG %s
+// RUN: not %clang_cc1 -pg -mfentry -mrecord-mcount -triple x86_64-linux-gnu \
+// RUN:   -emit-llvm -o - %s 2>&1 | FileCheck -check-prefix=X86 %s
+
+int foo(void) {
+  return 0;
+}
+
+int __attribute__((no_instrument_function)) no_instrument(void) {
+  return foo();
+}
+
+//CHECK: attributes #0 = { {{.*}}"mrecord-mcount"{{.*}} }
+//CHECK: attributes #1 = { {{.*}} }
+//CHECK-NOT: attributes #1 = { {{.*}}"mrecord-mcount"{{.*}} }
+//NOMFENTRY: error: option '-mrecord-mcount' cannot be specified without '-mfentry'
+//NOPG-NOT: attributes #0 = { {{.*}}"mrecord-mcount"{{.*}} }
+//NOPG-NOT: attributes #1 = { {{.*}}"mrecord-mcount"{{.*}} }
+//X86: error: option '-mrecord-mcount' cannot be specified on this target
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1039530165.6040.1576820293557.JavaMail.javamailuser%40localhost.

------=_Part_6039_1028004989.1576820292474--
