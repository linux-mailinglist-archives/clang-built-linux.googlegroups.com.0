Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBKFY6XXQKGQE4HX3MFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 013CC12859F
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 00:41:28 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id c17sf1779964wrp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 15:41:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576885288; cv=pass;
        d=google.com; s=arc-20160816;
        b=bG/x2FvOFHQ1iBdNYHWWOofmWgj4ku99CkpPjsNX1qJOvR4z/hHOil5HwQL2/0JidN
         xzq/QoJIhfvC7QQrleU8qNfRtlCHAE9y6n1IbywIw971nenDuuSRi5h9avq3jepN3Etz
         SAl06MRVzkRnrkYcsOW8U+523isLzPXsjQkR3hMtYb9SqkxhIDdj9bPuqMLvliGkbkSx
         DyI69EwdiDVEqcZ3hZIa/nLV7QUm2eXXNvBBkgE+o5ENuQXY3XXNZpcPYlq99ryhdAYp
         k37dFjaObVd/VvLBE1ZVAPAL2GnL5tN7ejb6wXhfdPFwFLdD8ZlAERIZCJBviZjfGcbC
         yQdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=OH36ON73OlSggGRm24gwFkf+6Z1APG/3AnZjYci87Yo=;
        b=uCCiMjW2/QAg7v7tn8CwbGixov9Wac3vnEWSuzMn9mXm+kNhFVJQp/YXhqfAAQ1NrL
         GnJfURer5E4/eYy1t6c5+BX49wNegAWcsMn/vV0dTtBodXTMettAop00V6pHCEYKqWa2
         hS5uNuGLRQw76PnwkPxX7MoY3o3iBxHQqx9G8neRiv4uTNrRwNs4WGMB78WNL7n6p7N/
         GyQ0RUv5RJI5bKBanQBS9WFzLhbaIHyJ7EUjc7FwwcOgV2Yhg1FgeMReMAEggygLH+9q
         ByEUE17uPO9dFXGbysAopmuiJgfNPjeVJrIbPXcCnEPlyPnnQyEu40AT45hgkvmYhYtg
         2YPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vmPG2Kls;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OH36ON73OlSggGRm24gwFkf+6Z1APG/3AnZjYci87Yo=;
        b=mngesED2VBm2VtTrRteHMUem935G0+cCl488oTujitz5nzy76kN8MMn0po6dXCnzzA
         YbsvL58SZ3ovsHjcbZKq8kIaiyonz58G6DoOqfHeYSQl8pqvFzEwdfl8kBHsnqqMk+di
         1M0RGvEGrOD9DztoqgwYo8lt/igxJnzslhymt5ymJiq0YiOx3PWcK46dgItm9LNISRun
         D1dZCRSoHS37cCaRzrehuB1ya28L7G8sl36U9SNNn43OJgKvmgQVgyT89irRDcqLo0Z+
         g0tzfpVV0+tUTMpPiqqZbnXKIMPaAGe295iga8D1RyF5DHLUNXnZi2dHrCJe8Cnm5Yck
         aXwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OH36ON73OlSggGRm24gwFkf+6Z1APG/3AnZjYci87Yo=;
        b=NvYmUzy3kAMVljDwqNBZQoxut1p4ilF84gzhKmdIrGu/KxOXfYP3nzx6txwEcIHGbL
         JE2ySE7eldB/LzTF75vpuPfow0ZljQCW7/IExqAvQnbtbdEkbqCq0pVcJqvMKLcjoTS4
         uuJZ+6kkfOoAj0s4ovykCUmjd1ctoKLVwFLbr/XBmZd32PFFOtU0DhKZBqSQKQBGZoEJ
         iH374/oxPDN9QPMMGluQRqfhulkbMJCrRvhIcppsErS0nUj1bqN6xlkz5jZLWLKSzmS0
         A1Fsa+ShvoZfTDG1mjD7Fa/oY5BFVDiKuA/idyhRrnn/GWdvsMSpCxrXC9chsURcgtsm
         CgUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTZMbXwuMeuY3i/S8oFQf8NxgO65M/1jdSCE5qDiSy7u4H0T54
	BtEpK6EQvtZSZQ153zWLrZI=
X-Google-Smtp-Source: APXvYqxjasaEwRmot/VF3cQKp4pduFcMPI1fNjkVgoSUgfrYU7akSVzaY9rAxccPQNJDg7YmqqLh6A==
X-Received: by 2002:a7b:c30b:: with SMTP id k11mr19153461wmj.36.1576885288551;
        Fri, 20 Dec 2019 15:41:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls2827917wrr.5.gmail; Fri, 20 Dec
 2019 15:41:28 -0800 (PST)
X-Received: by 2002:adf:ea4f:: with SMTP id j15mr17951023wrn.356.1576885288027;
        Fri, 20 Dec 2019 15:41:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576885288; cv=none;
        d=google.com; s=arc-20160816;
        b=Z010Cyf0mByEirqN8XCg1j5Vt+pAvYzrQrzb0wW0u2ZC61ZPqFnn866Sxs8TLvq5pE
         ajiJacR0t1+SLRo3/vbLOZ/2QfhTnBKtVLBDXUqS28vrtFL3Xdf1/emhoYsglNz1+qiU
         eaQ9sZm+NkhAUYgq8ACtvjJORp0BrmwV5omEf8N7OWeevxQtrwG71oYZDyVoTHVqY4wy
         iEcUt58lyhxr7oUXj29GgR4jHfbHKQLfMv3S4w1VvsZ/vAnd0Em//YozTvo8yarzuil5
         ev3dBNLhZWWeLoIbKuwsWeccJuKDj/WYIOVVSG2sKOWXvF+7YRJd/hdx3HUUMKHny21i
         49pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=2p31ck17j15wnUXYLlOV2ALb5kjDsjcTyJjyqSqj440=;
        b=iE1IoukbRq11zCuB00is1DEPN2vkn2z4E91U8nYKacZHLdkH06YmvGRln6GkjFy9S9
         qhmuxrUnQl2cPutIjqQF38cNDVDFTxZULJIFGibmfdhyJETer8LsRs2takZ5FOy8ndL/
         vf2oW65IsfBY4wVAxOfg63P69cpxTDs/ycB2P0ZxjQlJMtFtMrdul7d1ILwCkiUNzq60
         YDMaltUEsZrJKoMrldGg30aLWc2KR4ttCAf4q9MrZIu+4Osda43joy1IDoqIgEmyDIEg
         7GNnjl1JHlORvAiCE+6Y67aVsmcIFzRtoHlzkc+tU+YD5aaQLnewgcALz3+ZAREqJZxQ
         cD0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vmPG2Kls;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id j188si316993wma.2.2019.12.20.15.41.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 15:41:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id d16so10930087wre.10
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 15:41:27 -0800 (PST)
X-Received: by 2002:adf:e6c6:: with SMTP id y6mr17804317wrm.284.1576885287470;
        Fri, 20 Dec 2019 15:41:27 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q6sm12026623wrx.72.2019.12.20.15.41.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Dec 2019 15:41:27 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 20 Dec 2019 23:41:26 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <314784240.6257.1576885286983.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allyesconfig - Build # 49 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6256_117116167.1576885286345"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vmPG2Kls;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435
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

------=_Part_6256_117116167.1576885286345
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:50 error: option '-mrecord-mcount' cannot be specified on this target
00:01:50 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:50 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:53 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="97b5d6bfdcf377f04270ee7a918abfd5adf3982d"

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
18142
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/49/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/314784240.6257.1576885286983.JavaMail.javamailuser%40localhost.

------=_Part_6256_117116167.1576885286345--
