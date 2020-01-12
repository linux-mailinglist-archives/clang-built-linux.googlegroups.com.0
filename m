Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYH35LYAKGQEKHWH72A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7A6138550
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 07:34:09 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id a19sf1061298ljp.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jan 2020 22:34:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578810848; cv=pass;
        d=google.com; s=arc-20160816;
        b=D++PA8LIvhsGlx1J/McWRqZ9xVbQ4LUATxHIDonJTH8njy+LJqK0Uzs1SbvapCN8Fw
         HFP4xygpK5ZZD+CFK5gCxOhcxPXvTTiIhBYBuEsz2GJspiw4vd62FW4LUlnFQdmDVFiN
         6T2UvRjiUMWpzkKFmGd1gYtCAsSC5bhwrw9wfajJWH8zfYklQJ8EQNRs/iP7fxYfVeWJ
         fDu9RYNwtE3jcmc9Bdi5AonU3j3jRh9a8T/JIf7Wn94rm1BI6KjbMWoQ2DaJ9nOSRO3I
         QwHtxHZBSrsfE7JplSuZchlFD93Xd8BB2Nb91CQQ9EhxcY0v9lEP8HfkNHN02YaYtdKg
         pBzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=SXD5O1O3psnrz5b7bi2fxVLIQJZm6m899B8lRK5kB/0=;
        b=Zr7bOEBrkVu2R8Z5LNgFR8P3WE8ifXquvK7y/1LJws2UHADfpH9XmGDxxG3brdbYvb
         cksJIDVkee/huctD5b0u49aqm1CSVw2t79TWA6lOf2lmWeKttQ61d7DVzKqoB2CcOtiN
         rRAyIR3e3yf2rcdwG6YgW6AAB9WF7hAuOqUCSVw/TEIYnk1/diNGTYPTGgPvkmMHtA6/
         ijnpWnKqo/NNhADccbW+l76EP4HWWnxqA3/s1urgZAUqXLXW7RC4JqUVuLvWR1DwpiK/
         c3Y6Ljl2CT9KYQ992ELNTWm1nU9NKEmxLCUtFpm3LyQr7lc893Efk3qr8Gedu1ngGqeU
         6r5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TnfPC5o8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SXD5O1O3psnrz5b7bi2fxVLIQJZm6m899B8lRK5kB/0=;
        b=NdnYd190voHCSiHfe4i5UdSRFWhgETt4iWw8vga3kqnkIc+8TkrQranuzCvYapICHl
         eTWMGaKV4evUiFf4gPZOJAtmSWsqqy9AQg2fmhMC1dUBrNXw/lYn/2YYYq/OGPGIKym9
         DJSUN5Kcy7eov2pRxEPthcQn04jOXZu8w4xv/25XC+vxqpOaG2wTdItQbrRlYEIaZNwW
         ZRroFhPGtiTuzUmRofRZenkgETpqGGZQl5AtfSi2Kv6x7onvEhP/xARXjnDJpmUgtTyG
         m/Bqeb7e/zPlgTsfxYkYajSJTqG4aU8DnETAd1ny316lj6aBiMCAS6v6yZNEqmp8FoPR
         +JtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SXD5O1O3psnrz5b7bi2fxVLIQJZm6m899B8lRK5kB/0=;
        b=Y8N1nAc3dJPs6ZCDCgUpHN3bHFJemfbounc58gOvH8wOO/ipYc34YsZNlQdPsxEktt
         Rvlq9tbo8JR57ZQu0LDfcZij/TH9DnYyyw+tSgphJGfk38f/uR7uEQaHEb0cl508XZeC
         KQv4+wTY5t+H7s44cKRZO0O60x8xwQdHS/4Xc5CzU8tF5oKHL00RTaDuLsYLmvu0QAsR
         YyK6G8V4gyYYTxSOYV0YmsX7yPWUPQAUsUQTSWNqRSvIEf5gOWE8ily3gbGdPAKN63d2
         FyDK7xuDfmYl25vViNXXJwuXvw9Nhaq3P6S/0CTdSpTHhJTLrvXHSdlW1biVpSQMHOeI
         3UaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZ5Esda3rEeIYaWochwVTx6pZ+T4/OUzoGrkOUnwRIM+XPZJwP
	YOpnGk5aCEdX0Mtt5lcqu0k=
X-Google-Smtp-Source: APXvYqzTeT0Yu4+cVqE4uKYVtzEw+4baICgo2Ci41ITvB7/yg5J+hBV5kRNIdXHa8HgpY/NRAwybpw==
X-Received: by 2002:a2e:8603:: with SMTP id a3mr7214734lji.210.1578810848570;
        Sat, 11 Jan 2020 22:34:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:915d:: with SMTP id y29ls839558lfj.7.gmail; Sat, 11 Jan
 2020 22:34:08 -0800 (PST)
X-Received: by 2002:ac2:50da:: with SMTP id h26mr6952331lfm.80.1578810848003;
        Sat, 11 Jan 2020 22:34:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578810848; cv=none;
        d=google.com; s=arc-20160816;
        b=rP3nuoVyPTpU4DIHOBynCZRCxBqiqijiAYbXCGD8XutYIaXt2QvpydDyYKw/0EqVXd
         yvjJ8EOf4zmGS7g+xo46qYvdnouf6ePftZasg6JOQ1Q043rGzN2dnWyMXk88q8Rl0r6d
         XX1tL8KrxJlOO7B8FmORt7nHCU84V64ErJev43VY71knaWA6tSylmdZA9XaV7B9Y4QUc
         GF+xQVgJ74tFcznNjEUMXbO73JcE8fjUNMO3uo2Js2nJ9oQz6rCFDYUqh7uhR3OLWutW
         Mrd5aZ543v5ncGDjCcRTGHzxafx7tzGN5oV4XCjDSauVjjFux1g9P8jIKr/S3go7b7a1
         eiGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Ns0ycHdRmsAhOtHpXR1/6on0fTzxuFvtIgO/StO7w6c=;
        b=KHul0X8PH5j6Pwz77xbivaelrzs4gieJYzYeLcHmEGfYswj5noLlk/ZcX/eztbFbA/
         MtSfDAYe8mKc3pu0RKzJC0Dfo+lxaC8U1tFFSXR5L5AZ0YfYgzKQ5BsG7yEyl6UlxSDD
         aoGnDuclIfTruzPVm1L65floPVx1Tj+YX7oLCkd5y0Jeqs1ZErnNIOI5XAd4DVL37XRG
         fAN/9k8S2rkVxO5CEr+Zqfe/moaJBYaYsiCAVbA8EYqW2TMFDNFGJGsYfbsmZBvCFQpe
         IhmF2m791fzCbzpwi65UC5BlQZ3lu8zdCZvOYNwouPi+ula7JGw1kr4jylHkcgCv6vEs
         4NgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TnfPC5o8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id e3si420745ljg.2.2020.01.11.22.34.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 22:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id m24so6207837wmc.3
        for <clang-built-linux@googlegroups.com>; Sat, 11 Jan 2020 22:34:07 -0800 (PST)
X-Received: by 2002:a1c:f31a:: with SMTP id q26mr13014995wmq.142.1578810847046;
        Sat, 11 Jan 2020 22:34:07 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q68sm9653822wme.14.2020.01.11.22.34.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Jan 2020 22:34:06 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 12 Jan 2020 06:34:05 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1820783872.12619.1578810846212.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig - Build # 24 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_12618_527821513.1578810845654"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=TnfPC5o8;       spf=pass
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

------=_Part_12618_527821513.1578810845654
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig

Culprit:
<cut>
commit f17ae668a96eeb69f0664f126cf672e1a05754d2
Author: Fangrui Song <maskray@google.com>

    [Driver][CodeGen] Add -fpatchable-function-entry=N[,0]
</cut>

First few errors in logs of first_bad:
00:01:29 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:29 make[1]: *** [init/calibrate.o] Error 1
00:01:30 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:30 make[1]: *** [certs/system_keyring.o] Error 1
00:01:30 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:30 make[1]: *** [certs/blacklist.o] Error 1
00:01:30 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:30 make[2]: *** [arch/arm64/xen/../../arm/xen/grant-table.o] Error 1
00:01:31 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:31 make[2]: *** [arch/arm64/mm/dma-mapping.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="8647a72c4a52e0386c0397ce3fbd38121c18b873"

Results regressed to (for first_bad == f17ae668a96eeb69f0664f126cf672e1a05754d2)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
603

from (for last_good == a44c434b68e515ce9f2627367c83ff6b22328261)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18088
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/artifact/artifacts/build-f17ae668a96eeb69f0664f126cf672e1a05754d2/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/artifact/artifacts/build-a44c434b68e515ce9f2627367c83ff6b22328261/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/

Reproduce builds:
<cut>
mkdir investigate-llvm-f17ae668a96eeb69f0664f126cf672e1a05754d2
cd investigate-llvm-f17ae668a96eeb69f0664f126cf672e1a05754d2

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach f17ae668a96eeb69f0664f126cf672e1a05754d2
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach a44c434b68e515ce9f2627367c83ff6b22328261
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/24/consoleText

Full commit:
<cut>
commit f17ae668a96eeb69f0664f126cf672e1a05754d2
Author: Fangrui Song <maskray@google.com>
Date:   Sat Jan 4 16:58:11 2020 -0800

    [Driver][CodeGen] Add -fpatchable-function-entry=N[,0]
    
    In the backend, this feature is implemented with the function attribute
    "patchable-function-entry". Both the attribute and XRay use
    TargetOpcode::PATCHABLE_FUNCTION_ENTER, so the two features are
    incompatible.
    
    Reviewed By: ostannard, MaskRay
    
    Differential Revision: https://reviews.llvm.org/D72222
---
 clang/include/clang/Basic/CodeGenOptions.def       |  2 ++
 clang/include/clang/Basic/DiagnosticDriverKinds.td |  2 ++
 clang/include/clang/Driver/Options.td              |  2 ++
 clang/lib/CodeGen/CodeGenFunction.cpp              |  3 +++
 clang/lib/Driver/ToolChains/Clang.cpp              | 18 ++++++++++++++++++
 clang/lib/Driver/XRayArgs.cpp                      |  7 +++++++
 clang/lib/Frontend/CompilerInvocation.cpp          |  2 ++
 clang/test/CodeGen/patchable-function-entry.c      |  5 +++++
 clang/test/Driver/fpatchable-function-entry.c      | 17 +++++++++++++++++
 9 files changed, 58 insertions(+)

diff --git a/clang/include/clang/Basic/CodeGenOptions.def b/clang/include/clang/Basic/CodeGenOptions.def
index 7f26ca8b4d61..cf8fbe251b35 100644
--- a/clang/include/clang/Basic/CodeGenOptions.def
+++ b/clang/include/clang/Basic/CodeGenOptions.def
@@ -110,6 +110,8 @@ CODEGENOPT(XRayAlwaysEmitTypedEvents , 1, 0)
 ///< XRay instrumentation.
 VALUE_CODEGENOPT(XRayInstructionThreshold , 32, 200)
 
+VALUE_CODEGENOPT(PatchableFunctionEntryCount , 32, 0) ///< Number of NOPs at function entry
+
 CODEGENOPT(InstrumentForProfiling , 1, 0) ///< Set when -pg is enabled.
 CODEGENOPT(CallFEntry , 1, 0) ///< Set when -mfentry is enabled.
 CODEGENOPT(MNopMCount , 1, 0) ///< Set when -mnop-mcount is enabled.
diff --git a/clang/include/clang/Basic/DiagnosticDriverKinds.td b/clang/include/clang/Basic/DiagnosticDriverKinds.td
index 39242c972ea2..752ed2d255b7 100644
--- a/clang/include/clang/Basic/DiagnosticDriverKinds.td
+++ b/clang/include/clang/Basic/DiagnosticDriverKinds.td
@@ -404,6 +404,8 @@ def err_drv_unsupported_indirect_jump_opt : Error<
   "'-mindirect-jump=%0' is unsupported with the '%1' architecture">;
 def err_drv_unknown_indirect_jump_opt : Error<
   "unknown '-mindirect-jump=' option '%0'">;
+def err_drv_unsupported_fpatchable_function_entry_argument : Error<
+  "the second argument of '-fpatchable-function-entry' must be 0 or omitted">;
 
 def warn_drv_unable_to_find_directory_expected : Warning<
   "unable to find %0 directory, expected to be in '%1'">,
diff --git a/clang/include/clang/Driver/Options.td b/clang/include/clang/Driver/Options.td
index 33b331fd8777..dd673737b97b 100644
--- a/clang/include/clang/Driver/Options.td
+++ b/clang/include/clang/Driver/Options.td
@@ -1703,6 +1703,8 @@ def fmax_type_align_EQ : Joined<["-"], "fmax-type-align=">, Group<f_Group>, Flag
 def fno_max_type_align : Flag<["-"], "fno-max-type-align">, Group<f_Group>;
 def fpascal_strings : Flag<["-"], "fpascal-strings">, Group<f_Group>, Flags<[CC1Option]>,
   HelpText<"Recognize and construct Pascal-style string literals">;
+def fpatchable_function_entry_EQ : Joined<["-"], "fpatchable-function-entry=">, Group<f_Group>, Flags<[CC1Option]>,
+  HelpText<"Generate N NOPs at function entry">;
 def fpcc_struct_return : Flag<["-"], "fpcc-struct-return">, Group<f_Group>, Flags<[CC1Option]>,
   HelpText<"Override the default ABI to return all structs on the stack">;
 def fpch_preprocess : Flag<["-"], "fpch-preprocess">, Group<f_Group>;
diff --git a/clang/lib/CodeGen/CodeGenFunction.cpp b/clang/lib/CodeGen/CodeGenFunction.cpp
index e59fe0607382..a976005e2e4e 100644
--- a/clang/lib/CodeGen/CodeGenFunction.cpp
+++ b/clang/lib/CodeGen/CodeGenFunction.cpp
@@ -824,6 +824,9 @@ void CodeGenFunction::StartFunction(GlobalDecl GD, QualType RetTy,
       // Attr->getStart is currently ignored.
       Fn->addFnAttr("patchable-function-entry",
                     std::to_string(Attr->getCount()));
+    } else if (unsigned Count = CGM.getCodeGenOpts().PatchableFunctionEntryCount) {
+      Fn->addFnAttr("patchable-function-entry",
+                    std::to_string(Count));
     }
   }
 
diff --git a/clang/lib/Driver/ToolChains/Clang.cpp b/clang/lib/Driver/ToolChains/Clang.cpp
index fbb772bb370a..8fdf1f23e28d 100644
--- a/clang/lib/Driver/ToolChains/Clang.cpp
+++ b/clang/lib/Driver/ToolChains/Clang.cpp
@@ -5002,6 +5002,24 @@ void Clang::ConstructJob(Compilation &C, const JobAction &JA,
   const XRayArgs &XRay = TC.getXRayArgs();
   XRay.addArgs(TC, Args, CmdArgs, InputType);
 
+  if (Arg *A = Args.getLastArg(options::OPT_fpatchable_function_entry_EQ)) {
+    StringRef S0 = A->getValue(), S = S0;
+    unsigned Size, Start = 0;
+    if (!Triple.isAArch64() && Triple.getArch() != llvm::Triple::x86 &&
+        Triple.getArch() != llvm::Triple::x86_64)
+      D.Diag(diag::err_drv_unsupported_opt_for_target)
+          << A->getAsString(Args) << TripleStr;
+    else if (S.consumeInteger(10, Size) ||
+             (!S.empty() && (!S.consume_front(",") ||
+                             S.consumeInteger(10, Start) || !S.empty())))
+      D.Diag(diag::err_drv_invalid_argument_to_option)
+          << S0 << A->getOption().getName();
+    else if (Start)
+      D.Diag(diag::err_drv_unsupported_fpatchable_function_entry_argument);
+    else
+      CmdArgs.push_back(Args.MakeArgString(A->getSpelling() + Twine(Size)));
+  }
+
   if (TC.SupportsProfiling()) {
     Args.AddLastArg(CmdArgs, options::OPT_pg);
 
diff --git a/clang/lib/Driver/XRayArgs.cpp b/clang/lib/Driver/XRayArgs.cpp
index 6011deaccc1f..a2dd63f9eb77 100644
--- a/clang/lib/Driver/XRayArgs.cpp
+++ b/clang/lib/Driver/XRayArgs.cpp
@@ -70,6 +70,13 @@ XRayArgs::XRayArgs(const ToolChain &TC, const ArgList &Args) {
       D.Diag(diag::err_drv_clang_unsupported)
           << (std::string(XRayInstrumentOption) + " on " + Triple.str());
     }
+
+    // Both XRay and -fpatchable-function-entry use
+    // TargetOpcode::PATCHABLE_FUNCTION_ENTER.
+    if (Arg *A = Args.getLastArg(options::OPT_fpatchable_function_entry_EQ))
+      D.Diag(diag::err_drv_argument_not_allowed_with)
+          << "-fxray-instrument" << A->getSpelling();
+
     XRayInstrument = true;
     if (const Arg *A =
             Args.getLastArg(options::OPT_fxray_instruction_threshold_,
diff --git a/clang/lib/Frontend/CompilerInvocation.cpp b/clang/lib/Frontend/CompilerInvocation.cpp
index 6f6f43ca284b..c18411387412 100644
--- a/clang/lib/Frontend/CompilerInvocation.cpp
+++ b/clang/lib/Frontend/CompilerInvocation.cpp
@@ -1101,6 +1101,8 @@ static bool ParseCodeGenArgs(CodeGenOptions &Opts, ArgList &Args, InputKind IK,
       parseXRayInstrumentationBundle("-fxray-instrumentation-bundle=", A, Args,
                                      Diags, Opts.XRayInstrumentationBundle);
 
+  Opts.PatchableFunctionEntryCount =
+      getLastArgIntValue(Args, OPT_fpatchable_function_entry_EQ, 0, Diags);
   Opts.InstrumentForProfiling = Args.hasArg(OPT_pg);
   Opts.CallFEntry = Args.hasArg(OPT_mfentry);
   Opts.MNopMCount = Args.hasArg(OPT_mnop_mcount);
diff --git a/clang/test/CodeGen/patchable-function-entry.c b/clang/test/CodeGen/patchable-function-entry.c
index 678d90ff78fc..50b96ea883a1 100644
--- a/clang/test/CodeGen/patchable-function-entry.c
+++ b/clang/test/CodeGen/patchable-function-entry.c
@@ -1,4 +1,5 @@
 // RUN: %clang_cc1 -triple aarch64 -emit-llvm %s -o - | FileCheck %s
+// RUN: %clang_cc1 -triple x86_64 -emit-llvm %s -fpatchable-function-entry=1 -o - | FileCheck --check-prefixes=CHECK,OPT %s
 
 // CHECK: define void @f0() #0
 __attribute__((patchable_function_entry(0))) void f0() {}
@@ -16,6 +17,10 @@ __attribute__((patchable_function_entry(2, 0))) void f20() {}
 __attribute__((patchable_function_entry(2, 0))) void f20decl();
 void f20decl() {}
 
+// OPT: define void @f() #2
+void f() {}
+
 /// M in patchable_function_entry(N,M) is currently ignored.
 // CHECK: attributes #0 = { {{.*}} "patchable-function-entry"="0"
 // CHECK: attributes #1 = { {{.*}} "patchable-function-entry"="2"
+// OPT:   attributes #2 = { {{.*}} "patchable-function-entry"="1"
diff --git a/clang/test/Driver/fpatchable-function-entry.c b/clang/test/Driver/fpatchable-function-entry.c
new file mode 100644
index 000000000000..36076dc393c6
--- /dev/null
+++ b/clang/test/Driver/fpatchable-function-entry.c
@@ -0,0 +1,17 @@
+// RUN: %clang -target i386 %s -fpatchable-function-entry=1 -c -### 2>&1 | FileCheck %s
+// RUN: %clang -target x86_64 %s -fpatchable-function-entry=1 -c -### 2>&1 | FileCheck %s
+// RUN: %clang -target aarch64 %s -fpatchable-function-entry=1 -c -### 2>&1 | FileCheck %s
+// RUN: %clang -target aarch64 %s -fpatchable-function-entry=1,0 -c -### 2>&1 | FileCheck %s
+// CHECK: "-fpatchable-function-entry=1"
+
+// RUN: not %clang -target ppc64 -fsyntax-only %s -fpatchable-function-entry=1 2>&1 | FileCheck --check-prefix=TARGET %s
+// TARGET: error: unsupported option '-fpatchable-function-entry=1' for target 'ppc64'
+
+// RUN: not %clang -target i386 -fsyntax-only %s -fpatchable-function-entry=1,1 2>&1 | FileCheck --check-prefix=NONZERO %s
+// NONZERO: error: the second argument of '-fpatchable-function-entry' must be 0 or omitted
+
+// RUN: not %clang -target x86_64 -fsyntax-only %s -fpatchable-function-entry=1,0, 2>&1 | FileCheck --check-prefix=EXCESS %s
+// EXCESS: error: invalid argument '1,0,' to -fpatchable-function-entry=
+
+// RUN: not %clang -target aarch64-linux -fsyntax-only %s -fxray-instrument -fpatchable-function-entry=1 2>&1 | FileCheck --check-prefix=XRAY %s
+// XRAY: error: invalid argument '-fxray-instrument' not allowed with '-fpatchable-function-entry='
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1820783872.12619.1578810846212.JavaMail.javamailuser%40localhost.

------=_Part_12618_527821513.1578810845654--
