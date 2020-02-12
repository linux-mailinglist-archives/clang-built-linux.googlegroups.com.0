Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBUGDR7ZAKGQEKOK3DYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 0669A15A7E2
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 12:30:25 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id b8sf397396wmj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 03:30:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581507024; cv=pass;
        d=google.com; s=arc-20160816;
        b=TDPZ2aTTRHY7Xcr1abInfTbwtETZK8oItTlewy0z6E2K9jJTbIrhrAckAxBvOdLtVv
         LpHdgzGLLLm2FteYmA184Ysc5OFwtNYPLRoJo5ahE7eIOIx8KV99PCgDlwC1x+XwF2b1
         FUZAdIyEFecjqUAgOzuB6eTYCmFZbRPxDwFEudCpweGNpjewi0s2cr2GU9OB98sIgy4G
         eTBbJVIXluLmX3HDlw/xfFCXkS28e3WJeg2xXizf/E45vPIae10VCjxLOy8D2sLMEPWl
         a7mVr9XgzDI/czNj0k+L5MXrFc4BcUaJ4WxEjci/L8PWyPbGr/dYuzKYCMcWrfEt7KKD
         zoUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=SujypKfFBeUBhjVyIAHPK/DwS2YPRVf0fZn+erR77Go=;
        b=f7PO01jpyq/gaNX3dOGBKnhg4q+ipkFn70862RdtgKSOdTfyNZ/OOnfPtbSxxalu/v
         1ffgArPA9HvPRTgrqSLnQtlFsBr+azapBP+DMDopuNY5jIgG15c7I0Ir3CGIPVL30rQw
         Mfgd7Dj7As1TT+iYST+4p0tVTvf3b4h5MiMeNTeLm603q3O4nLCEmfTd/OBvrfHhwL9H
         8n815vzhIcmdIulO57pPDJ5XGSmyrdwx9SqiS8pbi4pp1+1yD434uqSrgMkCm3IJxda2
         4/brkzyY87WhAaK+VuK+LQ/f8nBEhAMvVbMWHGKmABZkFR1i1M7WzTNZ+070nQ5Lh64e
         LRvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Ub+PnEmX;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SujypKfFBeUBhjVyIAHPK/DwS2YPRVf0fZn+erR77Go=;
        b=kFkCqQMkyhrzPQUTGwHDHYSl1ZMWmtiXze8dHJeybmoR3wwGhk+U7q4Yf37OTEkLGh
         NzlCeGIxHF9i06Blknqs+eAfVddNnWqmAUpc3pLUFh2iwWtUkdamobWI3RQ4KfCMS44u
         2vZo7saaHVMkM47i983CKIC9pUP/dDEPJwYbL1LUtTl/Wu5oSoB/mvNmrbi+AcuKqhp+
         lHp55cjIEcwb9afln7y0jS1VvOk+XNL9iXX4vBRq1VWYdFwIWV4elxJDuJWu7Tu6m6DQ
         nRxDLyuCFiawE4k7wrzC+kO0l5g8wzkxsbiXjMTC+wbByhO+M+nR1ozwdgc9isWCAW6X
         2i3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SujypKfFBeUBhjVyIAHPK/DwS2YPRVf0fZn+erR77Go=;
        b=TmakPZ29n5SoiY2yweTHeD5BQ5RJ5bUBH4WaiEgVUKJS9rdLamI0gjLfFAsi5yXHly
         wR8CmapdCo7p4X/UkDJcirJGQFugkw+71j01yNCs8e8KkLa6xipP5USN9V89mEposV+y
         +Nmpg02z17gDi3iNLRNuK2hEwdro1Ou0mY6b1hOQldY3GIDKYMAtog30lk5Iv15NLYe3
         sF4jt+c+a/ipBtloXUU9pIH2ED8ylOP9ky2OlRmddBRaZRi3PAPdP6TzcE55sfkwFrZn
         gpY8sxoetJp5deLhGp6HbAfifXELcn3UgkIvL/V3xMaeoolL3TGPeVA72Aao3vPfKd6H
         3pBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUuJByhUT6UIz2U47wJQbxTPU3xxyfljE0oJZaGOhgvPhAth9p
	4Di8K34qEPr10jLXUekdtqc=
X-Google-Smtp-Source: APXvYqyGbh3I5y3/VGFSuBsllSD/QtDkXUHWIwyrvmmxAKByoErge5K8kN3yqfyXfZT4Qc+Zl8o8jQ==
X-Received: by 2002:a5d:62c8:: with SMTP id o8mr14609383wrv.316.1581507024548;
        Wed, 12 Feb 2020 03:30:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fdc5:: with SMTP id i5ls10536682wrs.9.gmail; Wed, 12 Feb
 2020 03:30:23 -0800 (PST)
X-Received: by 2002:adf:fe50:: with SMTP id m16mr15597126wrs.217.1581507023902;
        Wed, 12 Feb 2020 03:30:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581507023; cv=none;
        d=google.com; s=arc-20160816;
        b=nrTeP9Y96UCN3jiwUMItVxD0QiImun8E7/jYXTwk3aqdG6l2PVzaCNkAGA0rfK41bB
         7XbCMoZ7DmD2DK5TEwRdgrjdWOovgqQdU84V2KVuWVxgMIOzr3xlSB96ieNPqW1VZMJK
         8ONK1DYptdXjd4tFSUYDv5ckXvrmcMZvP4XdjkHiN0ax0sX1ryL9cqknOEHk1dW5F6Ka
         VBwqrng3SRudQJ4Mmzpe5EMZUwBgqMDez54h2NyGNdpSEifpxEtZuYDa8bAoU50sQlrV
         zxrNPOmuXd+H1hr+6OHJwv6NKRwXvLhweIcCCF8ANeb72Fdfydf0QLKeeEOhunEiNnJN
         Zv1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=DfLscn3cawY9k5eY9TEVlHgf/PTsDUlaE7NADyANajs=;
        b=AoKylbY84WbGRK3wRpF91XI6NVmtH3y4vFslO0ZFv4Uu6ilppM6DZPs5KArlJMYguH
         nUR6kVG3kbgkYewn3077IGdL3CpPP8vTwMjLJ+BwOQNetQGnFs/A0HcVOhCz65AkyaFW
         /MwtbzFiFzpPLQVC9Lc3mcQCP+UdETLXj6VHmeaZ+sYbQ3rsSzZj56riWs2cghGgQRay
         WzcgEdSVXH674cEn4ehQdWY0zguTaUWq4qfa7EC1c8HPrc/Dcj912pWmhwEoNv3yk3qL
         VubZEdxcJ315moRI5egtqmaDMn82FcFsP/WgtCTQZeoHIsOznz5yJBPaJCtUA2nn47Ie
         mk3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Ub+PnEmX;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id d191si232272wmd.2.2020.02.12.03.30.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 03:30:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id c9so1825363wrw.8
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 03:30:23 -0800 (PST)
X-Received: by 2002:adf:fe4d:: with SMTP id m13mr15593391wrs.179.1581507022680;
        Wed, 12 Feb 2020 03:30:22 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q124sm10450482wme.2.2020.02.12.03.30.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 12 Feb 2020 03:30:21 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 12 Feb 2020 11:30:20 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1640563424.1323.1581507021142.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 67 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1322_321215567.1581507020344"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Ub+PnEmX;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436
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

------=_Part_1322_321215567.1581507020344
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-defconfig
 - tcwg_kernel/llvm-master-arm-stable-defconfig

Culprit:
<cut>
commit aadb635e04854220064b77cc10d0e6772f5492fd
Author: Florian Hahn <flo@fhahn.com>

    [SCCP] Remove forcedconstant, go to overdefined instead
</cut>

First few errors in logs of first_bad:
00:15:52 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:15:53 make[2]: *** [net/mac80211/sta_info.o] Error 134
00:20:54 make[1]: *** [net/mac80211] Error 2
00:28:20 make: *** [net] Error 2
00:31:08 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:31:09 make[5]: *** [drivers/net/ethernet/netronome/nfp/bpf/cmsg.o] Error 134
00:31:33 make[4]: *** [drivers/net/ethernet/netronome/nfp] Error 2
00:31:33 make[3]: *** [drivers/net/ethernet/netronome] Error 2
00:32:47 make[2]: *** [drivers/net/ethernet] Error 2
00:32:47 make[1]: *** [drivers/net] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[llvm_branch]="4687822b9e8e25cac8e345d4a6b99f4e44324f76"

Results regressed to (for first_bad == aadb635e04854220064b77cc10d0e6772f5492fd)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20272

from (for last_good == 6b0ed508fa3947ec1f3a1bd87a08b598e98423e3)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27723
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/artifact/artifacts/build-aadb635e04854220064b77cc10d0e6772f5492fd/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/artifact/artifacts/build-6b0ed508fa3947ec1f3a1bd87a08b598e98423e3/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/

Reproduce builds:
<cut>
mkdir investigate-llvm-aadb635e04854220064b77cc10d0e6772f5492fd
cd investigate-llvm-aadb635e04854220064b77cc10d0e6772f5492fd

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach aadb635e04854220064b77cc10d0e6772f5492fd
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 6b0ed508fa3947ec1f3a1bd87a08b598e98423e3
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/67/consoleText

Full commit:
<cut>
commit aadb635e04854220064b77cc10d0e6772f5492fd
Author: Florian Hahn <flo@fhahn.com>
Date:   Tue Feb 11 15:06:59 2020 +0000

    [SCCP] Remove forcedconstant, go to overdefined instead
    
    This patch removes forcedconstant to simplify things for the
    move to ValueLattice, which includes constant ranges, but no
    forced constants.
    
    This patch removes forcedconstant and changes ResolvedUndefsIn
    to mark instructions with unknown operands as overdefined. This
    means we do not do simplifications based on undef directly in SCCP
    any longer, but this seems to hardly come up in practice (see stats
    below), presumably because InstCombine & others take care
    of most of the relevant folds already.
    
    It is still beneficial to keep ResolvedUndefIn, as it allows us delaying
    going to overdefined until we propagated all known information.
    
    I also built MultiSource, SPEC2000 and SPEC2006 and compared
    sccp.IPNumInstRemoved and sccp.NumInstRemoved. It looks like the impact
    is quite low:
    
    Tests: 244
    Same hash: 238 (filtered out)
    Remaining: 6
    Metric: sccp.IPNumInstRemoved
    
    Program                                        base     patch    diff
     test-suite...arks/VersaBench/dbms/dbms.test     4.00    3.00  -25.0%
     test-suite...TimberWolfMC/timberwolfmc.test    38.00   34.00  -10.5%
     test-suite...006/453.povray/453.povray.test   158.00  155.00  -1.9%
     test-suite.../CINT2000/176.gcc/176.gcc.test   668.00  668.00   0.0%
     test-suite.../CINT2006/403.gcc/403.gcc.test   1209.00 1209.00  0.0%
     test-suite...arks/mafft/pairlocalalign.test    76.00   76.00   0.0%
    
    Tests: 244
    Same hash: 238 (filtered out)
    Remaining: 6
    Metric: sccp.NumInstRemoved
    
    Program                                        base    patch     diff
     test-suite...arks/mafft/pairlocalalign.test   185.00  175.00  -5.4%
     test-suite.../CINT2006/403.gcc/403.gcc.test   2059.00 2056.00 -0.1%
     test-suite.../CINT2000/176.gcc/176.gcc.test   2358.00 2357.00 -0.0%
     test-suite...006/453.povray/453.povray.test   317.00  317.00   0.0%
     test-suite...TimberWolfMC/timberwolfmc.test    12.00   12.00   0.0%
    
    Reviewers: davide, efriedma, mssimpso
    
    Reviewed By: efriedma
    
    Differential Revision: https://reviews.llvm.org/D61314
---
 llvm/lib/Transforms/Scalar/SCCP.cpp                | 248 ++-------------------
 llvm/test/Transforms/IPConstantProp/PR16052.ll     |   9 +-
 llvm/test/Transforms/IPConstantProp/PR26044.ll     |   6 +-
 llvm/test/Transforms/SCCP/2006-12-19-UndefBug.ll   |  12 +-
 llvm/test/Transforms/SCCP/apint-bigint2.ll         |  24 +-
 llvm/test/Transforms/SCCP/apint-ipsccp3.ll         |  40 +++-
 llvm/test/Transforms/SCCP/apint-select.ll          |  30 ++-
 llvm/test/Transforms/SCCP/ip-constant-ranges.ll    |  10 +-
 llvm/test/Transforms/SCCP/ipsccp-basic.ll          |  34 ++-
 llvm/test/Transforms/SCCP/logical-nuke.ll          |  28 ++-
 llvm/test/Transforms/SCCP/switch-multiple-undef.ll |  26 ++-
 llvm/test/Transforms/SCCP/ub-shift.ll              |  53 +++--
 llvm/test/Transforms/SCCP/undef-resolve.ll         | 156 ++++++++++---
 13 files changed, 330 insertions(+), 346 deletions(-)

diff --git a/llvm/lib/Transforms/Scalar/SCCP.cpp b/llvm/lib/Transforms/Scalar/SCCP.cpp
index 34f18ec7c12..3e6697e91b9 100644
--- a/llvm/lib/Transforms/Scalar/SCCP.cpp
+++ b/llvm/lib/Transforms/Scalar/SCCP.cpp
@@ -85,19 +85,13 @@ class LatticeVal {
     /// constant - This LLVM Value has a specific constant value.
     constant,
 
-    /// forcedconstant - This LLVM Value was thought to be undef until
-    /// ResolvedUndefsIn.  This is treated just like 'constant', but if merged
-    /// with another (different) constant, it goes to overdefined, instead of
-    /// asserting.
-    forcedconstant,
-
     /// overdefined - This instruction is not known to be constant, and we know
     /// it has a value.
     overdefined
   };
 
   /// Val: This stores the current lattice value along with the Constant* for
-  /// the constant if this is a 'constant' or 'forcedconstant' value.
+  /// the constant if this is a 'constant' value.
   PointerIntPair<Constant *, 2, LatticeValueTy> Val;
 
   LatticeValueTy getLatticeValue() const {
@@ -109,9 +103,7 @@ public:
 
   bool isUnknown() const { return getLatticeValue() == unknown; }
 
-  bool isConstant() const {
-    return getLatticeValue() == constant || getLatticeValue() == forcedconstant;
-  }
+  bool isConstant() const { return getLatticeValue() == constant; }
 
   bool isOverdefined() const { return getLatticeValue() == overdefined; }
 
@@ -131,26 +123,15 @@ public:
 
   /// markConstant - Return true if this is a change in status.
   bool markConstant(Constant *V) {
-    if (getLatticeValue() == constant) { // Constant but not forcedconstant.
+    if (getLatticeValue() == constant) { // Constant
       assert(getConstant() == V && "Marking constant with different value");
       return false;
     }
 
-    if (isUnknown()) {
-      Val.setInt(constant);
-      assert(V && "Marking constant with NULL");
-      Val.setPointer(V);
-    } else {
-      assert(getLatticeValue() == forcedconstant &&
-             "Cannot move from overdefined to constant!");
-      // Stay at forcedconstant if the constant is the same.
-      if (V == getConstant()) return false;
-
-      // Otherwise, we go to overdefined.  Assumptions made based on the
-      // forced value are possibly wrong.  Assuming this is another constant
-      // could expose a contradiction.
-      Val.setInt(overdefined);
-    }
+    assert(isUnknown());
+    Val.setInt(constant);
+    assert(V && "Marking constant with NULL");
+    Val.setPointer(V);
     return true;
   }
 
@@ -170,12 +151,6 @@ public:
     return nullptr;
   }
 
-  void markForcedConstant(Constant *V) {
-    assert(isUnknown() && "Can't force a defined value!");
-    Val.setInt(forcedconstant);
-    Val.setPointer(V);
-  }
-
   ValueLatticeElement toValueLattice() const {
     if (isOverdefined())
       return ValueLatticeElement::getOverdefined();
@@ -421,7 +396,7 @@ public:
   }
 
 private:
-  // pushToWorkList - Helper for markConstant/markForcedConstant/markOverdefined
+  // pushToWorkList - Helper for markConstant/markOverdefined
   void pushToWorkList(LatticeVal &IV, Value *V) {
     if (IV.isOverdefined())
       return OverdefinedInstWorkList.push_back(V);
@@ -443,14 +418,6 @@ private:
     return markConstant(ValueState[V], V, C);
   }
 
-  void markForcedConstant(Value *V, Constant *C) {
-    assert(!V->getType()->isStructTy() && "structs should use mergeInValue");
-    LatticeVal &IV = ValueState[V];
-    IV.markForcedConstant(C);
-    LLVM_DEBUG(dbgs() << "markForcedConstant: " << *C << ": " << *V << '\n');
-    pushToWorkList(IV, V);
-  }
-
   // markOverdefined - Make a value be marked as "overdefined". If the
   // value is not already overdefined, add it to the overdefined instruction
   // work list so that the users of the instruction are updated later.
@@ -1032,8 +999,10 @@ void SCCPSolver::visitBinaryOperator(Instruction &I) {
   }
 
   // If something is undef, wait for it to resolve.
-  if (!V1State.isOverdefined() && !V2State.isOverdefined())
+  if (!V1State.isOverdefined() && !V2State.isOverdefined()) {
+
     return;
+  }
 
   // Otherwise, one of our operands is overdefined.  Try to produce something
   // better than overdefined with some tricks.
@@ -1449,10 +1418,8 @@ void SCCPSolver::Solve() {
 /// constraints on the condition of the branch, as that would impact other users
 /// of the value.
 ///
-/// This scan also checks for values that use undefs, whose results are actually
-/// defined.  For example, 'zext i8 undef to i32' should produce all zeros
-/// conservatively, as "(zext i8 X -> i32) & 0xFF00" must always return zero,
-/// even if X isn't defined.
+/// This scan also checks for values that use undefs. It conservatively marks
+/// them as overdefined.
 bool SCCPSolver::ResolvedUndefsIn(Function &F) {
   for (BasicBlock &BB : F) {
     if (!BBExecutable.count(&BB))
@@ -1475,7 +1442,6 @@ bool SCCPSolver::ResolvedUndefsIn(Function &F) {
         // tracked as precisely as their operands.
         if (isa<ExtractValueInst>(I) || isa<InsertValueInst>(I))
           continue;
-
         // Send the results of everything else to overdefined.  We could be
         // more precise than this but it isn't worth bothering.
         for (unsigned i = 0, e = STy->getNumElements(); i != e; ++i) {
@@ -1495,195 +1461,13 @@ bool SCCPSolver::ResolvedUndefsIn(Function &F) {
       // 2. It could be constant-foldable.
       // Because of the way we solve return values, tracked calls must
       // never be marked overdefined in ResolvedUndefsIn.
-      if (CallSite CS = CallSite(&I)) {
+      if (CallSite CS = CallSite(&I))
         if (Function *F = CS.getCalledFunction())
           if (TrackedRetVals.count(F))
             continue;
 
-        // If the call is constant-foldable, we mark it overdefined because
-        // we do not know what return values are valid.
-        markOverdefined(&I);
-        return true;
-      }
-
-      // extractvalue is safe; check here because the argument is a struct.
-      if (isa<ExtractValueInst>(I))
-        continue;
-
-      // Compute the operand LatticeVals, for convenience below.
-      // Anything taking a struct is conservatively assumed to require
-      // overdefined markings.
-      if (I.getOperand(0)->getType()->isStructTy()) {
-        markOverdefined(&I);
-        return true;
-      }
-      LatticeVal Op0LV = getValueState(I.getOperand(0));
-      LatticeVal Op1LV;
-      if (I.getNumOperands() == 2) {
-        if (I.getOperand(1)->getType()->isStructTy()) {
-          markOverdefined(&I);
-          return true;
-        }
-
-        Op1LV = getValueState(I.getOperand(1));
-      }
-      // If this is an instructions whose result is defined even if the input is
-      // not fully defined, propagate the information.
-      Type *ITy = I.getType();
-      switch (I.getOpcode()) {
-      case Instruction::Add:
-      case Instruction::Sub:
-      case Instruction::Trunc:
-      case Instruction::FPTrunc:
-      case Instruction::BitCast:
-        break; // Any undef -> undef
-      case Instruction::FSub:
-      case Instruction::FAdd:
-      case Instruction::FMul:
-      case Instruction::FDiv:
-      case Instruction::FRem:
-        // Floating-point binary operation: be conservative.
-        if (Op0LV.isUnknown() && Op1LV.isUnknown())
-          markForcedConstant(&I, Constant::getNullValue(ITy));
-        else
-          markOverdefined(&I);
-        return true;
-      case Instruction::FNeg:
-        break; // fneg undef -> undef
-      case Instruction::ZExt:
-      case Instruction::SExt:
-      case Instruction::FPToUI:
-      case Instruction::FPToSI:
-      case Instruction::FPExt:
-      case Instruction::PtrToInt:
-      case Instruction::IntToPtr:
-      case Instruction::SIToFP:
-      case Instruction::UIToFP:
-        // undef -> 0; some outputs are impossible
-        markForcedConstant(&I, Constant::getNullValue(ITy));
-        return true;
-      case Instruction::Mul:
-      case Instruction::And:
-        // Both operands undef -> undef
-        if (Op0LV.isUnknown() && Op1LV.isUnknown())
-          break;
-        // undef * X -> 0.   X could be zero.
-        // undef & X -> 0.   X could be zero.
-        markForcedConstant(&I, Constant::getNullValue(ITy));
-        return true;
-      case Instruction::Or:
-        // Both operands undef -> undef
-        if (Op0LV.isUnknown() && Op1LV.isUnknown())
-          break;
-        // undef | X -> -1.   X could be -1.
-        markForcedConstant(&I, Constant::getAllOnesValue(ITy));
-        return true;
-      case Instruction::Xor:
-        // undef ^ undef -> 0; strictly speaking, this is not strictly
-        // necessary, but we try to be nice to people who expect this
-        // behavior in simple cases
-        if (Op0LV.isUnknown() && Op1LV.isUnknown()) {
-          markForcedConstant(&I, Constant::getNullValue(ITy));
-          return true;
-        }
-        // undef ^ X -> undef
-        break;
-      case Instruction::SDiv:
-      case Instruction::UDiv:
-      case Instruction::SRem:
-      case Instruction::URem:
-        // X / undef -> undef.  No change.
-        // X % undef -> undef.  No change.
-        if (Op1LV.isUnknown()) break;
-
-        // X / 0 -> undef.  No change.
-        // X % 0 -> undef.  No change.
-        if (Op1LV.isConstant() && Op1LV.getConstant()->isZeroValue())
-          break;
-
-        // undef / X -> 0.   X could be maxint.
-        // undef % X -> 0.   X could be 1.
-        markForcedConstant(&I, Constant::getNullValue(ITy));
-        return true;
-      case Instruction::AShr:
-        // X >>a undef -> undef.
-        if (Op1LV.isUnknown()) break;
-
-        // Shifting by the bitwidth or more is undefined.
-        if (Op1LV.isConstant()) {
-          if (auto *ShiftAmt = Op1LV.getConstantInt())
-            if (ShiftAmt->getLimitedValue() >=
-                ShiftAmt->getType()->getScalarSizeInBits())
-              break;
-        }
-
-        // undef >>a X -> 0
-        markForcedConstant(&I, Constant::getNullValue(ITy));
-        return true;
-      case Instruction::LShr:
-      case Instruction::Shl:
-        // X << undef -> undef.
-        // X >> undef -> undef.
-        if (Op1LV.isUnknown()) break;
-
-        // Shifting by the bitwidth or more is undefined.
-        if (Op1LV.isConstant()) {
-          if (auto *ShiftAmt = Op1LV.getConstantInt())
-            if (ShiftAmt->getLimitedValue() >=
-                ShiftAmt->getType()->getScalarSizeInBits())
-              break;
-        }
-
-        // undef << X -> 0
-        // undef >> X -> 0
-        markForcedConstant(&I, Constant::getNullValue(ITy));
-        return true;
-      case Instruction::Select:
-        Op1LV = getValueState(I.getOperand(1));
-        // undef ? X : Y  -> X or Y.  There could be commonality between X/Y.
-        if (Op0LV.isUnknown()) {
-          if (!Op1LV.isConstant())  // Pick the constant one if there is any.
-            Op1LV = getValueState(I.getOperand(2));
-        } else if (Op1LV.isUnknown()) {
-          // c ? undef : undef -> undef.  No change.
-          Op1LV = getValueState(I.getOperand(2));
-          if (Op1LV.isUnknown())
-            break;
-          // Otherwise, c ? undef : x -> x.
-        } else {
-          // Leave Op1LV as Operand(1)'s LatticeValue.
-        }
-
-        if (Op1LV.isConstant())
-          markForcedConstant(&I, Op1LV.getConstant());
-        else
-          markOverdefined(&I);
-        return true;
-      case Instruction::Load:
-        // A load here means one of two things: a load of undef from a global,
-        // a load from an unknown pointer.  Either way, having it return undef
-        // is okay.
-        break;
-      case Instruction::ICmp:
-        // X == undef -> undef.  Other comparisons get more complicated.
-        Op0LV = getValueState(I.getOperand(0));
-        Op1LV = getValueState(I.getOperand(1));
-
-        if ((Op0LV.isUnknown() || Op1LV.isUnknown()) &&
-            cast<ICmpInst>(&I)->isEquality())
-          break;
-        markOverdefined(&I);
-        return true;
-      case Instruction::Call:
-      case Instruction::Invoke:
-      case Instruction::CallBr:
-        llvm_unreachable("Call-like instructions should have be handled early");
-      default:
-        // If we don't know what should happen here, conservatively mark it
-        // overdefined.
-        markOverdefined(&I);
-        return true;
-      }
+      markOverdefined(&I);
+      return true;
     }
 
     // Check to see if we have a branch or switch on an undefined value.  If so
diff --git a/llvm/test/Transforms/IPConstantProp/PR16052.ll b/llvm/test/Transforms/IPConstantProp/PR16052.ll
index 451693f1c90..a16067fe278 100644
--- a/llvm/test/Transforms/IPConstantProp/PR16052.ll
+++ b/llvm/test/Transforms/IPConstantProp/PR16052.ll
@@ -1,4 +1,4 @@
-; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --function-signature --scrub-attributes 
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --function-signature --scrub-attributes
 ; RUN: opt < %s -S -ipsccp | FileCheck %s
 
 target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
@@ -7,7 +7,9 @@ target triple = "x86_64-unknown-linux-gnu"
 define i64 @fn2() {
 ; CHECK-LABEL: define {{[^@]+}}@fn2()
 ; CHECK-NEXT:  entry:
-; CHECK-NEXT:    [[CALL2:%.*]] = call i64 @fn1(i64 undef)
+; CHECK-NEXT:    [[CONV:%.*]] = sext i32 undef to i64
+; CHECK-NEXT:    [[DIV:%.*]] = sdiv i64 8, [[CONV]]
+; CHECK-NEXT:    [[CALL2:%.*]] = call i64 @fn1(i64 [[DIV]])
 ; CHECK-NEXT:    ret i64 [[CALL2]]
 ;
 entry:
@@ -21,7 +23,8 @@ define internal i64 @fn1(i64 %p1) {
 ; CHECK-LABEL: define {{[^@]+}}@fn1
 ; CHECK-SAME: (i64 [[P1:%.*]])
 ; CHECK-NEXT:  entry:
-; CHECK-NEXT:    [[COND:%.*]] = select i1 undef, i64 undef, i64 undef
+; CHECK-NEXT:    [[TOBOOL:%.*]] = icmp ne i64 [[P1]], 0
+; CHECK-NEXT:    [[COND:%.*]] = select i1 [[TOBOOL]], i64 [[P1]], i64 [[P1]]
 ; CHECK-NEXT:    ret i64 [[COND]]
 ;
 entry:
diff --git a/llvm/test/Transforms/IPConstantProp/PR26044.ll b/llvm/test/Transforms/IPConstantProp/PR26044.ll
index eeb5b87e0a2..8b4f2590b9f 100644
--- a/llvm/test/Transforms/IPConstantProp/PR26044.ll
+++ b/llvm/test/Transforms/IPConstantProp/PR26044.ll
@@ -11,7 +11,8 @@ define void @fn2(i32* %P) {
 ; CHECK:       for.cond1:
 ; CHECK-NEXT:    br i1 false, label [[IF_END]], label [[IF_END]]
 ; CHECK:       if.end:
-; CHECK-NEXT:    [[CALL:%.*]] = call i32 @fn1(i32 undef)
+; CHECK-NEXT:    [[TMP0:%.*]] = load i32, i32* null, align 4
+; CHECK-NEXT:    [[CALL:%.*]] = call i32 @fn1(i32 [[TMP0]])
 ; CHECK-NEXT:    store i32 [[CALL]], i32* [[P]]
 ; CHECK-NEXT:    br label [[FOR_COND1:%.*]]
 ;
@@ -33,7 +34,8 @@ define internal i32 @fn1(i32 %p1) {
 ; CHECK-LABEL: define {{[^@]+}}@fn1
 ; CHECK-SAME: (i32 [[P1:%.*]])
 ; CHECK-NEXT:  entry:
-; CHECK-NEXT:    [[COND:%.*]] = select i1 undef, i32 undef, i32 undef
+; CHECK-NEXT:    [[TOBOOL:%.*]] = icmp ne i32 [[P1]], 0
+; CHECK-NEXT:    [[COND:%.*]] = select i1 [[TOBOOL]], i32 [[P1]], i32 [[P1]]
 ; CHECK-NEXT:    ret i32 [[COND]]
 ;
 entry:
diff --git a/llvm/test/Transforms/SCCP/2006-12-19-UndefBug.ll b/llvm/test/Transforms/SCCP/2006-12-19-UndefBug.ll
index ede1a32c5f7..4bd096e0a65 100644
--- a/llvm/test/Transforms/SCCP/2006-12-19-UndefBug.ll
+++ b/llvm/test/Transforms/SCCP/2006-12-19-UndefBug.ll
@@ -1,8 +1,12 @@
-; RUN: opt < %s -sccp -S | \
-; RUN:   grep "ret i1 false"
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
+; RUN: opt < %s -sccp -S | FileCheck %s
 
 define i1 @foo() {
-	%X = and i1 false, undef		; <i1> [#uses=1]
-	ret i1 %X
+; CHECK-LABEL: @foo(
+; CHECK-NEXT:    [[X:%.*]] = and i1 false, undef
+; CHECK-NEXT:    ret i1 [[X]]
+;
+  %X = and i1 false, undef		; <i1> [#uses=1]
+  ret i1 %X
 }
 
diff --git a/llvm/test/Transforms/SCCP/apint-bigint2.ll b/llvm/test/Transforms/SCCP/apint-bigint2.ll
index 5277d9fa5c6..7d75240a0d8 100644
--- a/llvm/test/Transforms/SCCP/apint-bigint2.ll
+++ b/llvm/test/Transforms/SCCP/apint-bigint2.ll
@@ -18,7 +18,13 @@ define i101 @array() {
 }
 
 ; CHECK-LABEL: @large_aggregate
-; CHECK-NEXT: ret i101 undef
+; CHECK-NEXT:    %B = load i101, i101* undef
+; CHECK-NEXT:    %D = and i101 %B, 1
+; CHECK-NEXT:    %DD = or i101 %D, 1
+; CHECK-NEXT:    %G = getelementptr i101, i101* getelementptr inbounds ([6 x i101], [6 x i101]* @Y, i32 0, i32 5), i101 %DD
+; CHECK-NEXT:    %L3 = load i101, i101* %G
+; CHECK-NEXT:    ret i101 %L3
+;
 define i101 @large_aggregate() {
   %B = load i101, i101* undef
   %D = and i101 %B, 1
@@ -29,6 +35,22 @@ define i101 @large_aggregate() {
   ret i101 %L3
 }
 
+; CHECK-LABEL: define i101 @large_aggregate_2() {
+; CHECK-NEXT:     %D = and i101 undef, 1
+; CHECK-NEXT:     %DD = or i101 %D, 1
+; CHECK-NEXT:     %G = getelementptr i101, i101* getelementptr inbounds ([6 x i101], [6 x i101]* @Y, i32 0, i32 5), i101 %DD
+; CHECK-NEXT:     %L3 = load i101, i101* %G
+; CHECK-NEXT:     ret i101 %L3
+;
+define i101 @large_aggregate_2() {
+  %D = and i101 undef, 1
+  %DD = or i101 %D, 1
+  %F = getelementptr [6 x i101], [6 x i101]* @Y, i32 0, i32 5
+  %G = getelementptr i101, i101* %F, i101 %DD
+  %L3 = load i101, i101* %G
+  ret i101 %L3
+}
+
 ; CHECK-LABEL: @index_too_large
 ; CHECK-NEXT: store i101* getelementptr (i101, i101* getelementptr ([6 x i101], [6 x i101]* @Y, i32 0, i32 -1), i101 9224497936761618431), i101** undef
 ; CHECK-NEXT: ret void
diff --git a/llvm/test/Transforms/SCCP/apint-ipsccp3.ll b/llvm/test/Transforms/SCCP/apint-ipsccp3.ll
index c99ae5820b2..4ba1f8db30b 100644
--- a/llvm/test/Transforms/SCCP/apint-ipsccp3.ll
+++ b/llvm/test/Transforms/SCCP/apint-ipsccp3.ll
@@ -1,23 +1,39 @@
-; RUN: opt < %s -ipsccp -S | not grep global
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
+; RUN: opt < %s -ipsccp -S | FileCheck %s
 
 @G = internal global i66 undef
 
 
-
 define void @foo() {
-	%X = load i66, i66* @G
-	store i66 %X, i66* @G
-	ret void
+; CHECK-LABEL: @foo(
+; CHECK-NEXT:    [[X:%.*]] = load i66, i66* @G
+; CHECK-NEXT:    store i66 [[X]], i66* @G
+; CHECK-NEXT:    ret void
+;
+  %X = load i66, i66* @G
+  store i66 %X, i66* @G
+  ret void
 }
 
 define i66 @bar() {
-	%V = load i66, i66* @G
-	%C = icmp eq i66 %V, 17
-	br i1 %C, label %T, label %F
+; CHECK-LABEL: @bar(
+; CHECK-NEXT:    [[V:%.*]] = load i66, i66* @G
+; CHECK-NEXT:    [[C:%.*]] = icmp eq i66 [[V]], 17
+; CHECK-NEXT:    br i1 [[C]], label [[T:%.*]], label [[F:%.*]]
+; CHECK:       T:
+; CHECK-NEXT:    store i66 17, i66* @G
+; CHECK-NEXT:    ret i66 17
+; CHECK:       F:
+; CHECK-NEXT:    store i66 123, i66* @G
+; CHECK-NEXT:    ret i66 0
+;
+  %V = load i66, i66* @G
+  %C = icmp eq i66 %V, 17
+  br i1 %C, label %T, label %F
 T:
-	store i66 17, i66* @G
-	ret i66 %V
+  store i66 17, i66* @G
+  ret i66 %V
 F:
-	store i66 123, i66* @G
-	ret i66 0
+  store i66 123, i66* @G
+  ret i66 0
 }
diff --git a/llvm/test/Transforms/SCCP/apint-select.ll b/llvm/test/Transforms/SCCP/apint-select.ll
index 893331ea986..d797c7a4d43 100644
--- a/llvm/test/Transforms/SCCP/apint-select.ll
+++ b/llvm/test/Transforms/SCCP/apint-select.ll
@@ -1,21 +1,29 @@
-; RUN: opt < %s -sccp -S | not grep select
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
+; RUN: opt < %s -sccp -S | FileCheck %s
 
 @A = constant i32 10
 
 define i712 @test1() {
-        %P = getelementptr i32, i32* @A, i32 0
-        %B = ptrtoint i32* %P to i64
-        %BB = and i64 %B, undef
-        %C = icmp sge i64 %BB, 0
-	%X = select i1 %C, i712 0, i712 1
-	ret i712 %X
+; CHECK-LABEL: @test1(
+; CHECK-NEXT:    [[BB:%.*]] = and i64 ptrtoint (i32* @A to i64), undef
+; CHECK-NEXT:    [[C:%.*]] = icmp sge i64 [[BB]], 0
+; CHECK-NEXT:    [[X:%.*]] = select i1 [[C]], i712 0, i712 1
+; CHECK-NEXT:    ret i712 [[X]]
+;
+  %P = getelementptr i32, i32* @A, i32 0
+  %B = ptrtoint i32* %P to i64
+  %BB = and i64 %B, undef
+  %C = icmp sge i64 %BB, 0
+  %X = select i1 %C, i712 0, i712 1
+  ret i712 %X
 }
 
 
 
 define i712 @test2(i1 %C) {
-	%X = select i1 %C, i712 0, i712 undef
-	ret i712 %X
+; CHECK-LABEL: @test2(
+; CHECK-NEXT:    ret i712 0
+;
+  %X = select i1 %C, i712 0, i712 undef
+  ret i712 %X
 }
-
-
diff --git a/llvm/test/Transforms/SCCP/ip-constant-ranges.ll b/llvm/test/Transforms/SCCP/ip-constant-ranges.ll
index 426e3279661..08de8dba404 100644
--- a/llvm/test/Transforms/SCCP/ip-constant-ranges.ll
+++ b/llvm/test/Transforms/SCCP/ip-constant-ranges.ll
@@ -141,10 +141,12 @@ define double @test_struct({ double, double } %test) {
 ; Constant range for %x is [47, 302)
 ; CHECK-LABEL: @f5
 ; CHECK-NEXT: entry:
-; CHECK-NEXT: %cmp = icmp sgt i32 %x, undef
-; CHECK-NEXT: %res1 = select i1 %cmp, i32 1, i32 2
-; CHECK-NEXT: %res = add i32 %res1, 3
-; CHECK-NEXT: ret i32 %res
+; CHECK-NEXT:   %cmp = icmp sgt i32 %x, undef
+; CHECK-NEXT:   %cmp2 = icmp ne i32 undef, %x
+; CHECK-NEXT:   %res1 = select i1 %cmp, i32 1, i32 2
+; CHECK-NEXT:   %res2 = select i1 %cmp2, i32 3, i32 4
+; CHECK-NEXT:   %res = add i32 %res1, %res2
+; CHECK-NEXT:   ret i32 %res
 define internal i32 @f5(i32 %x) {
 entry:
   %cmp = icmp sgt i32 %x, undef
diff --git a/llvm/test/Transforms/SCCP/ipsccp-basic.ll b/llvm/test/Transforms/SCCP/ipsccp-basic.ll
index b1660b54565..795a73f1d90 100644
--- a/llvm/test/Transforms/SCCP/ipsccp-basic.ll
+++ b/llvm/test/Transforms/SCCP/ipsccp-basic.ll
@@ -56,7 +56,9 @@ define void @test3a() {
 	ret void
 }
 ; CHECK-LABEL: define void @test3a(
-; CHECK-NEXT: ret void
+; CHECK-NEXT:    %X = load i32, i32* @G
+; CHECK-NEXT:    store i32 %X, i32* @G
+; CHECK-NEXT:   ret void
 
 
 define i32 @test3b() {
@@ -71,9 +73,17 @@ F:
 	ret i32 0
 }
 ; CHECK-LABEL: define i32 @test3b(
-; CHECK-NOT: store
-; CHECK: ret i32 0
+; CHECK-NEXT:    %V = load i32, i32* @G
+; CHECK-NEXT:    %C = icmp eq i32 %V, 17
+; CHECK-NEXT:    br i1 %C, label %T, label %F
+
+; CHECK-LABEL: T:
+; CHECK-NEXT:   store i32 17, i32* @G
+; CHECK-NEXT:   ret i32 17
 
+; CHECK-LABEL: F:
+; CHECK-NEXT:    store i32 123, i32* @G
+; CHECK-NEXT:    ret i32 0
 
 ;;======================== test4
 
@@ -226,8 +236,11 @@ define i32 @test10a() nounwind {
 entry:
   %call = call i32 @test10b(i32 undef)
   ret i32 %call
+
 ; CHECK-LABEL: define i32 @test10a(
-; CHECK: ret i32 0
+; CHECK-NEXT:  entry:
+; CHECK-NEXT:    %call = call i32 @test10b(i32 undef)
+; CHECK-NEXT:    ret i32 %call
 }
 
 define internal i32 @test10b(i32 %x) nounwind {
@@ -235,7 +248,9 @@ entry:
   %r = and i32 %x, 1
   ret i32 %r
 ; CHECK-LABEL: define internal i32 @test10b(
-; CHECK: ret i32 undef
+; CHECK-NEXT:  entry:
+; CHECK-NEXT:    %r = and i32 undef, 1
+; CHECK-NEXT:    ret i32 %r
 }
 
 ;;======================== test11
@@ -244,7 +259,8 @@ define i64 @test11a() {
   %xor = xor i64 undef, undef
   ret i64 %xor
 ; CHECK-LABEL: define i64 @test11a
-; CHECK: ret i64 0
+; CHECK-NEXT:    %xor = xor i64 undef, undef
+; CHECK-NEXT:    ret i64 %xor
 }
 
 define i64 @test11b() {
@@ -252,9 +268,9 @@ define i64 @test11b() {
   %call2 = call i64 @llvm.ctpop.i64(i64 %call1)
   ret i64 %call2
 ; CHECK-LABEL: define i64 @test11b
-; CHECK: %[[call1:.*]] = call i64 @test11a()
-; CHECK-NOT: call i64 @llvm.ctpop.i64
-; CHECK-NEXT: ret i64 0
+; CHECK-NEXT:   [[call1:%.*]] = call i64 @test11a()
+; CHECK-NEXT:    [[call2:%.*]] = call i64 @llvm.ctpop.i64(i64 [[call1]])
+; CHECK-NEXT: ret i64 [[call2]]
 }
 
 declare i64 @llvm.ctpop.i64(i64)
diff --git a/llvm/test/Transforms/SCCP/logical-nuke.ll b/llvm/test/Transforms/SCCP/logical-nuke.ll
index 6ca16de4489..5152e126e8f 100644
--- a/llvm/test/Transforms/SCCP/logical-nuke.ll
+++ b/llvm/test/Transforms/SCCP/logical-nuke.ll
@@ -1,39 +1,47 @@
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
 ; RUN: opt < %s -sccp -S | FileCheck %s
 
 ; Test that SCCP has basic knowledge of when and/or/mul nuke overdefined values.
 
-; CHECK-LABEL: test
-; CHECK: ret i32 0
  define i32 @test(i32 %X) {
+; CHECK-LABEL: @test(
+; CHECK-NEXT:    ret i32 0
+;
   %Y = and i32 %X, 0
   ret i32 %Y
 }
 
-; CHECK-LABEL: test2
-; CHECK: ret i32 -1
 define i32 @test2(i32 %X) {
+; CHECK-LABEL: @test2(
+; CHECK-NEXT:    ret i32 -1
+;
   %Y = or i32 -1, %X
   ret i32 %Y
 }
 
-; CHECK-LABEL: test3
-; CHECK: ret i32 0
 define i32 @test3(i32 %X) {
+; CHECK-LABEL: @test3(
+; CHECK-NEXT:    [[Y:%.*]] = and i32 undef, [[X:%.*]]
+; CHECK-NEXT:    ret i32 [[Y]]
+;
   %Y = and i32 undef, %X
   ret i32 %Y
 }
 
-; CHECK-LABEL: test4
-; CHECK: ret i32 -1
 define i32 @test4(i32 %X) {
+; CHECK-LABEL: @test4(
+; CHECK-NEXT:    [[Y:%.*]] = or i32 [[X:%.*]], undef
+; CHECK-NEXT:    ret i32 [[Y]]
+;
   %Y = or i32 %X, undef
   ret i32 %Y
 }
 
 ; X * 0 = 0 even if X is overdefined.
-; CHECK-LABEL: test5
-; CHECK: ret i32 0
 define i32 @test5(i32 %foo) {
+; CHECK-LABEL: @test5(
+; CHECK-NEXT:    ret i32 0
+;
   %patatino = mul i32 %foo, 0
   ret i32 %patatino
 }
diff --git a/llvm/test/Transforms/SCCP/switch-multiple-undef.ll b/llvm/test/Transforms/SCCP/switch-multiple-undef.ll
index 027c9c0c9ba..df99e4eee7d 100644
--- a/llvm/test/Transforms/SCCP/switch-multiple-undef.ll
+++ b/llvm/test/Transforms/SCCP/switch-multiple-undef.ll
@@ -1,3 +1,4 @@
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
 ; RUN: opt -S -ipsccp < %s | FileCheck %s
 
 declare void @foo()
@@ -5,9 +6,25 @@ declare void @goo()
 declare void @patatino()
 
 define void @test1(i32 %t) {
+; CHECK-LABEL: @test1(
+; CHECK-NEXT:    [[CHOICE:%.*]] = icmp eq i32 undef, -1
+; CHECK-NEXT:    switch i1 [[CHOICE]], label [[FIRST:%.*]] [
+; CHECK-NEXT:    i1 false, label [[SECOND:%.*]]
+; CHECK-NEXT:    i1 true, label [[THIRD:%.*]]
+; CHECK-NEXT:    ]
+; CHECK:       first:
+; CHECK-NEXT:    call void @foo()
+; CHECK-NEXT:    ret void
+; CHECK:       second:
+; CHECK-NEXT:    call void @goo()
+; CHECK-NEXT:    ret void
+; CHECK:       third:
+; CHECK-NEXT:    call void @patatino()
+; CHECK-NEXT:    ret void
+;
   %choice = icmp eq i32 undef, -1
   switch i1 %choice, label %first [i1 0, label %second
-                                   i1 1, label %third]
+  i1 1, label %third]
 first:
   call void @foo()
   ret void
@@ -18,10 +35,3 @@ third:
   call void @patatino()
   ret void
 }
-
-; CHECK: define void @test1(i32 %t) {
-; CHECK-NEXT:   br label %second
-; CHECK: second:
-; CHECK-NEXT:   call void @goo()
-; CHECK-NEXT:   ret void
-; CHECK-NEXT: }
diff --git a/llvm/test/Transforms/SCCP/ub-shift.ll b/llvm/test/Transforms/SCCP/ub-shift.ll
index 3fb2d97457d..6e15d6b2bcc 100644
--- a/llvm/test/Transforms/SCCP/ub-shift.ll
+++ b/llvm/test/Transforms/SCCP/ub-shift.ll
@@ -1,68 +1,89 @@
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
 ; RUN: opt < %s -sccp -S | FileCheck %s
 
-; CHECK-LABEL: shift_undef_64
 define void @shift_undef_64(i64* %p) {
+; CHECK-LABEL: @shift_undef_64(
+; CHECK-NEXT:    [[R1:%.*]] = lshr i64 -1, 4294967296
+; CHECK-NEXT:    store i64 [[R1]], i64* [[P:%.*]]
+; CHECK-NEXT:    [[R2:%.*]] = ashr i64 -1, 4294967297
+; CHECK-NEXT:    store i64 [[R2]], i64* [[P]]
+; CHECK-NEXT:    [[R3:%.*]] = shl i64 -1, 4294967298
+; CHECK-NEXT:    store i64 [[R3]], i64* [[P]]
+; CHECK-NEXT:    ret void
+;
   %r1 = lshr i64 -1, 4294967296 ; 2^32
-  ; CHECK: store i64 undef
   store i64 %r1, i64* %p
 
   %r2 = ashr i64 -1, 4294967297 ; 2^32 + 1
-  ; CHECK: store i64 undef
   store i64 %r2, i64* %p
 
   %r3 = shl i64 -1, 4294967298 ; 2^32 + 2
-  ; CHECK: store i64 undef
   store i64 %r3, i64* %p
 
   ret void
 }
 
-; CHECK-LABEL: shift_undef_65
 define void @shift_undef_65(i65* %p) {
+; CHECK-LABEL: @shift_undef_65(
+; CHECK-NEXT:    [[R1:%.*]] = lshr i65 2, -18446744073709551615
+; CHECK-NEXT:    store i65 [[R1]], i65* [[P:%.*]]
+; CHECK-NEXT:    [[R2:%.*]] = ashr i65 4, -18446744073709551615
+; CHECK-NEXT:    store i65 [[R2]], i65* [[P]]
+; CHECK-NEXT:    [[R3:%.*]] = shl i65 1, -18446744073709551615
+; CHECK-NEXT:    store i65 [[R3]], i65* [[P]]
+; CHECK-NEXT:    ret void
+;
   %r1 = lshr i65 2, 18446744073709551617
-  ; CHECK: store i65 undef
   store i65 %r1, i65* %p
 
   %r2 = ashr i65 4, 18446744073709551617
-  ; CHECK: store i65 undef
   store i65 %r2, i65* %p
 
   %r3 = shl i65 1, 18446744073709551617
-  ; CHECK: store i65 undef
   store i65 %r3, i65* %p
 
   ret void
 }
 
-; CHECK-LABEL: shift_undef_256
 define void @shift_undef_256(i256* %p) {
+; CHECK-LABEL: @shift_undef_256(
+; CHECK-NEXT:    [[R1:%.*]] = lshr i256 2, 18446744073709551617
+; CHECK-NEXT:    store i256 [[R1]], i256* [[P:%.*]]
+; CHECK-NEXT:    [[R2:%.*]] = ashr i256 4, 18446744073709551618
+; CHECK-NEXT:    store i256 [[R2]], i256* [[P]]
+; CHECK-NEXT:    [[R3:%.*]] = shl i256 1, 18446744073709551619
+; CHECK-NEXT:    store i256 [[R3]], i256* [[P]]
+; CHECK-NEXT:    ret void
+;
   %r1 = lshr i256 2, 18446744073709551617
-  ; CHECK: store i256 undef
   store i256 %r1, i256* %p
 
   %r2 = ashr i256 4, 18446744073709551618
-  ; CHECK: store i256 undef
   store i256 %r2, i256* %p
 
   %r3 = shl i256 1, 18446744073709551619
-  ; CHECK: store i256 undef
   store i256 %r3, i256* %p
 
   ret void
 }
 
-; CHECK-LABEL: shift_undef_511
 define void @shift_undef_511(i511* %p) {
+; CHECK-LABEL: @shift_undef_511(
+; CHECK-NEXT:    [[R1:%.*]] = lshr i511 -1, 1208925819614629174706276
+; CHECK-NEXT:    store i511 [[R1]], i511* [[P:%.*]]
+; CHECK-NEXT:    [[R2:%.*]] = ashr i511 -2, 1208925819614629174706200
+; CHECK-NEXT:    store i511 [[R2]], i511* [[P]]
+; CHECK-NEXT:    [[R3:%.*]] = shl i511 -3, 1208925819614629174706180
+; CHECK-NEXT:    store i511 [[R3]], i511* [[P]]
+; CHECK-NEXT:    ret void
+;
   %r1 = lshr i511 -1, 1208925819614629174706276 ; 2^80 + 100
-  ; CHECK: store i511 undef
   store i511 %r1, i511* %p
 
   %r2 = ashr i511 -2, 1208925819614629174706200
-  ; CHECK: store i511 undef
   store i511 %r2, i511* %p
 
   %r3 = shl i511 -3, 1208925819614629174706180
-  ; CHECK: store i511 undef
   store i511 %r3, i511* %p
 
   ret void
diff --git a/llvm/test/Transforms/SCCP/undef-resolve.ll b/llvm/test/Transforms/SCCP/undef-resolve.ll
index 7fdcd556dae..e2a4268596f 100644
--- a/llvm/test/Transforms/SCCP/undef-resolve.ll
+++ b/llvm/test/Transforms/SCCP/undef-resolve.ll
@@ -1,12 +1,15 @@
+; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
 ; RUN: opt -sccp -S < %s | FileCheck %s
 
 
 ; PR6940
 define double @test1() {
+; CHECK-LABEL: @test1(
+; CHECK-NEXT:    [[T:%.*]] = sitofp i32 undef to double
+; CHECK-NEXT:    ret double [[T]]
+;
   %t = sitofp i32 undef to double
   ret double %t
-; CHECK-LABEL: @test1(
-; CHECK: ret double 0.0
 }
 
 
@@ -14,6 +17,72 @@ define double @test1() {
 ; Check that lots of stuff doesn't get turned into undef.
 define i32 @test2() nounwind readnone ssp {
 ; CHECK-LABEL: @test2(
+; CHECK-NEXT:  init:
+; CHECK-NEXT:    br label [[CONTROL_OUTER_OUTER:%.*]]
+; CHECK:       control.outer.loopexit.us-lcssa:
+; CHECK-NEXT:    br label [[CONTROL_OUTER_LOOPEXIT:%.*]]
+; CHECK:       control.outer.loopexit:
+; CHECK-NEXT:    br label [[CONTROL_OUTER_OUTER_BACKEDGE:%.*]]
+; CHECK:       control.outer.outer:
+; CHECK-NEXT:    [[SWITCHCOND_0_PH_PH:%.*]] = phi i32 [ 2, [[INIT:%.*]] ], [ 3, [[CONTROL_OUTER_OUTER_BACKEDGE]] ]
+; CHECK-NEXT:    [[I_0_PH_PH:%.*]] = phi i32 [ undef, [[INIT]] ], [ [[I_0_PH_PH_BE:%.*]], [[CONTROL_OUTER_OUTER_BACKEDGE]] ]
+; CHECK-NEXT:    [[TMP4:%.*]] = icmp eq i32 [[I_0_PH_PH]], 0
+; CHECK-NEXT:    br i1 [[TMP4]], label [[CONTROL_OUTER_OUTER_SPLIT_US:%.*]], label [[CONTROL_OUTER_OUTER_CONTROL_OUTER_OUTER_SPLIT_CRIT_EDGE:%.*]]
+; CHECK:       control.outer.outer.control.outer.outer.split_crit_edge:
+; CHECK-NEXT:    br label [[CONTROL_OUTER:%.*]]
+; CHECK:       control.outer.outer.split.us:
+; CHECK-NEXT:    br label [[CONTROL_OUTER_US:%.*]]
+; CHECK:       control.outer.us:
+; CHECK-NEXT:    [[A_0_PH_US:%.*]] = phi i32 [ [[SWITCHCOND_0_US:%.*]], [[BB3_US:%.*]] ], [ 4, [[CONTROL_OUTER_OUTER_SPLIT_US]] ]
+; CHECK-NEXT:    [[SWITCHCOND_0_PH_US:%.*]] = phi i32 [ [[A_0_PH_US]], [[BB3_US]] ], [ [[SWITCHCOND_0_PH_PH]], [[CONTROL_OUTER_OUTER_SPLIT_US]] ]
+; CHECK-NEXT:    br label [[CONTROL_US:%.*]]
+; CHECK:       bb3.us:
+; CHECK-NEXT:    br label [[CONTROL_OUTER_US]]
+; CHECK:       bb0.us:
+; CHECK-NEXT:    br label [[CONTROL_US]]
+; CHECK:       control.us:
+; CHECK-NEXT:    [[SWITCHCOND_0_US]] = phi i32 [ [[A_0_PH_US]], [[BB0_US:%.*]] ], [ [[SWITCHCOND_0_PH_US]], [[CONTROL_OUTER_US]] ]
+; CHECK-NEXT:    switch i32 [[SWITCHCOND_0_US]], label [[CONTROL_OUTER_LOOPEXIT_US_LCSSA_US:%.*]] [
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1640563424.1323.1581507021142.JavaMail.javamailuser%40localhost.

------=_Part_1322_321215567.1581507020344--
