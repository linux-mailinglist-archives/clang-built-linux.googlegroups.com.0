Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBCXJ7LXQKGQEL4EJ42I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A984128C12
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 01:10:51 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id v24sf6907293edb.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 16:10:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576973451; cv=pass;
        d=google.com; s=arc-20160816;
        b=lS+5TitjFGnUx7RoJuzF4OJu3zU8JQ9lzWA6OBCRPQVUM97U7THyd1hgTrSnw/Ukaw
         WzPeySlcXHA6UlhI+ydlclNbWAKH83/0XG/wf6OnUbBpK3PBRzA/HlyshWP1/XOJk0rT
         jzi3KY6MdQZK5FcnrtHlXCgtYmvM9QAx+ct2aMsV16Ogk8hkIzYyEwzXXnJh1luwBEEs
         FMW0htwhqlbzSI+m6jWgA4YNvXBNlX7XRD6jEbR7OLcvJw77PtsgeKm+AEkYfywulT4x
         PLIwsmDSPfPeZvRhIorFabOn/hVPiTiZ7UEUjJRQ7Gwyu4vijWSelnkFIUbu/4lKS4YX
         UJ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=K8oiChZN6WI71MNwv+av+E1ZYXJVR5NEwBc6GcBSC9I=;
        b=Z1UNjYI+Pp/G5ipL40cCSo0yooN/rbavcti1Wrdwd+1onyedy3H7gKFqvIR7h1bT5o
         ROwMdMFFyOynrSQVo/X5Rl9X0cugTgBlQzdFjATaLi567LHfxtsC0W7Emy+paDbfS1ck
         QCXwomiMfcZis21eIEyv9sbe84myn5Pn+y5ujnJ9eS8FOpVE08NJQLVGK3Zhdk8NGwWy
         TyW5rL2AKply84hiMl/0lv7SQEMCYzBpZB6cIjm35YjY2Ef0GfVWrW6mDRpjOSoMyeWk
         nyqNlV/kYNpTlJ8PQeUwYRCjmKNYQatQWsyvzarG/2JrkVHQ4oqtXI/uP1htbNSuGxAe
         jLgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GGGMbt5T;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8oiChZN6WI71MNwv+av+E1ZYXJVR5NEwBc6GcBSC9I=;
        b=Qaq/J/odBeM69Z9GBmtyInfUl2pLB+0lxfZJ8qZEKt5++XB2eoJaWkYecHJFAdBM3j
         ys2Y4NKS5tBwx3HgAmhMuqwO4cGtgz3AzkMNhGgpj2BvQl0XpdMIqUzA2NqhAWajzEPc
         XwI673PHgUsD9zCuOXzo/AfOUye6Ul534tKAOr0S+XLdD6TxpTYS+n044dwLDRQM8tEN
         l4o6vGVRlJB39ezRTfOrCyTuW4YUYRhl7HXsyLZ7wT0mQWOv2922qbHykOK3gaA7/EJD
         USXV3HotNPb+yKrw9bLzQn76ISCMuHXcWffllWcE13gWQ/lBoi5qnN8PUSR8oISo7O6w
         U3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K8oiChZN6WI71MNwv+av+E1ZYXJVR5NEwBc6GcBSC9I=;
        b=gHM+krAZIKMx8OGjvCS5J3tJZsr+SGAW+jdte3wxaAg6mUGqYVvqqAKAmJ+ZOliYeo
         NS8fokLG7Sffo0lk6/iNg9nhEti13SJehU4jDWh7mxgcKZ31sQWBP545RW85ORhTnX8D
         zdTp9NOajCu65+v97N76IrL4R61cGqVo3XCLe/7Kkk4uzGkoLSQOCD0G9A6RdKnGCug9
         PMubOeI1TAKw3fCNY1Pgzf0y06Cncv8dkPIsMj/QexsOJoM9lvyOMssvwGN/Gdj2UFHB
         DhSyYpBnTaJ49jydan7yhdmCXNDIN9TaIYM6arRaQkwqAv6uZ1xHUW+qFpSv5g/JnvA/
         MyUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsgsp0qPLVP4okLVepNSJQeJ1heF5GhXD5RaER3Jp2HYzZY6jD
	X/wyZ2oOGDPgegypCD+4vhk=
X-Google-Smtp-Source: APXvYqwnBXYqPea0TQU3YnRlu/0bU8lkujlYwpObOzVt3vrNlpVG5U+T+8j3ZNtq5Cu5xCQJP4clSQ==
X-Received: by 2002:a05:6402:3047:: with SMTP id bu7mr24734699edb.44.1576973450767;
        Sat, 21 Dec 2019 16:10:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls3916381ejb.1.gmail; Sat, 21
 Dec 2019 16:10:50 -0800 (PST)
X-Received: by 2002:a17:906:c40d:: with SMTP id u13mr24820944ejz.178.1576973450261;
        Sat, 21 Dec 2019 16:10:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576973450; cv=none;
        d=google.com; s=arc-20160816;
        b=YlJA0ZzVh3phsJIs/OHpvz1C3E4SixlrIX/LiAm21HIq69sWcqeMtcFBuXH1OhJXJh
         dg378l7+8IAjiAkUMmFb4vb29KCYY9Ow2ibiAa7H8PSeCUjXPnw7dCYvUFKjfm5I2ZMs
         xxRGeHgWecUbKExY41ELDe+gLYpqKZuix6wgzamebms3d80kli1cFRsMN9WuCDCObSIC
         TFqIxdudSSbTRCwXaF4AQgbKAn7NPT8wkzYpT3qR5jSEhnntMkBBfGftfv0H/9PdL+KT
         x11L2sT9Wx6bUduqiiKhZrf8shHPuJh92Y0FkBQ1BFxwCXvZJ2oyOohy22EI0b7ikg1B
         QHZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=IVcCrUaLAtHrR6PQHGn3E7dIN5ounnmTpM1SizyAXbY=;
        b=Qo7yNf+LWMgZQS+doFrubzqIx1bY6P1z5ua9KuXfBIkYsbCm0+Af0q/dYbDG18Qr/a
         p/I/Ej8AS2LZrJo2QFUIeR0IJmMdso4TCMyYMA3BcY7Mboe+L8yVEvJ2p3WEsW3MtDHN
         M72yHceWgQSpU4+fX3pzc+i5eN9CrG5OgNY1b1lKnLb7b+ffkAHs9aNc2pICPBsAyOZp
         LlrniDGyjAsgsSUGjkizzzzR3V0CYeOOtdAzW0C7sWeFNXLvkaU7xLNsonY4I5CRI+m3
         b7WEW6njdBUcmn8i+WCzAqUQPr6LmGq7g6XoeYYfzHfgWrpA/7CqAmMzVquTUrezmyYr
         S+Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GGGMbt5T;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id n21si630628eja.0.2019.12.21.16.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 16:10:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t14so12734786wmi.5
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 16:10:50 -0800 (PST)
X-Received: by 2002:a05:600c:28d:: with SMTP id 13mr22795045wmk.52.1576973449800;
        Sat, 21 Dec 2019 16:10:49 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id s128sm14969929wme.39.2019.12.21.16.10.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Dec 2019 16:10:49 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 22 Dec 2019 00:10:48 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <721741517.6560.1576973449252.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 22 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6559_1040269871.1576973448597"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GGGMbt5T;       spf=pass
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

------=_Part_6559_1040269871.1576973448597
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
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
00:01:03 error: option '-mrecord-mcount' cannot be specified on this target
00:01:03 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:03 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:04 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
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
18249

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/22/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/721741517.6560.1576973449252.JavaMail.javamailuser%40localhost.

------=_Part_6559_1040269871.1576973448597--
