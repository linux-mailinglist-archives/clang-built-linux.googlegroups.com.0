Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYWZQLYAKGQE66E6GMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A071295CA
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 13:02:42 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id z14sf7951091wrs.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 04:02:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577102562; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLyBtQYAti0Q7P9Y3zN3kI1MJoGaI5s8+GPX732sP/h4+cdIYdsgguQBhjQRHnFazp
         M+xInigzNavFD2U9gVjt5A9Usntw1Uz5UkmEtqHrEsPiK2TQ6SEe4JWuh317Yn2kXbB4
         8R5Ur7mI6rD2DdETeqWk6C+xMJCazsl0ccau5sEAkmRpBpRkiqjsdh6iJeqPfuZmOYhd
         q8cJSEEGnjA/yU3TRokP1D9s8lBfjhgRB//O6cb1rbkmFF2gUj30ULzS4VQ3lYy8zBKe
         PgmwmDpD8rXlkllykbI1BN3dGWpxaITeydRLOGG47L5B2dgDH/u9D1iSqDHcvMQAXoGV
         8+SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=2yadt9W/q9d+ccGC/wvNHiwriEvwJmpoyLIibPgf0Bc=;
        b=DHc3Hvt1oXri7Oap4sIZlSi0M0w/REd24CMzWS9nEDV9pw4zhBcdeIxlNYSqhl4Xil
         GY6t7bWi8VoTf0gFj9x74MfwzqsecLVTPJ5YwWEcDRd9gbwYtw/nj0AwF48j3zqI3nDz
         7vV/vixYzTdqikxdDrrewZOqyC7B63ScAwq+6ka85M1Ku2yfDDbrQx7fTVHztPyTPtWg
         +aqnIkgjoJJB1tlZZ5B92/Pghqp0ZA4T/dMvLEB8ithYUCpv27QYe6bHq8KG9fpbkqbd
         jlydJBBvThJSfEz1/pwCvHgqANhLbX5KzSF1QT8FoRYQfE4I35tteBNU/5CxF8JyqDJA
         XaNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="BwC6yq9/";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yadt9W/q9d+ccGC/wvNHiwriEvwJmpoyLIibPgf0Bc=;
        b=UBDQIUIFIW0DFGVAxCNgvUUceFkmadHJ11Lpdg8Vv4ZcfsnWdxmgkHEBxROVpRjHHU
         VFnJQbBAqh9jqjtZ/3rwkZnwD2v0evr8/i9X40zuyf0m333ClO654RPdy3ZPXmZyiXoK
         4TmQh/mhGBodhykogmxXQL0gPInvCsyL3BiOw6HO7qbtUYZYCP2sTFcjAfabQklHb7bO
         3956Htn9sErgypQ/LuzW1JDVAAObTkB8ZYWkRbzz/i+IvYPvpScQJpkw1AIRP8XH0Bgt
         pOuSymBgAdkC7pHX3yysjSlWTF9mbgxmXyg+2WUSIXrcU4PM5PRfce+942Dx7RlhIoe+
         zklQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2yadt9W/q9d+ccGC/wvNHiwriEvwJmpoyLIibPgf0Bc=;
        b=nzpKJoJEMaNfTO+QjZ01GIVqfL7aZuk9UUhXsjp/ec8rczHTAhEicfBnKV97QVEIn1
         IFu6v0oZXmwxBTzpBoXzrBW7tlpt54Z7A1rLWRJqCIoNmj8wRgFosrngImGtGrehCHsZ
         mzpAP+h2pEu5s+tFCk+5Fb3V/6H2p0u2uoRzm/xU34KozX0W43daH9JzHxaTAxh7JJ0e
         8UGmACqfFMWWeZQIIUBf04a9q9c5qjh7vxYZe4n//28mDYU5edHGBO93M29PyD9jLemB
         oCzoMDhlFnZpUB+hpRzZRmAsNyQ3LVkns3ojPKtS8qxp1Xuplfy+qObatmp6oZK9/roN
         pCOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbvBJj5+jEUX+o9FMoK76TsCDckwbFy6GtuqRonapuGU1c4+cf
	WdutZvF+1ZGMTKETge8SUN4=
X-Google-Smtp-Source: APXvYqz+nCeMzXhS76oNNCIKSK5QfFJ1bhy9ldEpRT4ndxrlH0S3oT8M9dk8smKS7ycOgTqYCRVxQA==
X-Received: by 2002:a5d:65c5:: with SMTP id e5mr29568458wrw.311.1577102562278;
        Mon, 23 Dec 2019 04:02:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ecc5:: with SMTP id s5ls4291787wro.12.gmail; Mon, 23 Dec
 2019 04:02:41 -0800 (PST)
X-Received: by 2002:a5d:4b88:: with SMTP id b8mr29538507wrt.343.1577102561482;
        Mon, 23 Dec 2019 04:02:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577102561; cv=none;
        d=google.com; s=arc-20160816;
        b=boD0+DKQs4tHReD0xoI7Y5c9pskpdz2LmPjP+XcQzAnjq6YPc8nm71+kaUCZtuzVde
         ESboQmUL3Pa87iAXDJhdDG+TbH5G2VXWiQjpGrWFfUOw1G8t3cxAR4lNAYyw9rMszmYW
         n+2XAimfeCye/oZonXRnp8zafhfIE8hnVxwrhw+CealfUG3UhWeHufr494PqxAL1m8JR
         dPZGMG47Uji6VWp26/0cjAqTq0PBOxfwgjHdm8knvH/0c6Pwx8+NB7SnTcIdsUCRWd4f
         7FjxJ8J0AQtPA3iF0Jtb/eIWqcIfsulcAwC3IM9ZtogSdWaRRm/CWZO+Y2j7g/fGQQLs
         IIOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=mBs0lJ1oSYJ57Tel2HAiaL3Jad5gxkafgXaGJeBpViE=;
        b=pCC6ayxgOpgxPZnPAYygkoQSqWL7HwC/iKPLvORZ85XksajXMxJdyWcMkEEN2AW32c
         kM/r4wM9bRNa9OPZe55LjM8NMOxT22E12FQ2FO9GqIwUYe6HwMVZVW5TypkC/OprVzdw
         4shDWQVbOI9n5dH6uYbRS6FlXz7ePEDAY8xFXlhwS6dbMXzL2vYOA651k2U4qWg9q2wY
         tiO8WqS26xvt95vENsfoB+BMrZKxUHQb+lLtTqUVhMl4j+8SNNKnN+aAzQvZz0R/65e4
         A2i4WUkC7ywXl5MrGtW6Cml0Nw4xb/JUjO3SnoiIxy7wJgFAUDRCeaE+l0tHz7cOahZz
         RYCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="BwC6yq9/";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id g3si686427wrw.5.2019.12.23.04.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 04:02:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id y11so16348730wrt.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 04:02:41 -0800 (PST)
X-Received: by 2002:adf:c147:: with SMTP id w7mr30648989wre.389.1577102560956;
        Mon, 23 Dec 2019 04:02:40 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n3sm19991957wmc.27.2019.12.23.04.02.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Dec 2019 04:02:40 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 23 Dec 2019 12:02:39 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1675856796.7072.1577102560450.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allmodconfig - Build # 68 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7071_1040057392.1577102559724"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="BwC6yq9/";       spf=pass
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

------=_Part_7071_1040057392.1577102559724
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
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
00:01:12 error: option '-mrecord-mcount' cannot be specified on this target
00:01:12 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:12 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:13 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="86acaa9457d3957cbe303e1e801f1e727f66ca89"

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
26874
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/68/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1675856796.7072.1577102560450.JavaMail.javamailuser%40localhost.

------=_Part_7071_1040057392.1577102559724--
