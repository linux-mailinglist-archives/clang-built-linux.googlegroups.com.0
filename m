Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBH5KSHYQKGQENQV4W2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 15591141DF7
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 14:09:52 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id k18sf12840148wrw.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 05:09:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579439391; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0A+xntNFzyxv1wSGKPw74iFZ+K7WOvxnmxar9UDgVMJyPhPx8YGZz7N7yGbd5m4pN
         stCYKPAt0LoH+/lJ+kN4WkRUJPQD7boLblvnkYDPFWOKmcQzKlkjCkggWvgs0XAS+rUL
         pGlfm/E0Oysu3JMed6d6Wi9BGi1RPhieByNZ0X8Q5FlJbdF0padA3bsNbqNCpaYXRevA
         IM+haZKrBzL6lR4pGrzsSZC6Hait1rr6PRvjprNaMsNdWhAJkYXTGkC7lh8Ma5KLORE1
         QDj8XN6ESXTyagtHmAyAWhwP6b9TucQY8Ugsh54Y6sh0CKD9v+8yN2Rs/8hLhnWtAID5
         VWhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=YBkD1n5CSns6zlu7e1qxykyMsETcoSrohuev+1Nzo6I=;
        b=ng0lY5FEHzFSv7Fi1UV+VysIY+qqvvn9a0QmCBnQtm7/nzuVVAtnIWDXdBwyTMYtls
         KFdiG3yYoXaLJze0zHd4BEmjbkW9ASfY8vbD+1ViU7PNFpd4HOj2ePjgmAWZQBW5O01P
         uoHnQ2lzDOMe/qhoxwthySKEaBYlSRRuqVIMcwRA9Vs2JEoIev5Q1QVLjea+QKF6Xj+x
         rcs5xtj5k6WaZEDGeHYhZlx0bzlsxJXfludTQNZprclF11Fd3tc2I0VjyYETdLVW84cD
         wtkDSdXKFpeApYwTvRb0yyrzOJEoVy9E4jdd5Ejoe0HFTnyZL3U2B4GF40Y2gxNoqWIv
         DC3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xHEJMdFH;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YBkD1n5CSns6zlu7e1qxykyMsETcoSrohuev+1Nzo6I=;
        b=RbqBRmhbaqm5zUY3l+X/5Qs6iHqmhcRTaWFid2IFsfzLd+mcgr3yr9Jop+iH6fmzyS
         jV0XdhM0BoaZHit6FbQ9Thlrvm5gVFHeWA6G5k6WnzTb9MQ8C3w2bBJO9nfon46Dgt0w
         RSBt/Ii5ZnIYGGkpaDKGkLQd6OKjpRBxpwaBdPErpXIQPvl3aDrW5dDWpi1Mzm8DnvLB
         fQyV/ZnB8oNqXBIwNUWORaP8ZZutcBZXFD6XMJ8snSF/u5lUP2urNHez+B/E15okH6BS
         pt87ie0R11K+NIuC+3T8f/oh8RmlIIL4zfhYqJQ4t/+oo0esKxlaHXPhj+L3U/PlMfSU
         6ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YBkD1n5CSns6zlu7e1qxykyMsETcoSrohuev+1Nzo6I=;
        b=S5ZK9ol0xW8BM9FIG66BKkOqW4qvUOv//aOHGnyDFy2Vjrkytb0F185/p48NgQgAjA
         f8v3qJYG5DfubJRvg9Ym1I1iYLT/tSAlMwdDGrvfXZZRMIinRMVwKu/AWLfsV8NYfeHl
         /NO77QOWAi/f45rV6GoKPAjd7YSs1tS8CJzxUoCqEQlYJVy4+Q0aNI2FNnsAPi1SQ0QB
         yWrbGKvGa5ZkEWdULp2UgNeWFOlYFLzGcrP8MBjsbbBCOUfdUIWTljUPC5Zf6tB3zTnN
         idUYGKNdfzyplsWCPqk2IkLpqUk7/WmmYUjiDCp5Y8HqAn1WYqINwnB4y6ngqm+3w3Zk
         p7ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUc59D07vvELtqWUAWQZ+F3rmfsKm+5R4skb28TQcDTUNR+aUz0
	pupeMhir9q3+H9z3LMrnM50=
X-Google-Smtp-Source: APXvYqz49k0RXwWThsWmrrXAEPvlpKO45C/UXvuiyxSnz98B9pGPAWX1DwG00qIGodrreXmfoARXJA==
X-Received: by 2002:adf:a41c:: with SMTP id d28mr13965302wra.410.1579439391714;
        Sun, 19 Jan 2020 05:09:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4d0:: with SMTP id g16ls4257674wmk.2.canary-gmail; Sun,
 19 Jan 2020 05:09:51 -0800 (PST)
X-Received: by 2002:a7b:c216:: with SMTP id x22mr14770805wmi.51.1579439391162;
        Sun, 19 Jan 2020 05:09:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579439391; cv=none;
        d=google.com; s=arc-20160816;
        b=UQpC+z2My6Zp4/So7+lcX1ZPqxYY7oyv/ri4ZcfMNiVkK41Og3udy8NPIUT1cDliTV
         EgDsr96ILxBAizI7YbVwq6HlhFBit/4LUhsMPHJMUdHW+XP+1EBM3SLtR/9VJKlPvsFO
         G6QX4NORxoaJvgEfhgaIAReK9NkkKJf/HcilOnostyxnveuQN5gqGPmfZvroPPk4kW4J
         0UP+Iy+2LbjX/9n+vbKIhINye58PjfD+WVXFKsVobqW0lfA9nmfN44Q3wvSMHLR8jjDo
         jsRj5zBNAGHP0jA7zDNxvkkEP3n1V8Gqiuj2FN9FZKHqbvzlwVMNIvcl6D6nmh2GSHYp
         q9vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=8HuPhjba2C+V/Ww6thSzdbcWsC3RlHs9wgz7Jlw1psw=;
        b=agsUa+4plIakEWzkxUBMjUtmFD3s5bI56fzxcApB4ftCYiM5B+qUT7OAg2O9Dsrf5U
         /fToJiQX2YChTfREHLwlxMmtpWua0Gml5v6STfMizwtZF5WOqSKGSAYPG5w1QINsynCX
         xeJjmLllVQewasCS0lGM8USK9oPnzM1ULnv2Q1R0pr4WwR2OyVdA/ClL4HUfuJz3+edf
         PjC2nK7MsbPPF1Ib0lAAkaoQKSiClYYoO3Sc4OPo96wvcY9nD0QW6f46PtfzI3n/QGXZ
         uKUsiEH3BgzGXIajdKT1kTwEyMheuM0lPnTedmhe0GlUN/ZnvDNKkP9w0rOys6rFv8pK
         U3/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xHEJMdFH;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m12si1471781wrq.1.2020.01.19.05.09.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 05:09:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id y11so26794535wrt.6
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 05:09:51 -0800 (PST)
X-Received: by 2002:adf:ff84:: with SMTP id j4mr13567301wrr.27.1579439390808;
        Sun, 19 Jan 2020 05:09:50 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id g25sm8245051wmh.3.2020.01.19.05.09.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Jan 2020 05:09:50 -0800 (PST)
From: ci_notify@linaro.org
Date: Sun, 19 Jan 2020 13:09:48 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <59847444.96.1579439390135.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig - Build # 80 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_95_1763816096.1579439388947"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xHEJMdFH;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441
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

------=_Part_95_1763816096.1579439388947
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
<cut>
commit 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
Author: Florian Hahn <flo@fhahn.com>

    [IPSCCP] Add assertion to surface cases where we zap returns with overdefined users.
</cut>

First few errors in logs of first_bad:
00:04:18 clang-10: error: unable to execute command: Aborted (core dumped)
00:04:18 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:04:19 make[1]: *** [kernel/signal.o] Error 254
00:09:05 make: *** [kernel] Error 2
00:28:09 clang-10: error: unable to execute command: Aborted (core dumped)
00:28:09 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:28:09 make[3]: *** [drivers/staging/rts5208/rtsx_scsi.o] Error 254
00:28:34 make[2]: *** [drivers/staging/rts5208] Error 2
00:30:35 make[1]: *** [drivers/staging] Error 2
00:32:45 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="c1a0a213378a458fbea1a5c77b315c7dce08fd05"

Results regressed to (for first_bad == 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19676

from (for last_good == 48b16e1005df863cf8b6364a6dc3e3e213d7d415)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/artifact/artifacts/build-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/artifact/artifacts/build-48b16e1005df863cf8b6364a6dc3e3e213d7d415/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/

Reproduce builds:
<cut>
mkdir investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
cd investigate-llvm-5354c83ece00690b4dbfa47925f8f5a8f33f1d9e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/80/consoleText

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
index 4093e50ce899..6396115129e2 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/59847444.96.1579439390135.JavaMail.javamailuser%40localhost.

------=_Part_95_1763816096.1579439388947--
