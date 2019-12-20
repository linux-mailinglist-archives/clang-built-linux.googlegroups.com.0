Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBFU46PXQKGQEEDPRC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E1B127BC6
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 14:35:19 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id g11sf3187489edu.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 05:35:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576848918; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASUtVfqksG56T+Yuz4B/9mJUvGxoRxAFezqKS6PJuvJW9WiiSkAGUA7cnimRsTYMCY
         glFRLfy3j4yjZnuzTDanKRbUhJ3kFvkY7VdvaSXGhxyj3R2hADj4JvH72Pop2Tfsx5UH
         iRiquri18v2KBYCkegMDLXAHwwi3aBEOqt6lxdVpJHWQcD+eR3vgFrFUm91wxI2jeEFa
         X1ZQOOzOIZb59VHCcBsGskVXmQV6nYUVcfWKgOYItTHoJi93A7Ztw340rWCLcKEPVu+I
         x3PJcxmHeNVTGX4Y6BSbRnNPgtA+mys+SuZkfn7l6B+8aTZSBGVDyLvxI+n2eRP2vexN
         pSSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ol+CTzx04bXpTRmC7UJkZIzSNw0X+GU7b9zLLk5hJ7s=;
        b=FKrAnxAzvVGgnzWclPhxkqgaFq3I2S+Sl9GRFBAvwCRBNul+K7P8xL7tBEgQnbp1tH
         9E07i2uk2RtquiT9iWRvyPLvZh+e8t26ifu3JEP0RVcMCQeyh/wsS8vY4hy0rGnNvctu
         Y1jEHnQMA2aS3Coi6JocFS5CsF9ZSrygqGbPC735KQBc++QxNI3gDakaBcI8gZjh919V
         rZEGGTVWLm/1M5A/C6mVBmeMcX1nIGqBbN1d2EWDmmO7AB7gDXdawwm7sDi+tnK/fePD
         Xbm2JIY+uBHrJjyLOLI7SDpvvu0CHuufBef+ozV3Y0Tu8OfxLfS8cOLdy7bbziF0mRRU
         RnEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HdQFQEkC;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ol+CTzx04bXpTRmC7UJkZIzSNw0X+GU7b9zLLk5hJ7s=;
        b=CAzylVhczZ+3PVF014Y2EeNACfPtZ17qEEijye3KzYh2SEH1uf+LjGtPegfHkyclK8
         stgHJ2Q1MrNsZyUN3RY5HtPsDyWcjI5VKetCOMmffBnmx7rJ5I97XxcZ6fFdskiZfRBj
         9l2bzEdAtvKI8JRgsi+xWBFtr/mhNbCd2vGQVovG6b5fk1HehjeZK3iYHnJj4CxxEdii
         vnxyGL0W3BZCao7PWIJIGeMoO5d6dYe9+44ondSo9dlowRmeIoET+HU5TUlB9t3ZuwS4
         6swTZOC7C6HdF68srDQVICsBNs4TjMGPtsXH2eWj4LBGk171z7JrdBiAyZ6I4dqrug0X
         /fzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ol+CTzx04bXpTRmC7UJkZIzSNw0X+GU7b9zLLk5hJ7s=;
        b=ibPQX5aJp2VG6cT8aBtUlUSnbuVIyoati/EtNnXcMpCOnzvo92C0pZijQN/FayhBTq
         r+6loooab30MeYmpe6ogbqlXBKiYiM2eSRuB9NJ/xY6PhRQeQ58ECBBMnSNzxsvppECO
         oOh+4Y2enTRAcDClL+7yJtai386zBgBsDjrtQxFMl3YhGa3LaEKZTUbCxnu5TY5CQ/m7
         jgxWWEj4GO53lT0YUl68YWZA4eCdhfYeaMGCFRbLQTt0oOhhvfpNYLatLAHIFjj0C8Ye
         1IOrVWtZCSiUjgm9We+Hbni8DdR6eGfrNDrHH2rcvwSURFihqsBQyc3FCDhgcd6nc3y8
         LuPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwPgrHBM1GaPTILGcwyTg58EpaZZdxK+0sbkMsVPvoWYOSI7hT
	/mpdE2TSVVyw7S5KuzhsKaY=
X-Google-Smtp-Source: APXvYqwdUY1qURDoR3bNBBnVCD05VIgdd/UX2YelA4k9qI76XA+1iVyiY39K7o+bU6NHk3H5npoAqg==
X-Received: by 2002:a17:906:1c5b:: with SMTP id l27mr15680717ejg.143.1576848918773;
        Fri, 20 Dec 2019 05:35:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd15:: with SMTP id i21ls2473381eds.9.gmail; Fri, 20 Dec
 2019 05:35:18 -0800 (PST)
X-Received: by 2002:aa7:df92:: with SMTP id b18mr15664553edy.13.1576848918161;
        Fri, 20 Dec 2019 05:35:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576848918; cv=none;
        d=google.com; s=arc-20160816;
        b=0S0ExMH4c/FYBEH7FzvJo/AYR1l61ifGKhuNDcT2qCxLZMdWAgmhXmshzi6/o1iF/Z
         UdFCBZSo6UvHeDFbXku+EBLO2U50f/Xe7B+bP9ar9L0htrPohINDCJzzOLXXeTKe9Dgy
         QmQKIae+2iAUNDhsNqL+Vm4Ljy0Mdp2rVu6B12USXWH0w9ityEZv1Lv2qwrCsQujkamb
         sdMWOB71Rq/vr6+mZyLPP8asYgI/TBG5DP1V8We1neVcAfK+NKfArFkRzDCXzSOM3cgr
         POKj0Y+GY8oMmsNriY53tmazLmtttBUAsvC07G4zebUu0NPYW0n908boIGRlpg/QUY0m
         XTfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=EYyRQiMA/sje8CnhVJJtKvziMVXMgso3hSICA1rT/lg=;
        b=0L4vL4LuzIwnoWcThzPdCkSf2mgF5Tg4HmDlAq0OVv/phRwbmdglMeKGXuQZgp+637
         Rkr0s8DIpoegcEcdPqTCeC6Wu5i0EGbZfnH9pShlem2oOLqAOmf4lRL+puryrCvv8It/
         nsGVMuXafrKZoC6KJfquFH4vJCkTnt2rV3YMddbgPWd7WeV/FwKJ/zGeIDmPDrLpUwj6
         kCptddKE+2MZc20zT9FZB4BHMS24QQpY3WX1SHOlgVpN5SBFaLTwkDVHdJRYU6hd7JUA
         5ZyLKTsar9fYy8TWaX5Cq8sIR+GRMx9ncE6NHfHHcF8TFAxmWjmMCf/M65SkBX0o3B1z
         DCpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HdQFQEkC;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id ba12si371020edb.3.2019.12.20.05.35.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 05:35:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id y11so9439372wrt.6
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 05:35:18 -0800 (PST)
X-Received: by 2002:adf:f288:: with SMTP id k8mr16286955wro.301.1576848917547;
        Fri, 20 Dec 2019 05:35:17 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n189sm10538169wme.33.2019.12.20.05.35.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Dec 2019 05:35:16 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 20 Dec 2019 13:35:16 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <87562456.6134.1576848916974.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allmodconfig - Build # 27 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6133_1569443678.1576848916119"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=HdQFQEkC;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d
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

------=_Part_6133_1569443678.1576848916119
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:06 error: option '-mrecord-mcount' cannot be specified on this target
00:01:06 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:06 make[2]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:07 error: option '-mrecord-mcount' cannot be specified on this target
00:01:07 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:07 make[1]: *** [kernel/bounds.s] Error 1
00:01:07 make: *** [prepare0] Error 2
00:01:07 make[1]: *** [scripts/mod] Error 2
00:01:07 make: *** [scripts] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="bce1cce6bf1286541c57690ab1129fbc02c60f93"

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
17560

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87562456.6134.1576848916974.JavaMail.javamailuser%40localhost.

------=_Part_6133_1569443678.1576848916119--
