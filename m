Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBL6U6LXQKGQEY3ZOISQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C39A1279B8
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 12:02:08 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id v17sf2071837wrm.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 03:02:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576839727; cv=pass;
        d=google.com; s=arc-20160816;
        b=VD0SA/AE1dAm+sTAEK9Uh2daioi/PA27aFOvKQcJcSyvfwHzUATac3V67tEWJRtMWt
         ZPk7wGq+aqnCql1mEoSqhMWRhEYyHxXqnI1z0Z3AddK+Y0hWD3NRigZDw0z+xqTUBqjn
         73bJBvJmBR0RMWYnxhSjmLBb9AwUhTNvujZt8efBVLaB4R/rz7u3UncK43X03WJEjrS3
         dXOwyIG8s2ZWx9IfPsBi+JPNhEJsJz5gHewZ3cOPLtAhWYnzdZ2DAUaqHymArXTcPoLY
         EoWsWMJfaUHV1h1KQibkSZ3GekjKCbUuqOzkh2NbAiy8jspBzfk6TfeQibMoqlvBdmL2
         HBBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=tMhU9yojQWqlmPlzyNLhguxRHwsgcJWqjIVbKNFN4PE=;
        b=a3F9y2x4qgAI+qHsoe3fH8Mb+ixumEzzFnXR3iExZ9sPDjd07PFteOUo3rEICBTDw7
         gS7xg6IQPbvc1F3woG9DeFVDd2haa5GL28meeojge1vUh6qUiwCaQM3KlHOpwYQ+4TPV
         FsjlcPmxaYRLHrnB0kZYrQ3Z3V8AuXL2oFj5hD7lRMDp8WQJVCLAes7GnIVTNwi9gJLR
         wrHrFgnVJayL9p9rQknzomlGy2AAjd97IzOur1m6P94WQBsjvcDsBEGyqm4jF6ebTgwk
         hT4HdKu1jES0cU0PzmGgs/qv2zRrUmIBgGRO9h0a/WMOKJytrCSQakjn8pmg0FAH2IHL
         /zyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IfLMgUrP;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMhU9yojQWqlmPlzyNLhguxRHwsgcJWqjIVbKNFN4PE=;
        b=HTQvauUYgClfJUYmrlZdpfAC8p699MPVCYloYAmwqlynCKxV2WKy6TcLKAhbF2M07x
         ABI00qu7kX/HyaT+gYvdj1r98SKcYazNodUbrPgPrTtPdH8yy0Ka+bKYc3iFpW+Lq05X
         WQSfv+ZDvFCGRxeZ3iKp2lo3D7NROgmRRQPi0aNtop0cWX4GUs4r/zMPp4wAB7N3aR2+
         /KFU2bwUexV1tSFGPi8mEBD9aM9jKbaXfwldMVfyjsZ6IygpK8auOSmblOn/35Q7MMsi
         d6g02wBkf46PPpTWj29cilHTlrvgzBfN/BHL4iy6rhD/lny5rkrj4on/6dQNYLQHsIoP
         cj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMhU9yojQWqlmPlzyNLhguxRHwsgcJWqjIVbKNFN4PE=;
        b=StRl53Te7Hodl/BtQ96sdkDdoYZeE9DsKz8yCJUErxEylwkWSC1X2JB3SIO8i6fZJ9
         Y99vldQP26l6XbHU4qq64cTk9Hx6WdnHqzz/wI335qshme03wvXUSYNo68I8wATulo48
         kLm8bzcw8uXHbqK9fk4J/JzLbg+fJx4gENBp8BuD1f7KvyeGxi7ik0C+zu8VnnGOj+bg
         RUvN6mgp7joWuRIlGxOflUdcykzfi3tHGeSQ+uxva/X73iFM5T8BWjkOxXRosn8e6u/s
         rr4zzndt2+n0Qwa2owyMkLzU3EE2ANZ+gzKU81nb6HHxJ+V8RzcSOPCKD20Hz2/hIJQ6
         k+Qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWM8CFwsNEHcZ4KooDvWSrSRzpLJ5vO65nqbpagTzTyzk9fFAdl
	IHCNzGKfs8Z4fZjKnFsRgno=
X-Google-Smtp-Source: APXvYqySscNbuZ3roX9m3bFbh5mM7WJtMeQV7mY+Je4p7M9rZbOiLBxBloRohkwfaK7zOAIhfKSCJA==
X-Received: by 2002:a05:6000:1052:: with SMTP id c18mr14526929wrx.268.1576839727778;
        Fri, 20 Dec 2019 03:02:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7409:: with SMTP id p9ls2872521wmc.4.gmail; Fri, 20 Dec
 2019 03:02:06 -0800 (PST)
X-Received: by 2002:a1c:ab85:: with SMTP id u127mr14931888wme.40.1576839726177;
        Fri, 20 Dec 2019 03:02:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576839726; cv=none;
        d=google.com; s=arc-20160816;
        b=Ewtseq18W2fbWAQqcuTIww0xTwZ52/Ma2TL1FA9OC5z+OpWW2iv60pPgMgeDLuJc8s
         Hv7S9NzBzHqwqfRFc+4pLOBUDUoqBcdSKoOBzit+i7FFMxk+gG410VDi6AlhUrcntm9j
         SrhyiYjxijnPSzfAbLT/anqy52dIwcyLIpUB+y1Ppn4BkJSGlxXn5YXUbQPQC8JitcKz
         JrKuEqaTEXlcY8TWlxfomToZ0XXagnhLPZdEGmnVuLPpTDVvi9piuUODItkTaJPZkRNW
         1/+qqlUyy+QKiz/TR6iZg5ZX9BRKPmFXXF6ip91OVe6j2w7eRm0UDfUlmX6NkQ9uiFTQ
         djMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=6zRqqc5IiMBwx9FgKhiifk4ESOWHyAaNmSPEm3snYb8=;
        b=azekmAE2oTpRJAkS0SZyEQC+EinAwrKlWCb/fXUKO3qhBjcQ5MWzmkuDu7leowMg2O
         PmL992uvKghTdewgFn9ZOW4SFIfMQD7ibefdO4pOqdP8IutfZgyGY9Q/qAg2rGP/5dvz
         VhEV7Q1FAIPfO+MN1OMY7VHO9yxiELIWL0LUHCTK6vCqkZM/ZFaWPKC27h1agz/GHJcE
         bmW0YikV9m92akifbA/tHadlRtUm731XrUgkyIONbz0SKdGfsNKNDqEQARv/I7B/4BmM
         Zaq7GTYoTEq6hxpQfs9RuoaET2qLKMALij7U/fceESkLBnjATiviTuzEzHV4ni4+VRq4
         QTag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IfLMgUrP;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id 80si498667wme.4.2019.12.20.03.02.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 03:02:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id c9so8996971wrw.8
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 03:02:06 -0800 (PST)
X-Received: by 2002:adf:e887:: with SMTP id d7mr14082226wrm.162.1576839725586;
        Fri, 20 Dec 2019 03:02:05 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a16sm9333173wrt.37.2019.12.20.03.02.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Dec 2019 03:02:04 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 20 Dec 2019 11:02:03 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <2113798202.6108.1576839724603.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-stable-allyesconfig - Build # 14 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6107_1193066665.1576839723831"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IfLMgUrP;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f
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

------=_Part_6107_1193066665.1576839723831
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-stable-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig

Culprit:
<cut>
commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>

    [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
</cut>

First few errors in logs of first_bad:
00:01:26 error: option '-mrecord-mcount' cannot be specified on this target
00:01:26 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
00:01:26 make[1]: *** [scripts/mod/devicetable-offsets.s] Error 1
00:01:27 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="9366397f057d18401e680b2cb28a0ee17c59d4a6"

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
17167
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/

Reproduce builds:
<cut>
mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-stable-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-stable-allyesconfig/14/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2113798202.6108.1576839724603.JavaMail.javamailuser%40localhost.

------=_Part_6107_1193066665.1576839723831--
