Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB7X7QPYAKGQE66SICWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 708261299A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 18:57:19 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id u12sf8320742wrt.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 09:57:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577123839; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMqRilSGuOTeNR+Dp3hAX6n7Gv+cUTpUWUTamCa/W7oetydnlCFFNsWW7u2hWarEuZ
         YnGh9dUMvJyT0KRwgzMbLOMUj+5EVdtBjU8OvVMZX9FDUD5u8K6knM3r2KE9u/BmawNh
         g1RwVs6rciuY+8iaoXRA2Vb+eh+gVbgS+MpeyxT+CzfuuXkrGfDyasEWnUWAIS2zaX4E
         drX3Y9aIsolBqpP+XP7Gq+gJ4hisDNao2U+ng/YG9tvrT4BOQJ8IPap+JJ6/Dka91GRr
         uXMlOwK8G0HLBlFbqWamtW4FBg2V6zaTcqjlC8Iz+xDtlOk6pm/SDVMbuvfSlt426fY7
         d51g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=+HfGizvV/rfq04Zap4Avg7XWbhamLE65umZwETmJCEU=;
        b=pVw0TdVqQ31IXR0Co6Cw6lzStqxwZHqDYj5wvapJI4YwUKdVBk4njQQU+oyBk5iAHy
         AbScEAuTtQUTojLaoJsX2qnexp3ahQVKRV079iXecgda61gEU+B8twLXlD4sgXSkmbjR
         kWbGSy3GnIvflNpOeYZKOok7+y4DCD+4Wio8i8XgKAE6701BrwcUj6catBpU2NNi/tiS
         8RhhXZ5QzcbzHK/7QDzSWAzDoi7ENkih0JmHD9YYYxh9eLHNL5wIFx3oQwlmVYaPQw7V
         C58qJMwOHOBxzZ/O8m3hydcccYROj9/NF4bUh/8dw0+C2oiFoEyxnNAaOnWSAsb+6pbC
         siwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DxBhuUwT;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HfGizvV/rfq04Zap4Avg7XWbhamLE65umZwETmJCEU=;
        b=crsPUfSuv4aGx2D6Kv448SmkEKBnzVG4iX62WUBGD71VeB5Qc4HvzLDRfjMFZljXNW
         IC5UsY6PsE1t8bIqAi04iPHP0RJl5WmPuvx94xPOyfAcxVJZmXXcN+8x8mXd45lrVi5T
         dVN4BnJb0eSLm/HvpH2ibivcb4El2WfJbfqB4r3C8caALtSPzb2KKXZYsU1uRPHs8rvL
         k4DTpUSG5bHW0WSpltDubPqh5lg3USbmYu/hjvtNq9vIQrm+UmAlGUgc9UXbOSvjxk9a
         CS9UULx/lc93fYmeGOO6RWydjWhpeyYEKHF++kQzhccd3hGvsR+fSjMVv1LSlZrjkWOQ
         Fy+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+HfGizvV/rfq04Zap4Avg7XWbhamLE65umZwETmJCEU=;
        b=J3AU8HhJjFP72ZehygwZ8HUqf8IUZQyWRC7qalyBjJEZh7PctB/KW/5hRQj+4ZLVym
         gbXkmAhVyODmfHQmvqTxqyoNdySNTlnzL0mdD1NIv3ApWKttSOd8wwMyx7Kxx/TvNzx+
         wWuFvzOhkUVrDFDVv0hy6BpO4Hn2qVqGGZMPjG2GfxshFf3ZKXIX1qeWpxR6kN85GzhE
         wluf2poc1E6VEv/URZujapUzFrljl2hgQFZuk61bY21ZZaE3iVPI9Gzm5NcCWdLNaYis
         /qHF5/qNACOKu0OwcJB6OiyNKGlhnCKiPJsBq8oTLEWhGXRk9iVB2ckhUVXYaPOpQqfu
         AW9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUer1HVb9WjiOofE4AF8F+C8WQ9F5KBWaO0PgGcuPQrJSuZlhhK
	ntSrCpKokeKCsbC70H3jSQc=
X-Google-Smtp-Source: APXvYqwnco4mzjPc0626EbiDRy5wYWfMxdFKiTlAi8AhhGV4/JufgITRX2RNG5X+YFEsfQPP3ghemQ==
X-Received: by 2002:adf:f5cf:: with SMTP id k15mr32111399wrp.182.1577123839017;
        Mon, 23 Dec 2019 09:57:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6385:: with SMTP id x127ls33648wmb.2.gmail; Mon, 23 Dec
 2019 09:57:18 -0800 (PST)
X-Received: by 2002:a1c:1d16:: with SMTP id d22mr190940wmd.158.1577123838476;
        Mon, 23 Dec 2019 09:57:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577123838; cv=none;
        d=google.com; s=arc-20160816;
        b=YVILu2pa+mEJ87K1P1RN+Lt9psx+Zuw/5r1X/UwRsdvRPIoSRFK77i4qqEVonO6s74
         Qs+mtShDDfpDxoyy6+5iwR7i1pu6/1gn08fdFvc3ge14YogecbH/fTIY8/RIvusoyyPI
         r2z0gZEbZyES39eR7HsyTvD4hszLXYoThdLhdL47ncHwu/9g69TD8yQ0YBEsI0HZQZOI
         OACP2wpLF8zAim+lnOHKKZkG9sKCwcmEwVbClZg/uxXkgmcf/Lki05dx6F0b/xTb2p0N
         +K6RPo0Q3+Jn/o0Prm2W/FJ32k1XCzPr9BYckFTDcVqlM2iJ2+s73eL+UtVb6DO1rtsW
         +0+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=3Dm0RPLq4I6ohH7wxPPaPJ2AJORQJZsDXxm/a+nchqU=;
        b=pHVAztqA52pPDTqLGxx9MO82fzJpm1UaPJBtuRvwVwnM1kXZ5QFiNWQZwfl6qiDqnl
         7ookxH4m6Vt35vB3AfyfM+9sqCd4o27ySRWIaAOjc58m1BdHC540BSgTKfp/GdsNm8cA
         QHO3HQI/s4PJO9bQOTwHhGnhHhOf33IqHN7LRS3R+Fc28YF4ZL7kiaDhSp26wRBw++7P
         swmA/5kQ/Xj/Xp7VaW8sO1wyC6d0p7O8q+U/ovH0U3JrtSme4vPfoadorajCn/zmuIxv
         NybjzyzJIVUSuELJ319X9JbIQ+HsOPjAl7sVfYc6/uAXgk7zvsZvzyCdnkZ9GZbcHX4n
         D00g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DxBhuUwT;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id s139si19573wme.2.2019.12.23.09.57.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 09:57:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id f129so198142wmf.2
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 09:57:18 -0800 (PST)
X-Received: by 2002:a1c:1d16:: with SMTP id d22mr190915wmd.158.1577123837840;
        Mon, 23 Dec 2019 09:57:17 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 4sm138277wmg.22.2019.12.23.09.57.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Dec 2019 09:57:17 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 23 Dec 2019 17:57:16 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1603607077.7152.1577123837286.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allmodconfig - Build # 11 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7151_1298709647.1577123836678"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=DxBhuUwT;       spf=pass
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

------=_Part_7151_1298709647.1577123836678
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-stable-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
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
00:02:10 error: option '-mrecord-mcount' cannot be specified on this target
00:02:10 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:02:10 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:02:11 make: *** [prepare0] Error 2
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/artifact/artifacts/test.sh
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

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allmodconfig/11/consoleText

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
index c6700333c13a..7f26ca8b4d61 100644
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
index 2a72b87355d0..86aee334436a 100644
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
index 89ce31e9b450..6f7e06b773dc 100644
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
index a79c96d25d98..6b93dc2939e1 100644
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
index d68244dce5c4..93193edff9c9 100644
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
index 000000000000..eecee0e24cdc
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1603607077.7152.1577123837286.JavaMail.javamailuser%40localhost.

------=_Part_7151_1298709647.1577123836678--
