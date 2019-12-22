Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBFVL73XQKGQEMFZTBKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D44128ED2
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 17:11:02 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id b13sf6688569wrx.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 08:11:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577031062; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8//3ENUUcll+tl/fRA1W+MFzsWiYH8pqnNDZE6uU1/tEPPm/4O9mzORGOkFfP1nJi
         sJsASoodqrxzYp+OxcJyK6eJ5nbQ3JSrvn6QuO+mjIfAspmKzFGQDiReJFC3VGkEfNS3
         S7uvLErImTZav4WeouUMk6q0CHRpvhJx3eoUbL9ktvLewf2LRMf8/luRrS8ZFFCER63r
         u5l8TklSh68uDq/sdLm7xSXahVG0fpn+2EbfzlXpTGtJEBUJWRztnal0/3AWddiVPizM
         QyHpRaihitglt3blbPZilc5MVm6QWOdBiL1UVjg8w2M7SNoPS2IcFgKL6gBR/kbVwYiX
         XR0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=SGZJ1+l259uSxzeeQuauaz4AGYcMMumzBq2eG6Hmrtg=;
        b=pkVg87ZSndUI4n6r4s5lCSJClpX31JsAHeJE6ZaCZ7tuPOvePdB/xN3q9dsoqti8JP
         3aDNM5ggOVrdDS/O5u7OSIf+t3aAHArLccA7FfFEFOJ/3ngUtRbcKLUDqp4m5R0W2aeU
         Zl/J+VOwYtekyNcICIVZ3E4n3Cr7m4Sfn/MCp+OBzg3OGrPVgO0aIc0aEJE+0hKkkcTw
         nd75TmGpjVHEHHkUrRW7oGPQ4w5LoWYlVjcjNNKuSAXbSKFVAeEK9l6ub2IIOjtm4A8J
         ejZVrn0yV94jRXt2R5xWZ9ZlsUYg1gJbXBKVY6PIOzOGnqOn/hGbqeqGzkBrlQVpcPw7
         /Fuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=eimGbTjX;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SGZJ1+l259uSxzeeQuauaz4AGYcMMumzBq2eG6Hmrtg=;
        b=OOtAsbjfev4NjwhHAQA+SyzcuS3p38xSDA8eQcRc3dQsKf0r2+R1eJ/HlZWDk8R6vW
         612cq6Hv8RujCl+pbn5dTVk72br0rPOR5W+MffB06XQaSNzA8iUE3ffHYAz3p+e3KmQl
         WhaLEVjX8w2Z3oPIdIMP6HGRn/3uLut2qq3g4AI0gvzbLXZ8mjsKkGSZbN588byG0TLs
         9huDFYf4SnD32iPnRbcjb7jc4yNkEEJvgCzgECSc/9pBiPMqlzm12vXWGpxfiKUsgJiT
         n+R1aEh/KxF1hky5hOekp0uTKIvfa/1dlnTyK+9mfnCo8C7kZovVN2NLpsIwwjcI1+fm
         Hxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SGZJ1+l259uSxzeeQuauaz4AGYcMMumzBq2eG6Hmrtg=;
        b=t/ZVPgqK902zKczDf8RjWvaIiPW69B+mbm0ZsB3b466DejgcUDWgk7uyxaAK6NmXmW
         0Akiti35qrAd+I2yHGELBR3zrZIFAjbl2JiBSbrWV2B8z8RSBjwCktm2OJWN+hUHGYfb
         cf3WKKB4N5dB2gi1s6j7iv3SSWIVNKdXZCsMwkNeoSNz5+aiFCkXU+ifCWo9N91FYmIH
         4om+cB1zBNXHPrpfdoXqikno6bnsIm5rPiUKhddZZ0QxRT4MDPvnR4agytsHkipbn0aW
         4LYUCsAf1K2rB4R4DYMbhKvUK9+BH4NJBhQG5PMX2Nd2erVkDSeoleZkyCF8ZxoKJI1+
         ERMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVv/X8QYcEI2e3BLqH1VFED9+KCDvHqnklUG8ibGNaEZEkhL+pz
	deiAMYTixhwD77pwRiECUhA=
X-Google-Smtp-Source: APXvYqyKOexR+g7RNkXIZ6uTTcdf8xLW6TBTopJEW33Rh5zNe6MzbQk6+jzwO8iMz1FPXeZfKtkEWQ==
X-Received: by 2002:adf:ee82:: with SMTP id b2mr27274835wro.194.1577031062295;
        Sun, 22 Dec 2019 08:11:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dd4:: with SMTP id g203ls4671864wme.1.gmail; Sun, 22
 Dec 2019 08:11:01 -0800 (PST)
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr27582145wma.62.1577031061800;
        Sun, 22 Dec 2019 08:11:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577031061; cv=none;
        d=google.com; s=arc-20160816;
        b=MIa5VkkwkjpDRRVgIxMXX92yyMJSqCIU//uj6x01zjJThCCzJ4Fc0DfIDZzAOhvA08
         4Kqw5nsA57FSAtQ3oeBK1GKelvyHCNXrE0dwfaMCgVM4/soOK/Nj3rIAlFytsndpEYg3
         gy/N0YptReYxCnIoyAfjUAjUe2dQrIWj/L+Q1WCl+n3VixLXGdLbR/97BurAU5qAtCFw
         kjxuBE7C0mKuuv6o86cvQGLWT11uDlmY1if/4vrVaPSiXDcVqU2SISkMRTwIyOKF0eCt
         lZIY0Yx6EmM69YQF1UBsYCyVW8jN8g9LGBcoPmrXwCYBmW3Jsc7cr2W11SZYjSEr9Th0
         /ghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=bkgalOkxuBgrgVJLcjOQX2RPufdkna4vyTXq40zPqMw=;
        b=xNDwWxGBdHELvt0HpYtaxi6z5x/o02RVgODOw2dPGD4KoPUKkEvalCaAAKAgLUs0Pr
         GpIK/NzX1tg6dQJhZVzL715Bp8+OTvr7SiR1eeD8D+Hqk/cS4u2GkGFhV+Y6qdb0a+qx
         m81dfYWT42p6ju4TKnZb8cA1c7f4Mel39g5/+d+TqdtammsaOCf/eK45ECzrVx8vvHj4
         rOalRnyksJan4bV0WxB5th7bxGRxfbzPV25236mrTA4M//DWOa38W9NYBSBjqutzkjmN
         CFW7nepY4Cxv4lSu3pFzbUap3Q0i7OK2BYNeENkOFoaPSGly+iErRCQv+WycW2dzxT9T
         6rPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=eimGbTjX;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id b9si558383wrw.2.2019.12.22.08.11.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2019 08:11:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t14so13838494wmi.5
        for <clang-built-linux@googlegroups.com>; Sun, 22 Dec 2019 08:11:01 -0800 (PST)
X-Received: by 2002:a1c:1b44:: with SMTP id b65mr19386800wmb.11.1577031061284;
        Sun, 22 Dec 2019 08:11:01 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id m126sm16846975wmf.7.2019.12.22.08.11.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Dec 2019 08:11:00 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 22 Dec 2019 16:10:59 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <838735936.6788.1577031060615.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allmodconfig - Build # 27 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6787_314967696.1577031059740"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=eimGbTjX;       spf=pass
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

------=_Part_6787_314967696.1577031059740
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
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
00:01:44 error: option '-mrecord-mcount' cannot be specified on this target
00:01:44 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:44 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:45 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce"

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
20058

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/27/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/838735936.6788.1577031060615.JavaMail.javamailuser%40localhost.

------=_Part_6787_314967696.1577031059740--
