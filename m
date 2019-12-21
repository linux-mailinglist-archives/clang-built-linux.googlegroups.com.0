Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBANB67XQKGQEFY4IBOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 007E3128806
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 08:57:53 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id n12sf7314831edq.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 23:57:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576915073; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNQbPzwQhvXmCWnRwwULfN2qgTyYviN/ADwzjKIzim6VvL9eRthym4a7oRx+5diQt+
         i0ptbpq/9+T5GUM9Fee51vYmNvTmtQ2JGuzB7MUQMeGoDtV2UpN2nPCXZg5nkCWlp5Hk
         37k7pgOiFyvyP2nJZn51nGEEsZAFDyI+WUPFELGdI+Ov9/M9ZVF2S8Qk0Ga31j/zfR3Q
         9SKVhjKGwsrpRpeGnQWTj4wnokdojygLysd4oQmuInT2PDazmtzDtJ4ZkqXQsLk6/PpE
         36HZZe2j7n2KL61REpKOhbzHAHWl6unh+RtJg5SorPGyY06aAaxIM6kbatbo8cFzxrn2
         KW8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=EnHcXQX5AEMJBGwt7btUHZMNRqHK05ylLpa1nSODHn8=;
        b=xJg8wVH+BjmryZEq1w3l79rs4VeOvJx0vYY75fw9JeGY3SFvuYklcLk7AoMWtNJFCu
         vZt4OV1Ob/DZ0WxCGkDP4SWoyWlfEj9dp43BXOotNljxbyLE/SnwSqr+DUKuWHnyZ3C/
         k5UNqZ351isukyEsa/v+TgtaXZAORutFPj4eh9oUiz3HYH22LNgAAFt0fCwJ6ddHnGRe
         irz8GpGH8cDKl451NrUje087dj9uuYYrkiGRwf4oQALfomUioJbFL/8fuaijEj/igJ96
         pJuHm8uan9JZollT7OS0y6XLaW+Z6kvh81ZnRjKVJYkdg2mDAHR2Mu005oUunOGT5ZeO
         okIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NcLVZINZ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EnHcXQX5AEMJBGwt7btUHZMNRqHK05ylLpa1nSODHn8=;
        b=BhdhDXF/GDpNZfjoOhpS43kklTfDxFqMqi1yA6urCkWbZ4G6nhNzecrTTkktISbPrB
         XUrB9T+yZeCd9MoyzEHPjxg1LwZDJVo/SfM90UKKpMLmGQyFABKPKQKewiggBxGXk9BZ
         Yym4ks696p1Y3YTWR4c8bNMY6gPAVdGuQ+8PsxIotAX0nTu7+YnIdXLNN5qrFShEtP40
         AJUKhCh16WWRXW9FLIEXBXaIng0RAgt+jotgN78I28sy6h0x+UAn9BBhcjjbkSQ8RplQ
         kBrx6dAcAudkAVutd3KwhV780WzwaWaHg11HUrGFvl+Yo3AYD2kePle9I6m/1tSXo+Ik
         Sv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EnHcXQX5AEMJBGwt7btUHZMNRqHK05ylLpa1nSODHn8=;
        b=sFUbo2kGpD+vVGHiDTz+WBPHrmP4Uj/SniyyEjaMD+ULZjObKpc3QkWlCzWa5kt1wW
         ka0j2KlKM5URypV8vhFlQV9P9F8bAhEm605cS2aJTkA15RIn6sQlb1pRgcGzexxi5ENV
         dYmiB6TkbRqoifR3SFLnjcoenb9Xu7b+XKWF2BHIFZ+demw3zepPnc+LqXN6mo9ODZCu
         OCY14MaJGSGcgPfSq4gN7jisOoUBj+yUwdn45DXhXnW1kOO6F+5GM+w9k3nMgIn2AN50
         9kEEjO6Iyld4JQT3ua7FPxVPUq7G70GYQYRYDKuCXzEKjkyhluW8NObUQMnJEWO7Jtf3
         RkSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgbb9HYlGjHQRM10N3Ri8xtFZBkidbL52nZMUF0hpCe5E3kApf
	EpkewpxgA5hCVI7zKopjy0k=
X-Google-Smtp-Source: APXvYqzKRIpBxbn6RTBRNp4qCxNwR3XI9/nh8aHO3uSyyevGC5HXaWRZtlGumlrNZcJOaKlphykfGg==
X-Received: by 2002:a17:906:a444:: with SMTP id cb4mr21173475ejb.42.1576915073553;
        Fri, 20 Dec 2019 23:57:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bb47:: with SMTP id y65ls3207276ede.1.gmail; Fri, 20 Dec
 2019 23:57:53 -0800 (PST)
X-Received: by 2002:aa7:da13:: with SMTP id r19mr20754378eds.188.1576915072987;
        Fri, 20 Dec 2019 23:57:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576915072; cv=none;
        d=google.com; s=arc-20160816;
        b=TzkifZf55buat/hhEKWMLL5zMKXvWmlqaY0f99wjduRFUEf4e28saNCM5Uha/nn29i
         171NbDaMjTT+bUwp/sWp6/hZ6qq168xacW3Bf4ueDLQpTGDiWuhyZcUZbQuJL1l6d3DT
         eF+Q1TCQUHmI/164Rp9Kc+xp7UFrHD9Ek1LhrZLUf858kVjRfGMk9h4Kj2G2NKCKOVjK
         LmU1ZnA0mxQTLfw6W4BmH0LqtUCKBtf8g/0H5q1sB9jYyGTl1Srvm7D6/Brc9u4jxtfh
         Vv5k8DqiR+6madrRwBaJ3PGvzIBVLLpB1V4aubEhEeQSQSi9igDGwk/4OiW0oOPmyid6
         4wPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=H1FZ35DzICEg9Vz3qVMhNlXD9VNS9R0zoF2ARqMbBa0=;
        b=VXEBrcPVfCTs0rknVBJt5MZOs0SXTjuQqYPr/j9Fgr/stdCE9KKYbccfn+nEewiZKw
         4xYFFZvHaKpiNf9O6eiIfbb6siUwiYUVSaWwf+us2/tW98mOfFHBBGptDiXgr6g5Jq7V
         Orxp70U4hbItd2UXrYjtrH5R5NZ/OnxL8ZVqX3ZK4lMJEbS8ChmJdcYyqSksQ9B/KACs
         MJqRvSgtPThnYrwWElJek2J/ZlUDZkg2jizMskHJ/r96QzZrtILXLfqN905HAVMNg6RI
         vgKRQd+j5ckcTafflNeMOzsEsiYoiO91uKjzvlTjZibY8FsurJCM5eXd5l3uk0YLivye
         RQEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NcLVZINZ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id d29si524406edj.0.2019.12.20.23.57.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 23:57:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Received: by mail-wr1-x429.google.com with SMTP id c14so11512064wrn.7
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 23:57:52 -0800 (PST)
X-Received: by 2002:a05:6000:160d:: with SMTP id u13mr20050781wrb.22.1576915072545;
        Fri, 20 Dec 2019 23:57:52 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id g7sm12608923wrq.21.2019.12.20.23.57.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Dec 2019 23:57:52 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 21 Dec 2019 07:57:51 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <259331791.6354.1576915072065.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 63 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6353_193402444.1576915071439"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NcLVZINZ;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429
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

------=_Part_6353_193402444.1576915071439
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
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
00:02:00 error: option '-mrecord-mcount' cannot be specified on this target
00:02:00 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:02:00 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:02:01 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
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
20110

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/63/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/259331791.6354.1576915072065.JavaMail.javamailuser%40localhost.

------=_Part_6353_193402444.1576915071439--
