Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBNUL7TXQKGQEHOGZDVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6AB128D15
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 06:57:11 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id t3sf5417258wrm.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 21:57:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576994230; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+ixVjUt4/TWWTdx+3j/vxNoaM+vewQTYMIeExFnRRNNOmtZ2C7r2TXUK7xuhPAQ/2
         yhmQl1U1YSS0fM5PB0INRlT801GMJ8q846twnPhWaJFnHBGUkcfBZHWBw2V8LMmvIHW3
         bNQPeJUtdrmkPHzPSYNHHTGrOnnaTOqqdBRq2Rgok3L+oYBgJdg2hG/GHIszyZ7NE5kU
         0p6g6ZTR84bBzMbLQAtjYow97YMjB+cof/3Ge9QSGpkG2DbsPEUUttsVS4H6CiH1oOV1
         GKNzMauywnagyA1wCQ7/c/IHTTPXWVMCFhs66kdJPr6MYRTwuMU8KlM4EMPqAUKoj9HD
         J96g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=n3avkwUAVf4yry0p/7NuIjb6h2HEzlrf1IoBVWcVPmE=;
        b=RuMIeS9KvWJ6JTNlJmC8Cl8a6wdLHk6oOjqqPV6DRI4/0qurfEaOTs7ymmPhWZApI6
         5ishN3y8PgOXWvSA1C6ZI5xkCDpQI3z0VK2xoRvfYLyNcgzrDWY9FPrLp2e8dBvKEEbi
         +eioUPjb7P1MsvC4qzs/tebvZ2DfaPSGIr+av0KvLyx3/5lpNFHSgIlaVvUtae+eicbs
         /1mneGbaULe/nfgDQ+Ha2vClFirNLBJ+9sVUHsQnlpJx2l8cuozr/zaZSnrcCn+mHCV2
         1/zirfW71TTnTp3NRc954qbKHm+xeuKnDEg/01ay3TWBWlk4KYUHQErXWv0dhqSKLx4L
         l3zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zr3JhlSU;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n3avkwUAVf4yry0p/7NuIjb6h2HEzlrf1IoBVWcVPmE=;
        b=NhMLHvOchYp8+uR7Y8vNpQux+NzNY4d5PlYAO13YYiCwH3yI4d+g9A5Ww7HQ+MSWKK
         H8u14B+MZu1i5VEZyFKrtfGI6G+ZqGE3CdISQx1CjhJ1jRP+DxrK3yCdnuwJuc+TWopS
         6+habLkcTrbvmOQdm1eoPscsYCYOIIPfAZUpjthFEWMjPdgeKFtK+/cEj1Sz5KSVljKK
         lilYc0ifk05zjxE7F2EXQdljNP/XDE50vLi61JXy6kjBIE1hbiJIbFi+NzknVTTbwJly
         fdYu9bqLpSQ+L9jx53R2xHk6tw7f5e7XADKstqFb8Fj/qXb7vTodOt+ADSYpwuy8qsmh
         Qf5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n3avkwUAVf4yry0p/7NuIjb6h2HEzlrf1IoBVWcVPmE=;
        b=F4so7O0BjysVZaRTBkD+nrkyuLoLn0yzXwmlJi+aPihO6/J65yhyKN2VQzZqeLvdJe
         9NsI+jgmDHSxwEaomdUpTEqBi/MS0zNTZJHLuRnZHQkhIzcxvL0GxmU71ewipS+VysZ4
         LTu1W8D++rbcA2kOa3xl9pUUUe4vwYkfsQSxMU5daSkz5mFPYPgyIgTLAdwapA8/XaP8
         8Kjh6fFuIyhyWaDXUlyWGo+o1MdDHu9jXBaJCAf0bug9VhLLkTpwwQiQ4I90MuEjELqm
         B0nb38whYEJk772eQFsp0JYjELKVTInfra41gReIOFi9X+txX4H7A1sUl59MsZI/TOpn
         ltVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWxZLQZDWDBW0bzgGTwiIHLEtlBQV4pg/s2RhaOak25didJsJl
	sxrBJrdhkaN1+2XfsQQZ7qE=
X-Google-Smtp-Source: APXvYqz7KiXk3+ayRtTQ5ItfkIWCC+oH8RkJCItSOaoyyObDKl74R7LxtAgvgAd9erzdgkKq+WmXgQ==
X-Received: by 2002:a05:6000:1052:: with SMTP id c18mr23566284wrx.268.1576994230647;
        Sat, 21 Dec 2019 21:57:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cb55:: with SMTP id v21ls4390301wmj.4.canary-gmail; Sat,
 21 Dec 2019 21:57:10 -0800 (PST)
X-Received: by 2002:a05:600c:248:: with SMTP id 8mr25842928wmj.175.1576994230166;
        Sat, 21 Dec 2019 21:57:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576994230; cv=none;
        d=google.com; s=arc-20160816;
        b=bOQlsEwnu2lQcXl2JoEiF4vpJ+3qbbTSmBFeiEcIO1GO8LY0CFB3nYnjkKbfltsGxK
         xCW2cT4yz1mJRHZ/PY+EkiqEp4xm05o9PU+RYCgcPIXtkLPpEa21lRVLD/8PykdIcwML
         7WdR00HqRY42kIaxHSCTPIZiW6AOrDdsugPINxDqwFpukdLhO6YLD9iyLLQov1EzzizD
         16YHeolYFAVkN+7RIdJ6/E819ZEt0IMC+G18ppSGKS9eti5rGYo6Rlv3xxSghxXUhffv
         ZxaXF32KGjg/NIS1MJVQGImemKvPUcH0SYMf4B9zE9CRWJNZKzkQEpaHMVH/d47qKVSa
         tIRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Gzw6JdC38Pj2hOFIht4yFpqkdEfoX0c1g8l9ccvTrGI=;
        b=yhB6YixeXxDzSMWBJ5arK88tKjBCUu1XjZNMTGb0kwkTU8PAXJqZR0EoYdqZ2Expt/
         olydK3pnW0Ol4Bm6s4ISYJaq//gbMzvm1D4IEJJn8l4elpBEE90qsAAeyXMPDijjip80
         EiVVIg7zwnkZowufH7qpfCP/mMgD8qRqVQi87Bf9DLs0hrMk/SeQsc3AavtSH737BjFy
         RLlOkoGsmtctQgVHV9DeqTVdu3hUee56ILQJoUb0ZY1sU/ZoI69Bntolh+5iWOkV4eo2
         CGO0Cc3cr7MB8hOI69O30WKBuKObbcdqJOKJSwDSrSZjwCIhm7jh/CuJy/CwxXnYo8pN
         YuZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zr3JhlSU;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y13si583819wrs.0.2019.12.21.21.57.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 21:57:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id a5so12815118wmb.0
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 21:57:10 -0800 (PST)
X-Received: by 2002:a1c:234b:: with SMTP id j72mr25671407wmj.128.1576994229604;
        Sat, 21 Dec 2019 21:57:09 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id z18sm14975766wmf.21.2019.12.21.21.57.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Dec 2019 21:57:09 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 22 Dec 2019 05:57:08 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1905389583.6645.1576994229108.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig - Build # 36 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6644_1483129513.1576994228476"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zr3JhlSU;       spf=pass
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

------=_Part_6644_1483129513.1576994228476
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:48 error: option '-mrecord-mcount' cannot be specified on this target
00:01:48 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:48 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:49 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="18188a7f44506892a2f4be4100d66971f18000ec"

Results regressed to (for first_bad == 2520bef865329d4c04e2de30c222ad0d5ad13ccc)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
25

from (for last_good == a116f28a0d71c221c1dc023908b180beaf22799d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/36/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1905389583.6645.1576994229108.JavaMail.javamailuser%40localhost.

------=_Part_6644_1483129513.1576994228476--
