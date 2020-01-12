Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBJNG5TYAKGQEMG3JLNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E95113867A
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 13:37:58 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id o6sf3573180wrp.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 04:37:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578832678; cv=pass;
        d=google.com; s=arc-20160816;
        b=FkmEnPHCpbwpgY7oE+ZtF8/k+TSPZCmk1lurA8ytCscTGqNoqp4qbD9+CELYEc7P23
         lkFPF4BG1Z1o+GHJyNG/Iko8G15Z0cQyXfXPaOKz/DJXrchfdA7DTPj8PNZpYJkziDqo
         7kqjJRSQMjOyEAoLVdjqKge2Z8ByW0IcNd0Y5dqlRei0MB0T3qAMP5Li+CNSTfaUYmOJ
         zQ+jLf0mdMaM3sRe0JpHuQk0JgT5YX54ZKhP0cGcZPn6qYeynL7VkMjbB03tjLb6NEzI
         DlCnQBbqKDtTCh7WF4tCvYTJ4Xk0OVw6ud62tMR8gGV/JABiI1XTuGS6L8uof65HfHHs
         l6GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=10k9BwyTA0Qmhz4g3ZECKpREOH75quDxkPBfGSCLrzg=;
        b=PO6Osa3r2GmFweuO++zg1FfLGL6G8uZw+yOYo4HurBY/K8qNIX+kvyP6mT7Z/tj24x
         68D3BRl+ntwyxpDTUz7XCcHJx8vL9qFJApUNqyaq+nCtan9N2fGg9j7m9UmUndpjaYSn
         nK6EIMbORCBhKebdfV3mBmn82DrHNJledQRTIv2pVpdwSSJZIJ58lZkzGOPQGSIeeC1j
         tczWkEbntOV4g1kM3KWuQkfzoa1q5NXesFQnmOAnekBizLifvJDo8lQeDtkrl2l3pLnl
         HBcuWyM+W5KYzZFBP0NtcKywfdSJnQJAgI9ibfLZoZUIfVhkcrRPvYxgeWnY5BtZwC+U
         pfmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NjYEuVyL;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=10k9BwyTA0Qmhz4g3ZECKpREOH75quDxkPBfGSCLrzg=;
        b=XlzDsv3CxvOyY+8fCELUGVfmBal8160w+k7Eu5JvauUGTuA9Q6lOtZOmDh+rP042Qi
         EY02u58n9TUgazRMqfWGhXTZgtRIF5S+Y9qTXUEcl65sWQz3+9Gz+xXdW4/T9XlVFQ/d
         whpwnM+TEEXiapt3vchrzt+wSUBrTfDRHa40zfXOB35bb7Oskstx7YnnQI5aUSe2gOJg
         F+43GFWwjymLuN5ZcwBJ2pwgUcItAJekra/2V4O+Mo7ZPGSTdpsqksS4fcShWZ86DQF+
         51RqYQ9mM+6jjJ4F5wjVoez9//KdXq60+I5e2WSnZ2N0hOb8x2E6hQWL7ePH/NMF/xXQ
         Wdmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=10k9BwyTA0Qmhz4g3ZECKpREOH75quDxkPBfGSCLrzg=;
        b=Skf+Yrwwzj+ouRlItNtC/yk4FuW1JMxaKrUIqStFwn2UrrbkBeCRMHoTsbHqaBeaR/
         G9DklWFQQFsfgxBf9roDTEZCUWPRYOWgPnvrC2AEviTCVHAECVRX1H8KivyK1FsciD62
         v6fEDf6zswon98yWYn/JPOAcXlFibe3mzElgMkDt+RpB44A2L6x8h5FMVPgvk9lpkliu
         qrU52rD912e2UumUv+fQyzAIc8DI1zr9TrfNKZLVhRfCXu/V0jVljtZPSweSSOh3zmeO
         qbiO8QYmOTc99+t/0DbC2VkqmZFkA0A3bDgyHruU06NiK6ksXG9EWfHEQZvU02ErLN29
         +VXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGVuo4MA5TnpSGGw4QsKs+sDTTIYLQkpfA3DgwQTe4gtp9JZUK
	Ciq4gnCOfiBAKWpTF4pvctk=
X-Google-Smtp-Source: APXvYqz+F7suky5kvtwnDDUv1Y1xfL2/JfsdILKASXOa2FzHivWz0VrbViH6LGic+IycHGThWpAl2Q==
X-Received: by 2002:a5d:448c:: with SMTP id j12mr13346602wrq.125.1578832677927;
        Sun, 12 Jan 2020 04:37:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cb55:: with SMTP id v21ls4799487wmj.4.canary-gmail; Sun,
 12 Jan 2020 04:37:57 -0800 (PST)
X-Received: by 2002:a1c:6308:: with SMTP id x8mr14864066wmb.80.1578832677380;
        Sun, 12 Jan 2020 04:37:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578832677; cv=none;
        d=google.com; s=arc-20160816;
        b=oFyqczURdA06qfHVt3w1X6dzrZSNE2Ex4QeTF/9Nc4K9AV4FoJ0Wg0fuk/VqiZOnvZ
         jVZNdSprK2vJ0CEaDeeX368FYTT4lyNujw5UPa1jTV4PYljLcMEu9LRAATidZvPVnRiC
         xlSz+yiT+HS0f2LCqVsC3doWR+VXsm37IqB7yX5ood0mNWb3PeQ2abhOE33MKlRUtDGT
         GblcaYkMbNLKCN9C4Lzn1CERFF798W3HmPneAtvKhZi9VrTUAv2MMtlyUGqlhrwZ4QUB
         tD6QoFv7+J94VEPU7UlDp1HnAQ90SeHV9JJu7uSua8gS/LGqij0VGfu0CdMR9dQNJ1Ly
         woTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=JkInmtruOE31yu6qg9TM6NT92SRgXDi9boGcjrHN9Kg=;
        b=th1oxeUZUxIu215XvBqQq9JaQ061GzVptypPlLf+YsKI4OQpbjuicAuBR8oPR70hrm
         uidZh96OW2FNpLeGtaCn/uNS3XU2nf9haq+WaVFuXFOoow1AbNlubIx30DcBFuUkTOO0
         epyjAcINfGcZRKlJJ2sp/gMYJidcD+C6o8Fnd2pGx3gkIlEHYEULypD5LQaySy/QKccE
         aOKSQfQFWyV/O1ZT5BvWov307qmQXK7hsgglwo3MKWT/0yPvCV0RChn3s3mJicbhhgZi
         TTPaWZE/amJn/Er70DaOngxya1H36dlv9LQ0FK2JWqU9bG3h4qPWrpCGuzSFjImgYuY8
         T5Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NjYEuVyL;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id g3si341562wrw.5.2020.01.12.04.37.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jan 2020 04:37:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id t2so5913045wrr.1
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jan 2020 04:37:57 -0800 (PST)
X-Received: by 2002:adf:fd07:: with SMTP id e7mr13181278wrr.21.1578832676774;
        Sun, 12 Jan 2020 04:37:56 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id e18sm10316413wrw.70.2020.01.12.04.37.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Jan 2020 04:37:56 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 12 Jan 2020 12:37:55 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <423086923.12655.1578832676184.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allyesconfig - Build # 51 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_12654_627409525.1578832675475"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NjYEuVyL;       spf=pass
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

------=_Part_12654_627409525.1578832675475
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig

Culprit:
<cut>
commit f17ae668a96eeb69f0664f126cf672e1a05754d2
Author: Fangrui Song <maskray@google.com>

    [Driver][CodeGen] Add -fpatchable-function-entry=N[,0]
</cut>

First few errors in logs of first_bad:
00:00:51 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:51 make[1]: *** [init/calibrate.o] Error 1
00:00:51 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:51 make[2]: *** [arch/arm64/mm/extable.o] Error 1
00:00:51 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:51 make[1]: *** [certs/system_keyring.o] Error 1
00:00:52 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:52 make[2]: *** [arch/arm64/xen/../../arm/xen/grant-table.o] Error 1
00:00:52 clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)
00:00:52 make[2]: *** [arch/arm64/mm/dma-mapping.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="02c5983310dcd627aecb521e03a16122f42e8a01"

Results regressed to (for first_bad == f17ae668a96eeb69f0664f126cf672e1a05754d2)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
602

from (for last_good == a44c434b68e515ce9f2627367c83ff6b22328261)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18203
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/artifact/artifacts/build-f17ae668a96eeb69f0664f126cf672e1a05754d2/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/artifact/artifacts/build-a44c434b68e515ce9f2627367c83ff6b22328261/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/

Reproduce builds:
<cut>
mkdir investigate-llvm-f17ae668a96eeb69f0664f126cf672e1a05754d2
cd investigate-llvm-f17ae668a96eeb69f0664f126cf672e1a05754d2

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allyesconfig/51/consoleText

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
index 7f26ca8b4d6..cf8fbe251b3 100644
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
index 39242c972ea..752ed2d255b 100644
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
index 33b331fd877..dd673737b97 100644
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
index e59fe060738..a976005e2e4 100644
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
index fbb772bb370..8fdf1f23e28 100644
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
index 6011deaccc1..a2dd63f9eb7 100644
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
index 6f6f43ca284..c1841138741 100644
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
index 678d90ff78f..50b96ea883a 100644
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
index 00000000000..36076dc393c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/423086923.12655.1578832676184.JavaMail.javamailuser%40localhost.

------=_Part_12654_627409525.1578832675475--
