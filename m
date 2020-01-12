Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBLNB5LYAKGQECVRN53I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4511384A6
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 04:21:17 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id z10sf3088684wrt.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jan 2020 19:21:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578799277; cv=pass;
        d=google.com; s=arc-20160816;
        b=jp0nvjCOBXbZA/38xaaQ9mreWO98gwSTTvjW8WLgCrCVGapQ28WSio4bFqPTJjDVHO
         8LMHtnaUNCAB9BvEZig2Evzag44PYBbAM4kRzYTo+piy+1BAEdHR3fdIsXIJ1nDcOgHu
         1V87YwUo7mct6hkXu1gSQ46UqFjNMZw9GSMWaX7IteVl3mQ4KcR15sat/pRNPNLx9VUS
         B4cXNFw2lBCxvPaTe/fHoCvhY+J7vC7v797Cd6kN9BDoK3j8csPtPa738w4l3yl5atNs
         jX1xpE7GZsOymcv7Mgf+ln/7r0lCsPSc9jU9sc3p6ugl5tgOaR1HmJqj307yXQi1ypuG
         dmhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=1nqOBSJ8Me/nmJCpCMpMjGK2asjzv0lu35ximF8T57A=;
        b=YmFKTUZHNBQBYVua3XrZ7b5l/iSLWOyE/KIpROaGSPW+5JVT0VTia1Y3eSpCRkTNve
         rXbliG/RITqQdvaWMwuGY9gjWbzdpyKOEo4DavjZ3xizT+hJskeACThg8BfXrWIsweIz
         ZlT3V17X5t/SCkWdT+R2hnZIVCQjN2mL/csS7j/v/uZ5ZO7CL0UjokCyRg6YMn92nN8J
         pArmQV7VuD9VP1A6hVHICm/rJMttHMFxEZCDuUcmGIfO1b9XyfzVSz6rvjw1C06qTB7m
         ooHbMK99G2m/C3Ygh8ar42pYoQGlq6/7hNTkZyCmgoPsXr56D4Q7S8QOCX0nGf1rgUs/
         htxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=qvK2Cmlv;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nqOBSJ8Me/nmJCpCMpMjGK2asjzv0lu35ximF8T57A=;
        b=JHKUmkbW0unWR8EGsCApQa6UZKxZiOIftaGKt7NrUdaLmyCyMUX/soxgaqrs2mE2Vu
         9eKbAchxKRLqYtglCzesBxcLYEKV5QkSdk50hnAJj7lgg5aaSndS2rb6SQmHZ7/OLRcc
         NyY2JyVjyOWGuOCplNmeSyBT9//XABetoCLVgiPwMsm7LFZTam+4wPux8guneAyUbrSA
         vDlelJsv6VMQXyb7Yh6a7zbvqOx291hlGakolG7V6ynSdrx1pVnCH8icW7J+qC8oYtKG
         LXQggVQHOZqBu3YocDrsF9KDuSGRd37/MuoKXFkfbfQ7lvY8Wx12SoC1BbpUb8pzzb88
         TGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1nqOBSJ8Me/nmJCpCMpMjGK2asjzv0lu35ximF8T57A=;
        b=q8j7NiSPKDX2YI6spAofTRSVyjFw0TGyNGb3c9qI9cR40uR9yppwj0E4AIBrFw04ol
         tvKDjZAyOsjrNOfQUATD6ythUYDtMbuD/DBSBSP7fvdpXQipymqMBNC2cgwM1fmYg+cg
         yM/gMZa+n+W1H1J6xkJtZnM1K8fJdjcif2yKx26n45tQy5c54v6Ec/MT0WU6ZkDMIhoY
         rSfcFp1AStCgwy/yGtMJNqU4FnoPaxHyxskiRiuiAlwLJbV1NF0gEqaNaHF94H1ZjAUv
         w2fQmEf9qj1NhWUhFKv1BanPAhGOibfzTiqLGh5ezs/TWNfdpSFA8W2/Gp9ttuzasn+J
         tvIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVT2/e8qJXXDeawfAirr90OkRUFGoBsOVItRG7lBKonrT+dkDu9
	1styYVJ+eeM516AAAwUQEbQ=
X-Google-Smtp-Source: APXvYqwsYtf+I+Q/LH3yI++fGKdNRQP1TfXm7HH5OuoTJYfnvHVL5wy0ZrXJTigAeZNSzJnEhaC/Eg==
X-Received: by 2002:adf:e5ca:: with SMTP id a10mr11081287wrn.347.1578799277520;
        Sat, 11 Jan 2020 19:21:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls3324546wrn.6.gmail; Sat, 11 Jan
 2020 19:21:17 -0800 (PST)
X-Received: by 2002:a05:6000:1047:: with SMTP id c7mr11521132wrx.341.1578799276961;
        Sat, 11 Jan 2020 19:21:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578799276; cv=none;
        d=google.com; s=arc-20160816;
        b=citbX/Nusd9eCitdKbug49ovRQhJmbZx+t79WDChKzHEC3h55k0aG6mTY33nYhSXUL
         zMb/etMzQ3+dMUpKEQO/m2LMdZ8FBMbGv/U9go6wEwZ6BHcivjjbgijHbQ4VdWj6gKgY
         RCwOjpu5Np9EYuKR93sFMV2a6AQJzN5xqvhr8ZiOd4qmkSmcSN3dHhg+/Jg0eZcvNHfv
         zsy+PPXpcQgWmrWH1DW+zCs7OoJorR73JYQnTNCLB8NyvLztJfqqmrR7dmIsHm17PTVK
         7JBpL2lCgmwP2CZ8zZm9+Y47S9Ar3AvJEXnvW/9UBaT2CGwJnKY4DjcuVy2ucwF0si+J
         s6jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=tovXjjmAP7OycD9yuKXZkAf9mHUSD5aK5aR/aBm+sqA=;
        b=iZtWsJloRunxANGZEbgwC/sx84r/4oMjF1QqVn82pxAFPWo3mA+8OxH8dCzdW4HC2P
         rtyJD4VetYxue703rlKoZgxEnK6mlIzuj2KPAMCri8jblgvb1O4F/Oh4BDD0KN3ExMjW
         0isE/LUkQsae88B00BKAdAlNyZ173yni107tatR1akjSkx9a5x/xVYqqeIki+ECKJ7e2
         r2pdbnC5YMyx+T7ztKBzOGEyn6FxvYtbjY3m1LVB95US7Oq3VhDtmP2FPEAf096TdKyK
         IZHcOLoPtVst8FZIul5tyTrhM7ykbsQLdqodb18UCkP0wPNkeFoTjdr7ZxdtOIdBWTT/
         jGRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=qvK2Cmlv;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m2si550801wmi.3.2020.01.11.19.21.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:21:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id j42so5304153wrj.12
        for <clang-built-linux@googlegroups.com>; Sat, 11 Jan 2020 19:21:16 -0800 (PST)
X-Received: by 2002:adf:f605:: with SMTP id t5mr11043165wrp.282.1578799276397;
        Sat, 11 Jan 2020 19:21:16 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id o1sm8776510wrn.84.2020.01.11.19.21.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Jan 2020 19:21:15 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 12 Jan 2020 03:21:15 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <992593603.12601.1578799275880.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig - Build # 92 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_12600_1780984150.1578799275310"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=qvK2Cmlv;       spf=pass
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

------=_Part_12600_1780984150.1578799275310
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Culprit:
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
</cut>

First few errors in logs of first_bad:
00:01:27 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:27 make[1]: *** [init/calibrate.o] Error 1
00:01:28 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:28 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:28 make[2]: *** [crypto/asymmetric_keys/restrict.o] Error 1
00:01:28 make[1]: *** [certs/system_keyring.o] Error 1
00:01:28 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:28 make[2]: *** [arch/arm64/mm/extable.o] Error 1
00:01:28 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:01:28 make[1]: *** [certs/blacklist.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="6ff1ea3244c543ad24fc99c7f4979db2f2078593"

Results regressed to (for first_bad == f17ae668a96eeb69f0664f126cf672e1a05754d2)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
611

from (for last_good == a44c434b68e515ce9f2627367c83ff6b22328261)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/artifact/artifacts/build-f17ae668a96eeb69f0664f126cf672e1a05754d2/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/artifact/artifacts/build-a44c434b68e515ce9f2627367c83ff6b22328261/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/

Reproduce builds:
<cut>
mkdir investigate-llvm-f17ae668a96eeb69f0664f126cf672e1a05754d2
cd investigate-llvm-f17ae668a96eeb69f0664f126cf672e1a05754d2

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/92/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/992593603.12601.1578799275880.JavaMail.javamailuser%40localhost.

------=_Part_12600_1780984150.1578799275310--
