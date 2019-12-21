Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB4677DXQKGQEVF2A5XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8972212899B
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 15:45:07 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id v17sf3699873wrm.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 06:45:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576939507; cv=pass;
        d=google.com; s=arc-20160816;
        b=rbxT6mwe3bqG9xfLKP2j3HP1IiGw0SYg4qkLwrYzEHImzLhfhlNQzVaq3FUzC9dMAK
         Pmpt8Xj/U9mchMxrhW3M5KYqkvUngEQ/uY6kxqxZl2TfYPSp53dN6JZd7lx1/ZGA5Sxn
         4WvwsipzbTePdyRavfcOkv1pmWa0qnQSTYbweFCUzjdIKyf/ZmxHaKNEXAspsgPqj5jR
         YBShHuYoF4kvPRscvVdf2vHeX86bse9c2VKdP3lABjUjO8/1eHcicA4c6bKGq2Evt/2M
         Jis3Ny86PFVwQmtEcAjASfbuGSNxZJd0rdW7LBTp0IJkXvLpHXG777uPjFOR6I1EROX8
         P8WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=96HiP9rX0lrodzLNFRKGl+Ey1Ek5O0LYBl25hrw8M7A=;
        b=eZPbzUEPjivGIC9ZtaaiKWXmbVH5g9C4XXrCltd8OrP2V5QRnX2REbCNDbn3iuADTJ
         DUMhSpK/86U5fDzCSdF2anOQFlwVANJLzllxF/EPejgnhmITCGYsXtRnHfaO82f1B7dF
         JDypp22xc1T9fRxM2tzCyy6+6QhICk2iaCXvOwywEUV7YOZw8mjskzT6RtS1A7N/eEwp
         FGYS5P2nZ1a7fjBqDoFdvQszmU8gIAsgAb8fjC1y9BW02B5XqzWWveOfyzpFdtFEp8kb
         11Ze1mHsSY0uR7xm4VLAUiXcZaI30HoVyW0DLeZMaIesJ77sv7UIOM+IVQ4oG9Tdnekm
         BaTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Eu0RePy8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96HiP9rX0lrodzLNFRKGl+Ey1Ek5O0LYBl25hrw8M7A=;
        b=sxPPz7SCM2lx7LZF7xoyw0i8mOXnjdrlHWMLYfRh1xbk++kRT9nQMMjbZQCVn1wNR6
         DKADi6xKtpBt5yyZbmKtMkyXovHRo8ojv/i1tUhZChNT9taoYO0nweJ3h0rwz3WnCnHG
         U0b/QZm0ajpcK34ossSTiPV1EBL/fOYD+a/iHXEENRaIFb4aOQ1KwW2YbgUBvXFV9ogi
         v/OCT8Utfs4Cq0fkpsFrkN8ILH05ytzVEVqrN81eJxGsMJisfP4r9KSRDxSvQP052N++
         WS2hNKVTIcsCuzTClBHoUoUhpyiSN6YTdHYV1Tqb3UtW/f4W7IDxwW5fcCtkyruwgsl5
         quxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=96HiP9rX0lrodzLNFRKGl+Ey1Ek5O0LYBl25hrw8M7A=;
        b=n6rE+UZoxRQxZoRTw6yX8L6+SN5UyenaOZC0+Cb20v4qyT46RD6K6f2GuWt5S6390T
         bE28y5nBkq1MGm6C6J5rqAp94rX7yajeUuvFhPaA6LgM3wsDYIa+sjVgkOZOn4Mxmw/e
         bQpKiKNEL0OSzk7R7ZkrSSRsnvenev+r0NHdfGsSswcgBOj+bSZk3wpT7UgmqYbBnnRg
         sIPxo9CF0ML0w7/w4vxlgQnNTI8NaYV4PNOp+3iDMaPE3H4Gurfz8Bv9eL2qndkWvoex
         WHMvPfmLMrGJgbtiIelJIOs8Qn0LJhx071eSM7efLmqhuNIxzgPCiqnhH1pMuIkRrjox
         6/1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUXVxvLKTTq/DeNY3bqRrsW9bh06PxOxQaFYECLrSUKqsw4YfEj
	uuWScHi7NkE1K+3eZ9uak9g=
X-Google-Smtp-Source: APXvYqxERBCk2no90ZbogWek5BMamn5y1+4+VKcyCt67KRgb+09548dVoe7yhJL0G9zR1mlGKkR+AA==
X-Received: by 2002:a05:600c:2059:: with SMTP id p25mr4461108wmg.161.1576939507083;
        Sat, 21 Dec 2019 06:45:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9808:: with SMTP id a8ls3973054wme.0.gmail; Sat, 21 Dec
 2019 06:45:06 -0800 (PST)
X-Received: by 2002:a7b:c114:: with SMTP id w20mr22749573wmi.151.1576939506496;
        Sat, 21 Dec 2019 06:45:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576939506; cv=none;
        d=google.com; s=arc-20160816;
        b=iQgr/7GQeRNucbJMQNqq4fdz2DsyVU+7thBHvEsKdQnzt3qTJ62jeyH9TkQ/T+2mcw
         1+CWMopHoeDgVWytUnsUVZndxIlHh1jcvScpM6s6qY1cuVcx4Sadxpe+XyIhm1PMcXzS
         sFblCJ0GVmljHUDwDfYX8CxJX15dmvj6ZS1ZzCpxnVxKrgoEcZLJbtCSyZwL5liJfxLs
         lMtNslHOfwhjh7kijwJlxiVm91tZHg+c1+zyH/r0vDSTiX3y8HyyH3DUV/EkT/h3P8OH
         g6N795Xj4/zApeJaOWJHmEbszH2+dWThKpGYAVTVYkDLYCHWOTYoeQKww2MEnaThhYVo
         rUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=UmkoKsGgoYWRQNzBJva9xnkvM9aUuQwiBSOGY5V824c=;
        b=rtyuLZZ2Llbl4s0i5ffvOMcni01QLtvTkK8x/v/Ocli0C5fLqvwVhPtZV/jM2+R/Hs
         tcPZZmdc6PL6OVJpL1YiF3m2vjueigxJodvvu2eXG3JR+I4KKrWdT81ZLygs+n4IE6Ps
         m+vi7JsMiKkSftcBBfGTKxaDRIvjLqPQ+NYu/MZyfUFidBAq26CKDPjg1rtzWUnEQbS5
         2W1+1kgdHw6uaBg9NNcyb0wLFWpjHeo94n/ttsgMfUICCO5H8ODWZVdIxB3WC1H3ejgw
         UidDO5j8RBphT5oPfKGKFK3/+XsSp6IuO6ym/h0qKo5cxSyZ6gJ9Nqz+UwhDWDkHB4ar
         EMlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Eu0RePy8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j188si370062wma.2.2019.12.21.06.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 06:45:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id b19so11683999wmj.4
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 06:45:06 -0800 (PST)
X-Received: by 2002:a05:600c:228f:: with SMTP id 15mr23146076wmf.56.1576939505948;
        Sat, 21 Dec 2019 06:45:05 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x14sm13045415wmj.42.2019.12.21.06.45.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Dec 2019 06:45:05 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 21 Dec 2019 14:45:04 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1497048203.6429.1576939505447.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig - Build # 23 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6428_744973872.1576939504892"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Eu0RePy8;       spf=pass
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

------=_Part_6428_744973872.1576939504892
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:30 error: option '-mrecord-mcount' cannot be specified on this target
00:01:30 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:30 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:31 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="2f932b57296a573454d29893eedbeaa6901c2a68"

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
18088
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/23/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1497048203.6429.1576939505447.JavaMail.javamailuser%40localhost.

------=_Part_6428_744973872.1576939504892--
