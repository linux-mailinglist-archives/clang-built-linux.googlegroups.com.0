Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBAF47LXQKGQEV42JXQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0C8128BCF
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 23:34:40 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id c17sf3060972wrp.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 14:34:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576967680; cv=pass;
        d=google.com; s=arc-20160816;
        b=xzXqC/OPCBBcBMqXQrW3uE93fqxbKdY3SRNXYMVZGkKwDhFJBsLVqjqlYOhc7CjzeF
         uG4l8AOErCFzyHG7LVxwsRWUnwy3kZODrsTHf5AfoUkZ5yH2UjFfMHeeSq7ZbAWs8Vme
         ckzQko/04og16STHEhpzj4kpwV3AE2pNvvTDCZO0l9EmO4YiDJt/WHlpboir+jgV3kAN
         y1jQg5BZJmuIxSAA1YkW9iYGOtM/yXMZaa43U2zJsG76NVQB8/TowkX52DX7od/Nf0ZN
         Pm+uHqx7lhB3lM3voBIroRz1X9HRnmBtqi2amTb/p+4DRCBlZnCPSRVrHNbKNbEqhDVr
         BW2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=SMHMcHxvBE/29SkZyWLDzDtdMyFaUJtgo+TqHZv2Hms=;
        b=W3e6K6cj1G1v8jdSyHQQsTFasPx+j/JTNSHFWQhNzcjlLdw6q3mlofboMprxk6aQIY
         viZnRnFTikg7x8XKUoi0XElwWUXc317LLAqrVCFXsPDf6jnUXPkCBfvRtULwTcGFS3pC
         wKAOg7lt85CuSLNJiLLnc4guE+Ba2LsdAVFKf3RGzGWTE38vHSZX6QzMkBoMZaxX8/jz
         ZdzqLM5XJltlRFCB/UWSIiXYjpr9nH2DTrZqL0bKu+ek5zyX38We2j0X7A2i3G85TnfN
         x4LcDYlyCNsHX7PyjsxUTYsv6Fa5k1ooE8c0/0UWA+0/vYkqPWdFCAvs1ajP7SoaRj5v
         5zRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Jq8GmFer;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMHMcHxvBE/29SkZyWLDzDtdMyFaUJtgo+TqHZv2Hms=;
        b=nFQrx5pm1Z6h1HAM2+ibvuxs7+tIx/WqSP9nMFiTifqilGADkG5S5PTDkI5keAmDiO
         4fFqwcKrOuYqqpYYNibIdBrtBhkTXXSHVphgkW3yRBB/F1oi37MCBe/k8zRnE4xU9lSq
         YCRcsvTDoV4rU2xks1Q2HpzMO3tdmB+WW//5ENTBqLciaiebZzzOMyj/iP8f23lJC2xO
         H5h8xAbTmM7Y3lS05GQQ/AP8LjHEoPPd7ShByBUemAWR/GCZw3Lac/ISvSj6611H/CqS
         tAgCACcaX6Ki+NmDKHOAfKkZknL7zaZtZk+pQSlsuoSuSkiNFmiGKwxf4j044BUovWj4
         HSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SMHMcHxvBE/29SkZyWLDzDtdMyFaUJtgo+TqHZv2Hms=;
        b=TS9SxmZGzC/3Ix+dm2+Vaq59o34KTcOpPRYhKn/CV/uAvNoUILhs9+h+yUQsX8wG/a
         UjNmpuvtbcOzMHHDWMvnI2vDwP/XfglmTO6R6po7qZSWT0LR4zE7X3VKL3zBVBbHtGfY
         XMWsIDFtmv6FYCjnn6a1MfAQNn81aanb8+5Jq1a2bDiIjeML2uJF0E0aOsJm12zlX/98
         FpDK5MGXYEGCyvrFz+ePVqx15BafgKzs/++YLF02FyKrpBR+qmhz5AtpMe1YMgenImMh
         ZeezZE2f38vulH3hRfFPVilw5WMz+0+Ajz3sdmLOSdwFX8Zrgq8Q5PTkQmQnUCT5BM7o
         9GTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUb9S9//nBeb8w0V4J32hbmqTAjwOpMVXIH2lsisefH4eaeemb
	F+G2lVrbntaQcg5fCTGmEYk=
X-Google-Smtp-Source: APXvYqz59ZKVY0qJCKQ2LFrWNnrDvgAzQlNw+nvcnnVCH0FRJ+dk80pN4l4xcPj5WAlnuI2lO9aQ9g==
X-Received: by 2002:a1c:b7c4:: with SMTP id h187mr23762253wmf.105.1576967680329;
        Sat, 21 Dec 2019 14:34:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dd4:: with SMTP id g203ls4169635wme.1.gmail; Sat, 21
 Dec 2019 14:34:39 -0800 (PST)
X-Received: by 2002:a05:600c:305:: with SMTP id q5mr24202160wmd.167.1576967679784;
        Sat, 21 Dec 2019 14:34:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576967679; cv=none;
        d=google.com; s=arc-20160816;
        b=xarKHdRrTEAEsxSymF/Z4yanjmG5fcbSC4iD/Bok46lnxdr90DzBnYtVsOmLdSD6wP
         VnlI6szbbDFev5MV7oNtBDUPc7wmMNvsxjQacRFy3U39KjXu3kjYESLIg2I9D2MPwsY8
         TcM7DkPMIgtHKckEQk18uLdmZnJN3MeqjDTve2QJ4rcTDpAaL/tCyWY4lAruy++J7Wbz
         gyv3ccMKufx4+k4G138sjhtO/z1krTWBFnnsJ9B/tOuYDtVdjHpYtuCYgaZpKiBQisoZ
         qJqitNwj1WN8219mz64lV8a7bxh54783DwbEMsj8JIpKXA5bdLV990TkntQSxvw9PIYa
         svgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=jgQGXtuVK0ZtWX2tXh9qxfY+tlgqrS91MyyRMQE7fZA=;
        b=AN0eddMcDlJFexNNHXizW+EQ7Fd1SONH340AlKSVRcWfnFNZuMOZtHPr7FsO2XoikA
         WSKBJvrA+U47/jIYRFNwA2ZXtNXHgV29TxVBt+Ljvzy/n7j8aL8CKEvLxtZ3hSjn9Yq8
         U62lJ4bN1aLJYGl1SAwK10Ie+zgxRNU/V6kPgKDDkyKNI9IzjVl/6XO6mryZ2yiT7NWJ
         mIlvL/N0Zdrng75wV2XK5cq0q3r2X6LWVu/q6sDOWho5uShBk/M1lTrPO0Ja6920bAnc
         nIHDcikAE9n3na2j/17SxGq/mVOUQo0k1pLj70fd2BmiCQY8VfxTmBgZUpVpxobO4AG9
         DSnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Jq8GmFer;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w11si654402wmk.0.2019.12.21.14.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 14:34:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id t2so12858504wrr.1
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 14:34:39 -0800 (PST)
X-Received: by 2002:a5d:6901:: with SMTP id t1mr20820910wru.94.1576967679264;
        Sat, 21 Dec 2019 14:34:39 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q19sm13978609wmc.12.2019.12.21.14.34.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Dec 2019 14:34:38 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 21 Dec 2019 22:34:38 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <475620529.6534.1576967678796.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 56 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6533_551397628.1576967678130"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Jq8GmFer;       spf=pass
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

------=_Part_6533_551397628.1576967678130
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:00:47 error: option '-mrecord-mcount' cannot be specified on this target
00:00:47 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:00:47 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:00:49 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="23c28c40436143006be740533375c036d11c92cd"

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
18306

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/56/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/475620529.6534.1576967678796.JavaMail.javamailuser%40localhost.

------=_Part_6533_551397628.1576967678130--
