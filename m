Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYFNQLYAKGQETKIQBNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E28F129435
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 11:28:49 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id i5sf1394995lfo.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 02:28:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577096929; cv=pass;
        d=google.com; s=arc-20160816;
        b=aBEvclhwjBhXPpcXAOJlUVPTK8u9RMkQVpmjT0P9cLs4QEecI+PY1T4ac/05e+y8S3
         I3q2j5fEGxR5oHjrkZxJvwpNUFsISIfUgP7JGMC2zkF9iy5y9QXiSkSrwRMozA3F/jZt
         ikWPh4XRDn/CmO96YvqZufWyrc2DLp5rW2KcQd55eRZHVe0E9q4rdMrFbDFkpbkEVTxG
         ZBl/FRvoG3HHZzISSp4MHKU1NJIrD1qpVk2WumKLOCF24aPuDIyp1mnZy9q7vtPpLMuK
         4WCjJwC0uZ/eXq37Use8T3fck2yK6yYHbmR4a4n1M0gUN5VR3v+JwLspVRFaaeqt9ZL9
         uWvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=UNEmou1XmjDHwmT2TZUihCBOwQiLU0BEgjFwCL/l6Xg=;
        b=xcXVlqMHa6Us5sMOEe4XrAuV5rTDK7SeVDgj7jY6JOY84EHYifbE4UzCxEbguJvwyI
         gXHMtJ/1vJl8SgqrhhIQ7pF+KbvdHVT5KXRUDYD03JNb97L+VpKhZGteYss2DwtmBfNR
         bmEohuZSOW4UAV3iNyyw5iLNwPzhs3iE/3XwfQUMFUvSZZRqUbHEGtfJ3RBFfq32WVSJ
         g/SjFhOVQZ/V7X/zX2jmoByviQwHdT6fsgVfim6hqZOiaH0ngvSNaCfse+t8RldpGeNn
         yYhUv0ghMorKISVkaa35pDb0Cbd256e/KAtV0vXoVzQabDj2Vrqx8WkhQpgVm1a0x/V8
         pNUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kb7osjeJ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNEmou1XmjDHwmT2TZUihCBOwQiLU0BEgjFwCL/l6Xg=;
        b=kpj9ADS039SVdb2oIZdNJ7bJ/7QqMeRKxTNpA9aRsuxkl58vXTrgitr31kfxlnydss
         1cDLL/CbqRtOuLfEAWKtqVNyt9lHyW+e8n9dPv+o+vkoPd8/q3i+TrjTDoAsWUMRYVU9
         +TKdUBJs/YfYwAeFlrJ5bTeK83AWiURPiSinn5u070MZcxGMfPyoa3nEORvZSBECr+F9
         JtG9j/t5Jy+Yu67YtDed0rg+4+1lv2eaDZklGIeMiYgXRQHYO1vTO9OxhjLCsMZ5gLVL
         p134uBczfAwuBcO2sHfA2IOrE6MVLfjdrmMDU4cGhJwkZkrTxTahIc4SD0M4SGig3ho0
         9E6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UNEmou1XmjDHwmT2TZUihCBOwQiLU0BEgjFwCL/l6Xg=;
        b=XN1V4LyLXkDqtu1Et1ii1Q6lbRJWG1lLwyPJeXWGp4guR8l5Yj7m70fb7GGy8cbOAg
         Ag0ZGmOSQIiAzl3I8mjU5sytFxEyIWvdy9fC3aj5gskrqfVnFLCyRSFUEWLCM/Ng3un8
         RmzqIPQI3wyosix872sOuWcsRYcQudo5MiGK63luMt35MQYK9W/94QZscT1VdzbsBJ+I
         EdFsq3El5+MUWuWgYaNn2G3Rs00e/agn5aQy6KntdYi2oML44wgnrn4szLq2wRfU+Gao
         +5QDtcJz3ePpvBwQNJ5XmpgBJxnp/AUrpLOOK8B9LNWxuypMS8EFKRvIcWgkoI2pGGXZ
         hU1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnWBpxUj5A8dssa01kQPofzi4X5JiPUzk7J/AwQX2sZuKLV+6V
	sB5Q5nDNTBQ8gxVLHp1Nb4Q=
X-Google-Smtp-Source: APXvYqz+4dwk5q6T+0JpsCCfJNK1/txsTxi1ZfSHg1eoYX18M2XAgmncGxA7ajhhoLbX4pfRIWQd+A==
X-Received: by 2002:ac2:5287:: with SMTP id q7mr16957204lfm.66.1577096928859;
        Mon, 23 Dec 2019 02:28:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5056:: with SMTP id z22ls1453795lfj.2.gmail; Mon, 23 Dec
 2019 02:28:48 -0800 (PST)
X-Received: by 2002:a19:c3cc:: with SMTP id t195mr16866114lff.144.1577096928280;
        Mon, 23 Dec 2019 02:28:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577096928; cv=none;
        d=google.com; s=arc-20160816;
        b=OuIKjT15rh2xQIzuKjtAOAra7AkFNxXWERdA6UspBJmseZvtPa/7xCbqA9DL7HRkVo
         fMx80TUZ2uTw63uCKRZ1k3pPVXwQGCfMjUxHm81u+PgLpkIRCEPfVG2EQ+etokXShILT
         PK/izoRxKjiNOBop3oUO+Ameyn9Kx3im8Da47zL6uvIwg+00WIWJP0mO0U+usDWrvT0n
         34S1Llxbm/mG9k3P/8hPBP0MFTc6z7gXSU/zcMv8gz1vTxSKtCDvsirPdVZxfF4UeQSp
         3Lt8dDnutJX2Fl4OHYlAiFhDRtEH7cAQHW0Imv1Y4obIAPZ8Hx6lAmRmGa7pcJSmn7Gq
         jCaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=mWqiiCSqU+HlGHuwtPBx8COvXtUJZrMSMzEdyHm2uEg=;
        b=PGPGTqLlIjZFFrhsVqdZzOZ9MUNfAgYmSftSF409at/MC9wBtNtxIJk332DpVVt6jU
         VAIrW9qrttvF+rXFGYFbBz3fSYFlH+pc/mX53XNCHWV1yd4DBK51J4Y9ixPUswtPe/6H
         a76Tkf3v7OUljAfbtjOYZRjhD1/x1WSPwZIjO5FKXCpoERQoKO27mvGWplpLfYBVgOMp
         VpuGlhdublWj+TJLBvFwbKUOxL3dlYVuv4FCgdde5FW7HdRUD0mkeqoW6BXtiJcsXdo5
         gyUBfG82BwslKgQE3yZhIRsh7LenXCJMyHVbCOOtj4W2jBdJn1o8MXSELu1euVdXpOAS
         KTAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kb7osjeJ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j30si928652lfp.5.2019.12.23.02.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 02:28:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id c14so16063786wrn.7
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 02:28:48 -0800 (PST)
X-Received: by 2002:adf:fa0b:: with SMTP id m11mr28882347wrr.98.1577096927492;
        Mon, 23 Dec 2019 02:28:47 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id p18sm11361967wmg.4.2019.12.23.02.28.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Dec 2019 02:28:47 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 23 Dec 2019 10:28:46 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1149138159.7058.1577096927026.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allmodconfig - Build # 10 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7057_345737823.1577096926402"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kb7osjeJ;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444
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

------=_Part_7057_345737823.1577096926402
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-stable-allmodconfig.  So far, this commit has regressed CI configurations:
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
 - tcwg_kernel/llvm-master-arm-stable-allmodconfig
 - tcwg_kernel/llvm-master-arm-stable-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:15 error: option '-mrecord-mcount' cannot be specified on this target
00:01:15 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:15 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:16 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce"

Results regressed to (for first_bad == 2520bef865329d4c04e2de30c222ad0d5ad13ccc)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
24

from (for last_good == a116f28a0d71c221c1dc023908b180beaf22799d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19655

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-stable-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/10/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1149138159.7058.1577096927026.JavaMail.javamailuser%40localhost.

------=_Part_7057_345737823.1577096926402--
