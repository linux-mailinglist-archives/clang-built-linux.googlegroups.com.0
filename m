Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBS4XSDYQKGQEOSACFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E19141CE5
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 08:56:59 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id g11sf19540609edu.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jan 2020 23:56:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579420619; cv=pass;
        d=google.com; s=arc-20160816;
        b=bWytuz/K1JooycSppYMQkJ7ZogylKcvN/97jfZnBOVMQYpD7/AeGuA26PhexT9Ukt2
         6XMIaiGBnq01T0rN/6LzyVxBTTtEfkGnFzBlbnLfxgV923ubHV2dq/duoBuFVjmV53Lb
         YwYt9+oyvbH24GgnxVtKm7S4G7fmJf/DPBjCD7K8s0Q2FiSyZSYdTC53b+rtspAW1HDV
         KZXrmKmKtvk6Gt/ZjOdFCe6PMgdZhfbKYZWEzUXmiu2QEbFYb641JKV0noHgT84XIiQ3
         7aXuOeLVf0gkHE3xB1mhg0C5kgOtMgXRO5thFqUtdxRfdh7XBG0eEediKwwf6ZQvvAsp
         QBCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=MqVoicWMl7wr9UzhN5wTWXEL7+RC5arPGgFRoOaq+3w=;
        b=apoURgClFcZwiPGrxpThakVmlYaGDtRMRgSHmQGWlebL0gs/smOLsxoVc8NaaXsORY
         vtcEmk0ZdT6NRuY4efDPrzClvB4VxPv+kCi8iXLgBPncUGL+r59I3651LEEHWPFIudx+
         PyGe6EmnPe+P1CiUbIvB7BYi7Ls2il7hgc/Vq7mViqk1lNEG7zO37OVum/mYAjAtPbaW
         vfRsb8t/VxPdZlg+pgHJmcJgf/ofiiGWzN6z8OXBqM/d6BPKl3+Im+SugW14ixxS1RzH
         lPhCSzxL0hSxpv22x5GcteBZGkpRgkVeSS5XalA7WjjpcLIGcdHHzgoRqgERoCYpJ2e/
         kzDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CfFSZB09;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MqVoicWMl7wr9UzhN5wTWXEL7+RC5arPGgFRoOaq+3w=;
        b=L7koHhCIB+MhPd4qLFBDFf03x5r2LevMT40ft85YI681JbO9e6m6Zsz00bCmnAhKxk
         kA+LXWqJxaWXB5QdmNJblJYt+LVuqq5KLpYCB3HSYd+SfYnsDM508QuO59mM+X+7zFOR
         o/pbLQZk0kyZHlmVuLh/jRw3TVUU0gwjG9NTldWph+6V/dnAFJft/TKQJBSRxNMOF6ix
         QA2Q84abA34ni7hjBsry5J1iDoZBhlQQRJoLiqDPWioMWj78tMqW5gLEh7cAIv1GDw59
         B3Q6ztt+y2T0BGNx/EyGCyP0Aq4lib4UCPLH7JYeKMeGtyeEGNGl03hnhbvwrYEtcSgw
         8lPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MqVoicWMl7wr9UzhN5wTWXEL7+RC5arPGgFRoOaq+3w=;
        b=hRUi/l+eC0XjlzPpbQJguV7oMi+pNnRgGMmhiBwXD27C1sCjE8biXLQuabJwGlyB/R
         iHhj+7Wf19Zes4sQ2l6hytt8+ZtECh87v1wIoSyp7426XOMVD3orHux/5TVYyb+GHZzC
         n+GQj7Jk/V3rm5r+5oIxKyMd4tFP9/7hWhPTX7qmODC2d9GLy2snBs9TGy6+9/V5lCR1
         5dlh/2ryazdtvdxLFnxBPABluBL/vSZxNiOLu98z1rSGci5t/SBtf2rlri0eQncqLjYc
         XUuBHJZ5nsjncuQAFduoteBMHrdfxx8mpFqMEYRspNUnmYN72hYTjeElCFmSDGYGUD0+
         2l7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXk6LhlYIoooUjJK/okapyHeC7Suuf3lCuN6MgmbCp8xB9zDdi1
	nWMfW2PeMBd/0CxBCw47e74=
X-Google-Smtp-Source: APXvYqyIMRoOuR9ZebE5tw0zaozTxSfhYtTvkh2+gSxLP0QrhtAgFZ8+tYk1WfoXANT1i2hAgz84XQ==
X-Received: by 2002:a17:906:4d09:: with SMTP id r9mr15167084eju.175.1579420619460;
        Sat, 18 Jan 2020 23:56:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e20e:: with SMTP id gf14ls8102406ejb.10.gmail; Sat,
 18 Jan 2020 23:56:58 -0800 (PST)
X-Received: by 2002:a17:906:b2d2:: with SMTP id cf18mr15592297ejb.93.1579420618904;
        Sat, 18 Jan 2020 23:56:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579420618; cv=none;
        d=google.com; s=arc-20160816;
        b=frR2hmfy+RyJvWcUOodOOK8KbJFvXnCzt0+q2Kt6Lw5P1vPXsS0CRT3PhnEKh84H2C
         J4318r3dSy3daHDJQCTy+ni4btrsbCurpryAygohHZnvg/zYNK6P1/iEsnGgIHCDbI6I
         6JbvU5bUHpdhpo4sch+mEjgEsCzMNwVZDdTpN+7vGGQ/ANi37yTvSisyd3hkSOL9SL74
         dFPMoBN3ppP+dK/7h/A4ilJZC2XEB4NYgp5aoX8EEv31C76dUFz/KIPfPhREseCX06M0
         rFfF2pzUXPGj6EIuI8mHOLhgBwydhBAqXvrr4Q/maOLeruYsyJ946YBg6mjP/dU5VbRR
         QbHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=0OmK4dzdsAJBaPdtiGqEe1kr3LSBbaoh2Uo35zKIPuY=;
        b=c5LO7eAhpifl63xMzSLDFOWnA32MkPh/Uhs7m5IL6f+dPJmsQE80TZtaWLyMmrOk7u
         2U64ONa8wVdHZRKgMJoyFYk+aPrNzFMqxGpdGnsfM4Q1Z5yMdRH98IekL5SCBtQnaxCt
         ttgTlR/wGU6P44Q7JdXUcYMIK/1YMkQ+ne3PdA2ecSaqx8wITidVMOE2vcxh2xpW0a7T
         4iQZT9AEbONod3aDgHNaydRzUTGoFBi5KFG1n05EaM1ZK/bSZvnLPdZHJA3lBPtG9VeG
         HvTBJMLNVhVwwcnb06UzfUYTNEQvXAgQFr4pKltzkF0hrWRCyvDE5KPmLqltP9Qr0NYx
         sNjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CfFSZB09;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id cc24si1407656edb.5.2020.01.18.23.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jan 2020 23:56:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id j42so26345204wrj.12
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jan 2020 23:56:58 -0800 (PST)
X-Received: by 2002:adf:e984:: with SMTP id h4mr12555980wrm.275.1579420618553;
        Sat, 18 Jan 2020 23:56:58 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q14sm1492828wmj.14.2020.01.18.23.56.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Jan 2020 23:56:58 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 19 Jan 2020 07:56:57 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1775543731.92.1579420618063.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 46 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_91_1327422407.1579420617508"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=CfFSZB09;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
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

------=_Part_91_1327422407.1579420617508
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
<cut>
commit 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
Author: Florian Hahn <flo@fhahn.com>

    [IPSCCP] Add assertion to surface cases where we zap returns with overdefined users.
</cut>

First few errors in logs of first_bad:
00:02:59 clang-10: error: unable to execute command: Aborted (core dumped)
00:02:59 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:03:00 make[1]: *** [kernel/signal.o] Error 254
00:04:33 make: *** [kernel] Error 2
00:31:57 clang-10: error: unable to execute command: Aborted (core dumped)
00:31:57 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:31:57 make[3]: *** [drivers/staging/rts5208/rtsx_scsi.o] Error 254
00:32:05 make[2]: *** [drivers/staging/rts5208] Error 2
00:33:06 make[1]: *** [drivers/staging] Error 2
00:33:06 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="c1a0a213378a458fbea1a5c77b315c7dce08fd05"

Results regressed to (for first_bad == 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18201

from (for last_good == 48b16e1005df863cf8b6364a6dc3e3e213d7d415)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18276
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/artifact/artifacts/build-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/artifact/artifacts/build-48b16e1005df863cf8b6364a6dc3e3e213d7d415/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/

Reproduce builds:
<cut>
mkdir investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
cd investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 48b16e1005df863cf8b6364a6dc3e3e213d7d415
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/46/consoleText

Full commit:
<cut>
commit 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
Author: Florian Hahn <flo@fhahn.com>
Date:   Thu Jul 25 09:37:09 2019 +0000

    [IPSCCP] Add assertion to surface cases where we zap returns with overdefined users.
    
    We should only zap returns in functions, where all live users have a
    replace-able value (are not overdefined). Unused return values should be
    undefined.
    
    This should make it easier to detect bugs like in PR42738.
    
    Alternatively we could bail out of zapping the function returns, but I
    think it would be better to address those divergences between function
    and call-site values where they are actually caused.
    
    Reviewers: davide, efriedma
    
    Reviewed By: davide, efriedma
    
    Differential Revision: https://reviews.llvm.org/D65222
    
    llvm-svn: 366998
---
 llvm/lib/Transforms/Scalar/SCCP.cpp | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/llvm/lib/Transforms/Scalar/SCCP.cpp b/llvm/lib/Transforms/Scalar/SCCP.cpp
index 4093e50ce89..6396115129e 100644
--- a/llvm/lib/Transforms/Scalar/SCCP.cpp
+++ b/llvm/lib/Transforms/Scalar/SCCP.cpp
@@ -1924,6 +1924,21 @@ static void findReturnsToZap(Function &F,
     return;
   }
 
+  assert(
+      all_of(F.users(),
+             [&Solver](User *U) {
+               if (isa<Instruction>(U) &&
+                   !Solver.isBlockExecutable(cast<Instruction>(U)->getParent()))
+                 return false;
+               if (U->getType()->isStructTy()) {
+                 return all_of(
+                     Solver.getStructLatticeValueFor(U),
+                     [](const LatticeVal &LV) { return !LV.isOverdefined(); });
+               }
+               return !Solver.getLatticeValueFor(U).isOverdefined();
+             }) &&
+      "We can only zap functions where all live users have a concrete value");
+
   for (BasicBlock &BB : F) {
     if (CallInst *CI = BB.getTerminatingMustTailCall()) {
       LLVM_DEBUG(dbgs() << "Can't zap return of the block due to present "
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1775543731.92.1579420618063.JavaMail.javamailuser%40localhost.

------=_Part_91_1327422407.1579420617508--
