Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBLUR7LXQKGQE3Z6V4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 47698128B99
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 22:03:43 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id d6sf1893828lfl.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 13:03:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576962222; cv=pass;
        d=google.com; s=arc-20160816;
        b=IPLa/cVVgsl46krzSK+BIk8iV+xhrVpirE7t3F0G0REX0CK/z50HJ7R4Zle3J01bPI
         yjGuaBMrQfMF/Re9ZP6W6xG2HWKyRhmldX0ADhKUrl/sTn8VnArNkP1bg6zcep/Co5dA
         kXazXUwKoshkGCg66a3z2BxC+/XUmI42cAojOxkqU2ouHMjHDVcslj/DmlXUd0bTnLoL
         sspEQrmNM3pSG7BbA1PCvgoX/r37MQ6JvvM5O+FdQ9bU4pyy472tbZDKsom8yuHULAp6
         THv+OgVAeglXQMMjyCWBa2oqKE4Q7p8TWj078kWE9pm/xxHtF6CsNDWbQav7+zcPvL8v
         im3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=i1ndEsWPEhQd8Dy5j98J1gZHVXTgbBei1knJGA8PPwE=;
        b=ClL7fc0tK7MuEJjGC2FQAWxR/l/Wfbd6jvFfMOSPD8kWAWaGOMKHHQzTZKs1CANjHc
         PA3E/mO28ycPvgx2arUTAxgkEZZiDIqbp13iLjASwbA6Ggp2GVsSVyr6/oQEaYQhKlvL
         EO6iasGAQ5wB8+cMxEKN4fD3wkA/ZeASROPN79a0HiUNzIYNHGAOoBhUFlSJxkxpmmmz
         xFijMjjVx4ZDlhKw2rWk/Lv6dbdVejFQ1QSMey1CCW7G/uU2yxi8ZM8DSvyEyUnVOAvp
         GDRayq9nJxYiBZShaz4qIf4toZOIk0pM33yybqBoMjor2C3MyL2tZjrpT8BNq2GDrq1R
         faPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LLfgBemI;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i1ndEsWPEhQd8Dy5j98J1gZHVXTgbBei1knJGA8PPwE=;
        b=UDKJYhNlN5hpYXLq1lacYBcZXE1ZoO5FgibTgA2GUT1RbeA+YFbHZQMee/2lIsCKH7
         Pg1+wUAVIwBrc0xsrNLeAjl+aJJvKQBrDHz9/G+3zDwuRJXxDYNLsTfE3EdAVnkrdpWY
         ERcEZSwmTUmzmxu20prtu56FOfPvopNwGbu7aecciPLufKiNAf+IYWp4AQBSsRXW/jiL
         4cif/r5HTRPzHMIIk7fnLPNoDbaRTTLR9Z5+ePWf/CmFZlyQhMfVMqy6XFcyhpUbO5hQ
         nPMI3tQxjShjiAk7QGFxtNsNN4Fg9Q6jQ5kNT40Fz316+E/psd2tZZOWhZdQlZlfKtQd
         yDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i1ndEsWPEhQd8Dy5j98J1gZHVXTgbBei1knJGA8PPwE=;
        b=Fk+Mwhf2F57CyO135n8nWmytLexjLqSS/QjFOtaigELfjxtB57UatKJHvB1tMoMHAN
         QKzn4Dy1DZBGQATAXSMY5YBya78jDIkmQSmMRj3jKikgyAWT1168j3/KA34gZoxUYyWd
         PHi6KTjLtWiiSy2n3xrzsRQfTYfxAM8dzpX2GUzRRNr6GH8fROjJx4GQp4hbEfK9hNyQ
         I6QDuIeU5vioxpLvnVK+YfOgesBKLasFv2BfaAHCAExEfbtQ1hAooWxGv/6TIsiZM3av
         57H4xfQz1rF5YcYTl+M6nPz4ozsAY/nJv8aUDYae7Zle2KFg0CVvvr0veuNR3DAOlNZg
         qKRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVyiwAtp+BmPED1PprkbMoA2Z8FnFMHni1Bd77zfCtKMUtaTiVN
	W5dF7LIFlLIgjI9170B3TsQ=
X-Google-Smtp-Source: APXvYqzOs831M6fL0t6N7mORxeVnXoqWRGdDRbfbKZJohAhjh5ELH2sKxX1P7f/sgdeI0vAcT4IQTA==
X-Received: by 2002:a2e:9999:: with SMTP id w25mr4053031lji.142.1576962222730;
        Sat, 21 Dec 2019 13:03:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:730c:: with SMTP id o12ls837000ljc.12.gmail; Sat, 21 Dec
 2019 13:03:42 -0800 (PST)
X-Received: by 2002:a2e:8544:: with SMTP id u4mr12161685ljj.70.1576962222166;
        Sat, 21 Dec 2019 13:03:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576962222; cv=none;
        d=google.com; s=arc-20160816;
        b=NgZLbacC8+z8H/Ex3kSIuoe8T676SA5KHuL9I8q76fk12d+1jeX8D7n3wvbO6HNc1y
         Y3q8ITuueY58MiP2txV7EPRz4MAtrHVXYLmhlQNg+0uc7uisiPwWn9NSE1cC7Ssymi3c
         1m2DAituHdwIWvIx3Y46OT2RtTeEj3jg8m3CXxEPL6o21ELWdyR9kzejO2SjDmQOpfqk
         BKWTdvmaOw0JzyoTjikQaBNum3ob6agWrt6qOQENWAQNRYekyNn3sHdQxhWnqaAX6JtP
         UeeUrvi5lh/9NuMUo49ng9zh5epz4Q+LKP8RkaDdXEnqYg0i/y96JUuf1FPXRtpOfZl7
         oiqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=UmWWGSHL6ZajKolHltag8YUWukB9FLu1h+MGBgosqcg=;
        b=0siot6SV610T2cOKr3RPev1kiK+GnpBe8aU1uuH6YvriOc8QngK3PByNiGFuoQP4Gd
         EMKrMOkCdhuPe+nsxU7hh0JzgI9WQ3HPS5vEW/DPlker07RSkUsCKgYWdjhhGnbY87zP
         l/ZmJIOgdAU4YbnuU9kONyMRQP0NTJHV8vJSVGjeOQ4m34XYhKdT5SB7e//T33X9yIEL
         xfU6KMfZtsmIRoUB0braJMTozmkH9YTX9vmDJDoL877gHYr8spoUF5F7SjGH0wyFWPrX
         EQbhFgmAxTuiddxaTsnSnBqAyNRo0pU7qX5i9SYRWz7DXdvkE1V9adgCJ0wDSmAsAWiE
         elPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LLfgBemI;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id h8si495660ljj.3.2019.12.21.13.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 13:03:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Received: by mail-wm1-x32b.google.com with SMTP id p17so12578712wmb.0
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 13:03:42 -0800 (PST)
X-Received: by 2002:a05:600c:298:: with SMTP id 24mr22518259wmk.141.1576962221361;
        Sat, 21 Dec 2019 13:03:41 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x11sm15412071wre.68.2019.12.21.13.03.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Dec 2019 13:03:40 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 21 Dec 2019 21:03:39 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <12408726.6510.1576962220853.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-stable-allmodconfig - Build # 5 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6509_1017126028.1576962220083"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LLfgBemI;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32b
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

------=_Part_6509_1017126028.1576962220083
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-stable-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:07 error: option '-mrecord-mcount' cannot be specified on this target
00:01:07 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:07 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:08 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="d588a00206ac12ea87fe52ffe1f5e972f0a06cce"

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
25592
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-stable-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allmodconfig/5/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/12408726.6510.1576962220853.JavaMail.javamailuser%40localhost.

------=_Part_6509_1017126028.1576962220083--
