Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBP7SQHYAKGQE4EV75WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FCA129323
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 09:22:24 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id o6sf3772657wrp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 00:22:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577089344; cv=pass;
        d=google.com; s=arc-20160816;
        b=wyR6GuCWd4O37kxBhr+cECIY+pDHaQESwThBaVW9uAgtFcXKRWFo/zzC80kFFzZKSK
         j9Xc2wSpG75vNBA5ObRFf3a+Sx1Z6z81n+w+H9FwcW9+jo1mkQS16I+Mm7TJcAqYcwMo
         aXiTthw8JbuaYwHm5XNj8RjdAfntRmASF46fJNcjNX0p7KHVYsShORouhGKYten9rN7W
         RG8Vflha4qStgwkie2l7LugVD7uAfox0A3AIpLN8r7L4CFHdQOWxDhG4x4B+Ae947XnL
         ucxxZC3KeZElank4JwP63YyucgFVWkucbTpc/5D8eA6u1707q90xTKWfpD0/VfqO6L6j
         Tyfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=qTlUjpDaJk8xQH4NQWY9cgp1iwZjJ0dvkWVvMei9HI4=;
        b=QwFKPTxmsoIohxKKhtKl0O5shCjw5saRyG8fzJxPu6wwuQAh+itSm7lbG7jOaLshdA
         h/1uaSzXSFhpPZ6T2dm+cQ4cCTZVt30jdNwdWU9P4r/eNT3MdJZaIwapkoJg6pXmfW1a
         mvTvP22j0YHZwR2UTqwQv0i2yBPvBvECLYu2pHpcPO0D8KIMJqHu2Vb3MetTL0qNaSwt
         swVdwkkxk86buj21N3rv+ODmZnAIGY4UvkKV/Tum/UD4mu5JAqi5yu/BuOKsVRRcJXj4
         ajLiNqHIkp+pfoVHjBgRYf5lR4fcSaYLc4P/dvB0FceUfFfXVa9CZMe0vODULVP7NeYY
         xy5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vQnGCO1z;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTlUjpDaJk8xQH4NQWY9cgp1iwZjJ0dvkWVvMei9HI4=;
        b=jgjRDiPjAufHpPCSutb5kzr15MeXl0WZP3QWmzhK3XVNonPQMjgpcZOu+onLcYkXN+
         y2VoiQP4H5lVawpTjZexel6kNR2jFUKsKZdKpl7mWDTvVr7C2NspIKp8ZBoZmHlSg65I
         hJI8QZSu7ENjov3OtvyqhcgsXDwjrXTq7UuyrPrIn57ImLHEoyAUQnYkLYmsxI+lCUgs
         I+G1syLQ6e8gIYMe1gL6dcph4Ib5g1GSXs5QKyA9u2B8jRGBbGHYliOIv4T1TwWdX8oS
         FaT2Nne2jJ1fsMLGSQKAA2v1U5+O3TkaWreMYLsKSNH9q5GQqv5CPc5sTANvf5rbI9Of
         1yZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qTlUjpDaJk8xQH4NQWY9cgp1iwZjJ0dvkWVvMei9HI4=;
        b=G2a6/hvJOXVKmEUqTtBtln2UAH7bo8BjK7LOqOh2bcG2N2RaNnPWVWibS50Bxg1R+u
         HHCbbOMXI29pPWFkDj13gFDLidLFCztYmtNs8eOiRXxuGly/PfkBWyIXx54MVu8tp0CD
         YFVyicSBXBBG9geqoWHFIIwnHw3xdjCfYrmSJVEpJ3lum5XKVDlcH+WkY7ka95wXpEQV
         SQ9tfePevHK6fCXRMs+n3lCMuV8w+N4IF+GR8gTK9Mt5zpRfHXVzVQ2DPWRLzjZGIaaq
         gxJ5Ms76QHanWNCPx0ZMx3/umZiDjRSW21qlCMm6Kh4eVY2Z7EnaBDNPGJ8UbqRlv9LL
         O1+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMVi8nYXS/K5EreIg7oLNNyIQNgAU6pjHkvc7ohXM6XV4w0/3r
	z980cdXfm61BE2wv5T3pA9c=
X-Google-Smtp-Source: APXvYqyS1C5wZIytKK05e1SjJFj3PvVOp3DPIpKYZYimmtvN0D0arJmT3OtM7ZWzSe7asuxaPlSmZQ==
X-Received: by 2002:a05:600c:2254:: with SMTP id a20mr30222100wmm.97.1577089343822;
        Mon, 23 Dec 2019 00:22:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c76b:: with SMTP id x11ls5163751wmk.3.gmail; Mon, 23 Dec
 2019 00:22:23 -0800 (PST)
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr30463318wmk.85.1577089343318;
        Mon, 23 Dec 2019 00:22:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577089343; cv=none;
        d=google.com; s=arc-20160816;
        b=zE2JByKWSDn4HNAbVP+otbA9CnNRPcLqZDbtAhWMK5wAbhA/xdojbMKh30VoNpeJS9
         VVp01JyQiR2KkC0edSe5CVtbUrC7yWvwuSqOW1GzPOQy73uZFu1TPYw7OYbyzCLiR2O2
         MGpwSjmuqTOGcW2Ze0wlGfUO8iNJR7S2DFKSSIrUF3pLx6KlDqDAgfjW9Wq4KSBj7GS/
         cmRiKrma4bblrnhDeHCGbwGlSBIdzij6jOjPsRCiryWD/2n1cij0aTTbnLhw4DZN09cq
         SLS5F0QPXjkLgHUOZL+YjbQPwa1J8K1OoQLZYPnT8ZMg7zzJcCZNC95NKYalAV+4y6vL
         8xDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=+T5JBInHYBykZCVOvOytGRSGKGQE9UFSyeyZa/2ESAc=;
        b=0aza52QB/263MwsPmBF7EdoHTjzG83QJ0aoHp6hpYOnbEZl8WF4n9zwF+X5F/Nxq6Y
         xpuO1Z+kTvm+wF73r202pWbAaB2S+UySUGcuFxhW1bbY0j4OUH/3khltBTmJ3H36nEWI
         /BQcEnYBvUxLo3LYnd5PebpLO5fSwZmGNrIh0UQD5apqyxza5G9JOKVp3mNvZ5gODLVg
         P7wo9vs2l3l6/yHesSCNqVXKwHmmk/1JtuiHZ+IZ/93QhQUgXEa6Eu4WGr8r7DzmKKfV
         /Q0UKnBxd43gubYwJmGFbb7BRsPGNzLWb1o8UVxP0I5zf6BfWfECzD5UT3/WuduOPyXE
         jzEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vQnGCO1z;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y13si703092wrs.0.2019.12.23.00.22.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 00:22:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id w15so3095333wru.4
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 00:22:23 -0800 (PST)
X-Received: by 2002:a5d:4044:: with SMTP id w4mr28348121wrp.322.1577089342752;
        Mon, 23 Dec 2019 00:22:22 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id p7sm18584503wmp.31.2019.12.23.00.22.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Dec 2019 00:22:22 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 23 Dec 2019 08:22:21 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1896991229.7026.1577089342263.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allyesconfig - Build # 10 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7025_1346488163.1577089341697"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vQnGCO1z;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
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

------=_Part_7025_1346488163.1577089341697
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-stable-allyesconfig.  So far, this commit has regressed CI configurations:
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
 - tcwg_kernel/llvm-master-arm-stable-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:40 error: option '-mrecord-mcount' cannot be specified on this target
00:01:40 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:40 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:42 make: *** [prepare0] Error 2
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
17873

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-stable-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/10/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1896991229.7026.1577089342263.JavaMail.javamailuser%40localhost.

------=_Part_7025_1346488163.1577089341697--
