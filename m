Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBVHA63XQKGQEUWOT4RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC021287A0
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 06:40:36 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id n63sf7175474edc.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 21:40:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576906836; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iij2lLbMFIwO2hXjvapDFn6oTGHw6Eu9NFdPKvlOGDBBmgLQ8LfiZfpfkBH1Hzynpa
         L0mihHxmtT5ghSbmFI1Z3JP/Msf4qDiakC865sgas1BmTq3xRMdvAw34fDX3vltWNbF0
         LrzTYrZunmpWfJABSqkrhoe3EXkQOBTp1tp3r4Im+Z+GZSLm6v3Xhrc8+LFl2BB95p+y
         wTo3bHpub3nJR2PDtjyrpkkPrX0qX3IA3LQw0dK0TZnxMX3QtKSFzs+xPUZm2eHEKp7G
         NsSLxNPus8WTT2mKx83hkBLwCOiPDwQQrl/BkUKwHxcd2nvaIYUf7CYo12XkOjp2ze4X
         5nZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=3Pelss2GKGWNKSbboDPOZ4mTgTLo+fyBZUtzH/8wUIs=;
        b=WgvPreTdPh6WZooTsuAdSbejC7NNz/D8We6efJxyrNGlltWVOrBAWbO8EPWVexWMda
         gw4UXEhPy1tvDKRk91jXWoQnFAg5xvd0P1ixrOU6/MCBS6Lf6yK7nz3MOLsI6RRFzn9p
         be/XDYNqpQiCx8Pn7Q1qbumt89IOTs2tTWAQYPvfxwGj9akqzcj+/KyJcoUoLclxpkX/
         WltSMMiJzz4oqALcAyPQpG+Te4J16Dx+I2F7H0D0ytdJS0NO7MQtAJZjpUcUzXfxoHmn
         P2vsexL4/euugHR8Z/PGFdUyCODW+MPtpSyUhyQlVXycXiRBv/AoRqSQpNbZvlkVRZYB
         2bWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gotuCog0;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Pelss2GKGWNKSbboDPOZ4mTgTLo+fyBZUtzH/8wUIs=;
        b=NV0xK97WiBcEKzn2Nh/W/wQubQaMwm8yqdP8puwinGOBEMObOAb/1u4kkgp1ebpYYE
         +yHQmKzbYQAjnSXL0uzZmRk58eRQ9ilGPu8jssEPgqVleAyabIkVsOliXQ5/iclaLLyz
         /Ai/nwf0Lx+Lzy8Iz7iIEweo8PhenQ4d7ewiCSn5Kly0HvRZFaHQFGg8vL8HCg+7XZPo
         q/BLGSvrktwNnY6eT05drsV1VCC7khIU6svNDtlp630k8D1xl+bLdIizQPO5ukUPyebT
         RjEsMU8KtOGcA5UYOZ6u2WYaFnQc8MCXjxLJw9q4HzbtDh/n1tsCkBgpZe7+w6S73MeY
         Kj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Pelss2GKGWNKSbboDPOZ4mTgTLo+fyBZUtzH/8wUIs=;
        b=T3oK6pkys76zmDBrone6MK37pEPycq6tjuwPfT2wacHnH+z+KWS0PqYulKX83Kq4+S
         8lliT+ak1fsTOO0keBy74uas/VE1JY9NFVbBBsrxcG3cdSrv1hESKWAbO8gnt1JUmGUL
         uqxrBn2htlMPHcKZXoaCdDKWJ+kr1AcgeR12B3aFNly1RmCTNY2A4BmDBDQQb+j0yUrU
         +14KpqVoHqmFAKGAzBDb6MsN7zzXYJ3+slUtwC4ai8yRCTE9igsu3WwQQadeHwLzF/Sw
         V4OnBULXL749vci6odndtneQGsbYc+2CpAL8wwttTDfF7UVzEnCI0FheDhVS03Kpg3BX
         KWoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaqfEv/3Vt48oE0mpoh/83HecHmV3nGa8L/Hr1eKQ1tcKoOid2
	iyvh23RK0tSt+XCHgxkG95Q=
X-Google-Smtp-Source: APXvYqxdAOjkoKl+rL+8SH33RAPL/naUCmP1pUTUSQb/oDC/iS8M/oiEPPuhXqtnbvEufQ20AzJ/6w==
X-Received: by 2002:a17:906:9395:: with SMTP id l21mr20184284ejx.284.1576906836286;
        Fri, 20 Dec 2019 21:40:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:385:: with SMTP id ss5ls3455958ejb.7.gmail; Fri, 20
 Dec 2019 21:40:35 -0800 (PST)
X-Received: by 2002:a17:906:4d43:: with SMTP id b3mr20699866ejv.109.1576906835731;
        Fri, 20 Dec 2019 21:40:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576906835; cv=none;
        d=google.com; s=arc-20160816;
        b=s5hXc7wNK1Ofb7izednF9Ws5GxWGY/UriayKUHe335aguo0X7qMwf9/Je+oCi9KC1D
         1/av5cuYGt/slmTjJWnweWi4c9MdBynWQTUt9UzAilTbovWJ27Xd2PWmhyOc1/H/nLjs
         sgkfSSUvNa6jRxBsdnxcr2/9iTE7IzytIWmWDkww0dAVgsm6l/581Q2AoBf34ElF9RYx
         XnjGGByxuBE68xkpshcK5h0Xq1MS9vnoZDiLaEIA0ACy+UURyFRBW3KwZFoZSLFh/dDv
         K7hhCRBk/CblEqF6CCYD40TJfOjHVc/Fhv/a6JCrO79Ca6Wp9kMdgfaR4eDuCdAPKZcz
         Xyzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=cM3FYUZVbbn2TpDr79VHW4CTc01PVLo/KgeO2mGd3W4=;
        b=zp5wY5SImSGE/oAVUMCnXVNQ3LbNI7Thf3fKp8Pkus7wUYJIZ1ywz+eSpUpL+k/Xlc
         rXtRe7awAtL254kyB0gehini5VhCLFwz+23lJRKLAD0RXehDho/aB+oW4LnhsU+ouwTP
         qkLC0mtPHNM3Z8IItt95hEqrZ+wm6n49BE0vs6Wt01rfcDmXeufrfPhhQUjLMuAu2Ya4
         0E04fJPGU3qKwNwWy3nuL2Gg61SgPhkr99jKHYPtAzcJmF8T6g7DhCr3eJwyXFZoo7Zb
         rIlpzSiMW9AzpyxkmgjZ/vDRfEr6Uf1CXtay/RcjEv3fBp8RW0OQ/8Zm3w+XjzZPWuRD
         r4fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gotuCog0;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id cc24si430729edb.5.2019.12.20.21.40.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 21:40:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Received: by mail-wr1-x430.google.com with SMTP id z3so11382987wru.3
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 21:40:35 -0800 (PST)
X-Received: by 2002:adf:f288:: with SMTP id k8mr19956771wro.301.1576906834813;
        Fri, 20 Dec 2019 21:40:34 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x1sm11783044wru.50.2019.12.20.21.40.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Dec 2019 21:40:34 -0800 (PST)
From: ci_notify@linaro.org
Date: Sat, 21 Dec 2019 05:40:33 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <532878386.6332.1576906834252.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allyesconfig - Build # 9 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6331_306319495.1576906833528"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=gotuCog0;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::430
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

------=_Part_6331_306319495.1576906833528
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-stable-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-defconfig
 - tcwg_kernel/llvm-master-arm-stable-allyesconfig

Culprit:
<cut>
commit bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
Author: Victor Campos <Victor.Campos@arm.com>

    [ARM] Improve codegen of volatile load/store of i64
</cut>

First few errors in logs of first_bad:
00:06:21 clang-10: error: unable to execute command: Aborted (core dumped)
00:06:21 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:06:21 make[1]: *** [lib/test_ubsan.o] Error 254
00:06:35 make: *** [lib] Error 2
00:22:10 clang-10: error: unable to execute command: Aborted (core dumped)
00:22:10 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:22:10 make[2]: *** [drivers/scsi/ipr.o] Error 254
00:22:11 make[1]: *** [drivers/scsi] Error 2
00:22:27 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="2f932b57296a573454d29893eedbeaa6901c2a68"

Results regressed to (for first_bad == bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
17873

from (for last_good == eca0c97a6bca49b493f3387dbd88ad60c852320f)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
17875

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/build-bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/build-eca0c97a6bca49b493f3387dbd88ad60c852320f/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/

Reproduce builds:
<cut>
mkdir investigate-llvm-bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
cd investigate-llvm-bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach eca0c97a6bca49b493f3387dbd88ad60c852320f
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-stable-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-stable-allyesconfig/9/consoleText

Full commit:
<cut>
commit bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
Author: Victor Campos <Victor.Campos@arm.com>
Date:   Mon Dec 16 14:22:15 2019 +0000

    [ARM] Improve codegen of volatile load/store of i64
    
    Summary:
    Instead of generating two i32 instructions for each load or store of a volatile
    i64 value (two LDRs or STRs), now emit LDRD/STRD.
    
    These improvements cover architectures implementing ARMv5TE or Thumb-2.
    
    Reviewers: dmgreen, efriedma, john.brawn
    
    Reviewed By: efriedma
    
    Subscribers: kristof.beyls, hiraditya, llvm-commits
    
    Tags: #llvm
    
    Differential Revision: https://reviews.llvm.org/D70072
---
 llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp     |  18 +++
 llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp          |  49 ++++++++
 llvm/lib/Target/ARM/ARMISelLowering.cpp          |  57 ++++++++-
 llvm/lib/Target/ARM/ARMISelLowering.h            |   8 +-
 llvm/lib/Target/ARM/ARMInstrInfo.td              |  23 ++++
 llvm/lib/Target/ARM/ARMInstrThumb2.td            |   9 +-
 llvm/test/CodeGen/ARM/i64_volatile_load_store.ll | 153 +++++++++++++++++++++++
 7 files changed, 311 insertions(+), 6 deletions(-)

diff --git a/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp b/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp
index de4377ec5a47..2c3ac816219f 100644
--- a/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp
+++ b/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp
@@ -1952,6 +1952,24 @@ bool ARMExpandPseudo::ExpandMI(MachineBasicBlock &MBB,
       MI.eraseFromParent();
       return true;
     }
+    case ARM::LOADDUAL:
+    case ARM::STOREDUAL: {
+      Register PairReg = MI.getOperand(0).getReg();
+
+      MachineInstrBuilder MIB =
+          BuildMI(MBB, MBBI, MI.getDebugLoc(),
+                  TII->get(Opcode == ARM::LOADDUAL ? ARM::LDRD : ARM::STRD))
+              .addReg(TRI->getSubReg(PairReg, ARM::gsub_0),
+                      Opcode == ARM::LOADDUAL ? RegState::Define : 0)
+              .addReg(TRI->getSubReg(PairReg, ARM::gsub_1),
+                      Opcode == ARM::LOADDUAL ? RegState::Define : 0);
+      for (unsigned i = 1; i < MI.getNumOperands(); i++)
+        MIB.add(MI.getOperand(i));
+      MIB.add(predOps(ARMCC::AL));
+      MIB.cloneMemRefs(MI);
+      MI.eraseFromParent();
+      return true;
+    }
   }
 }
 
diff --git a/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp b/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp
index 1f998defbd1b..dcdec779bbec 100644
--- a/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp
+++ b/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp
@@ -145,6 +145,8 @@ public:
 
   // Thumb 2 Addressing Modes:
   bool SelectT2AddrModeImm12(SDValue N, SDValue &Base, SDValue &OffImm);
+  template <unsigned Shift>
+  bool SelectT2AddrModeImm8(SDValue N, SDValue &Base, SDValue &OffImm);
   bool SelectT2AddrModeImm8(SDValue N, SDValue &Base,
                             SDValue &OffImm);
   bool SelectT2AddrModeImm8Offset(SDNode *Op, SDValue N,
@@ -1294,6 +1296,33 @@ bool ARMDAGToDAGISel::SelectT2AddrModeImm12(SDValue N,
   return true;
 }
 
+template <unsigned Shift>
+bool ARMDAGToDAGISel::SelectT2AddrModeImm8(SDValue N, SDValue &Base,
+                                           SDValue &OffImm) {
+  if (N.getOpcode() == ISD::SUB || CurDAG->isBaseWithConstantOffset(N)) {
+    int RHSC;
+    if (isScaledConstantInRange(N.getOperand(1), 1 << Shift, -255, 256, RHSC)) {
+      Base = N.getOperand(0);
+      if (Base.getOpcode() == ISD::FrameIndex) {
+        int FI = cast<FrameIndexSDNode>(Base)->getIndex();
+        Base = CurDAG->getTargetFrameIndex(
+            FI, TLI->getPointerTy(CurDAG->getDataLayout()));
+      }
+
+      if (N.getOpcode() == ISD::SUB)
+        RHSC = -RHSC;
+      OffImm =
+          CurDAG->getTargetConstant(RHSC * (1 << Shift), SDLoc(N), MVT::i32);
+      return true;
+    }
+  }
+
+  // Base only.
+  Base = N;
+  OffImm = CurDAG->getTargetConstant(0, SDLoc(N), MVT::i32);
+  return true;
+}
+
 bool ARMDAGToDAGISel::SelectT2AddrModeImm8(SDValue N,
                                            SDValue &Base, SDValue &OffImm) {
   // Match simple R - imm8 operands.
@@ -3486,6 +3515,26 @@ void ARMDAGToDAGISel::Select(SDNode *N) {
     CurDAG->RemoveDeadNode(N);
     return;
   }
+  case ARMISD::LDRD: {
+    if (Subtarget->isThumb2())
+      break; // TableGen handles isel in this case.
+    SDValue Base, RegOffset, ImmOffset;
+    const SDValue &Chain = N->getOperand(0);
+    const SDValue &Addr = N->getOperand(1);
+    SelectAddrMode3(Addr, Base, RegOffset, ImmOffset);
+    SDValue Ops[] = {Base, RegOffset, ImmOffset, Chain};
+    SDNode *New = CurDAG->getMachineNode(ARM::LOADDUAL, dl,
+                                         {MVT::Untyped, MVT::Other}, Ops);
+    SDValue Lo = CurDAG->getTargetExtractSubreg(ARM::gsub_0, dl, MVT::i32,
+                                                SDValue(New, 0));
+    SDValue Hi = CurDAG->getTargetExtractSubreg(ARM::gsub_1, dl, MVT::i32,
+                                                SDValue(New, 0));
+    ReplaceUses(SDValue(N, 0), Lo);
+    ReplaceUses(SDValue(N, 1), Hi);
+    ReplaceUses(SDValue(N, 2), SDValue(New, 1));
+    CurDAG->RemoveDeadNode(N);
+    return;
+  }
   case ARMISD::LOOP_DEC: {
     SDValue Ops[] = { N->getOperand(1),
                       N->getOperand(2),
diff --git a/llvm/lib/Target/ARM/ARMISelLowering.cpp b/llvm/lib/Target/ARM/ARMISelLowering.cpp
index 0b4d39ec3080..67d436fb8faa 100644
--- a/llvm/lib/Target/ARM/ARMISelLowering.cpp
+++ b/llvm/lib/Target/ARM/ARMISelLowering.cpp
@@ -1070,6 +1070,8 @@ ARMTargetLowering::ARMTargetLowering(const TargetMachine &TM,
   setOperationAction(ISD::SRA,       MVT::i64, Custom);
   setOperationAction(ISD::INTRINSIC_VOID, MVT::Other, Custom);
   setOperationAction(ISD::INTRINSIC_WO_CHAIN, MVT::i64, Custom);
+  setOperationAction(ISD::LOAD, MVT::i64, Custom);
+  setOperationAction(ISD::STORE, MVT::i64, Custom);
 
   // MVE lowers 64 bit shifts to lsll and lsrl
   // assuming that ISD::SRL and SRA of i64 are already marked custom
@@ -1593,6 +1595,9 @@ const char *ARMTargetLowering::getTargetNodeName(unsigned Opcode) const {
 
   case ARMISD::PRELOAD:       return "ARMISD::PRELOAD";
 
+  case ARMISD::LDRD:          return "ARMISD::LDRD";
+  case ARMISD::STRD:          return "ARMISD::STRD";
+
   case ARMISD::WIN__CHKSTK:   return "ARMISD::WIN__CHKSTK";
   case ARMISD::WIN__DBZCHK:   return "ARMISD::WIN__DBZCHK";
 
@@ -9081,6 +9086,24 @@ static SDValue LowerPredicateLoad(SDValue Op, SelectionDAG &DAG) {
   return DAG.getMergeValues({Pred, Load.getValue(1)}, dl);
 }
 
+void ARMTargetLowering::LowerLOAD(SDNode *N, SmallVectorImpl<SDValue> &Results,
+                                  SelectionDAG &DAG) const {
+  LoadSDNode *LD = cast<LoadSDNode>(N);
+  EVT MemVT = LD->getMemoryVT();
+  assert(LD->isUnindexed() && "Loads should be unindexed at this point.");
+
+  if (MemVT == MVT::i64 && Subtarget->hasV5TEOps() &&
+      !Subtarget->isThumb1Only() && LD->isVolatile()) {
+    SDLoc dl(N);
+    SDValue Result = DAG.getMemIntrinsicNode(
+        ARMISD::LDRD, dl, DAG.getVTList({MVT::i32, MVT::i32, MVT::Other}),
+        {LD->getChain(), LD->getBasePtr()}, MemVT, LD->getMemOperand());
+    SDValue Pair = DAG.getNode(ISD::BUILD_PAIR, dl, MVT::i64,
+                               Result.getValue(0), Result.getValue(1));
+    Results.append({Pair, Result.getValue(2)});
+  }
+}
+
 static SDValue LowerPredicateStore(SDValue Op, SelectionDAG &DAG) {
   StoreSDNode *ST = cast<StoreSDNode>(Op.getNode());
   EVT MemVT = ST->getMemoryVT();
@@ -9110,6 +9133,34 @@ static SDValue LowerPredicateStore(SDValue Op, SelectionDAG &DAG) {
       ST->getMemOperand());
 }
 
+static SDValue LowerSTORE(SDValue Op, SelectionDAG &DAG,
+                          const ARMSubtarget *Subtarget) {
+  StoreSDNode *ST = cast<StoreSDNode>(Op.getNode());
+  EVT MemVT = ST->getMemoryVT();
+  assert(ST->isUnindexed() && "Stores should be unindexed at this point.");
+
+  if (MemVT == MVT::i64 && Subtarget->hasV5TEOps() &&
+      !Subtarget->isThumb1Only() && ST->isVolatile()) {
+    SDNode *N = Op.getNode();
+    SDLoc dl(N);
+
+    SDValue Lo = DAG.getNode(ISD::EXTRACT_ELEMENT, dl, MVT::i32, ST->getValue(),
+                             DAG.getTargetConstant(0, dl, MVT::i32));
+    SDValue Hi = DAG.getNode(ISD::EXTRACT_ELEMENT, dl, MVT::i32, ST->getValue(),
+                             DAG.getTargetConstant(1, dl, MVT::i32));
+
+    return DAG.getMemIntrinsicNode(ARMISD::STRD, dl, DAG.getVTList(MVT::Other),
+                                   {ST->getChain(), Lo, Hi, ST->getBasePtr()},
+                                   MemVT, ST->getMemOperand());
+  } else if (Subtarget->hasMVEIntegerOps() &&
+             ((MemVT == MVT::v4i1 || MemVT == MVT::v8i1 ||
+               MemVT == MVT::v16i1))) {
+    return LowerPredicateStore(Op, DAG);
+  }
+
+  return SDValue();
+}
+
 static bool isZeroVector(SDValue N) {
   return (ISD::isBuildVectorAllZeros(N.getNode()) ||
           (N->getOpcode() == ARMISD::VMOVIMM &&
@@ -9297,7 +9348,7 @@ SDValue ARMTargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const {
   case ISD::LOAD:
     return LowerPredicateLoad(Op, DAG);
   case ISD::STORE:
-    return LowerPredicateStore(Op, DAG);
+    return LowerSTORE(Op, DAG, Subtarget);
   case ISD::MLOAD:
     return LowerMLOAD(Op, DAG);
   case ISD::ATOMIC_LOAD:
@@ -9399,7 +9450,9 @@ void ARMTargetLowering::ReplaceNodeResults(SDNode *N,
   case ISD::ABS:
      lowerABS(N, Results, DAG);
      return ;
-
+  case ISD::LOAD:
+    LowerLOAD(N, Results, DAG);
+    break;
   }
   if (Res.getNode())
     Results.push_back(Res);
diff --git a/llvm/lib/Target/ARM/ARMISelLowering.h b/llvm/lib/Target/ARM/ARMISelLowering.h
index afb4750ee35a..a63217ed87b5 100644
--- a/llvm/lib/Target/ARM/ARMISelLowering.h
+++ b/llvm/lib/Target/ARM/ARMISelLowering.h
@@ -278,7 +278,11 @@ class VectorType;
       VST4_UPD,
       VST2LN_UPD,
       VST3LN_UPD,
-      VST4LN_UPD
+      VST4LN_UPD,
+
+      // Load/Store of dual registers
+      LDRD,
+      STRD
     };
 
   } // end namespace ARMISD
@@ -731,6 +735,8 @@ class VectorType;
     SDValue LowerINT_TO_FP(SDValue Op, SelectionDAG &DAG) const;
     void lowerABS(SDNode *N, SmallVectorImpl<SDValue> &Results,
                   SelectionDAG &DAG) const;
+    void LowerLOAD(SDNode *N, SmallVectorImpl<SDValue> &Results,
+                   SelectionDAG &DAG) const;
 
     Register getRegisterByName(const char* RegName, EVT VT,
                                const MachineFunction &MF) const override;
diff --git a/llvm/lib/Target/ARM/ARMInstrInfo.td b/llvm/lib/Target/ARM/ARMInstrInfo.td
index 1cab1747ff4e..ba374e8f07d7 100644
--- a/llvm/lib/Target/ARM/ARMInstrInfo.td
+++ b/llvm/lib/Target/ARM/ARMInstrInfo.td
@@ -243,6 +243,12 @@ def ARMqsub8b       : SDNode<"ARMISD::QSUB8b", SDT_ARMAnd, []>;
 def ARMqadd16b      : SDNode<"ARMISD::QADD16b", SDT_ARMAnd, []>;
 def ARMqsub16b      : SDNode<"ARMISD::QSUB16b", SDT_ARMAnd, []>;
 
+def SDT_ARMldrd     : SDTypeProfile<2, 1, [SDTCisVT<0, i32>, SDTCisSameAs<0, 1>, SDTCisPtrTy<2>]>;
+def ARMldrd         : SDNode<"ARMISD::LDRD", SDT_ARMldrd, [SDNPHasChain, SDNPMayLoad, SDNPMemOperand]>;
+
+def SDT_ARMstrd     : SDTypeProfile<0, 3, [SDTCisVT<0, i32>, SDTCisSameAs<0, 1>, SDTCisPtrTy<2>]>;
+def ARMstrd         : SDNode<"ARMISD::STRD", SDT_ARMstrd, [SDNPHasChain, SDNPMayStore, SDNPMemOperand]>;
+
 // Vector operations shared between NEON and MVE
 
 def ARMvdup      : SDNode<"ARMISD::VDUP", SDTypeProfile<1, 1, [SDTCisVec<0>]>>;
@@ -2695,6 +2701,12 @@ let mayLoad = 1, hasSideEffects = 0, hasExtraDefRegAllocReq = 1 in {
              Requires<[IsARM, HasV5TE]>;
 }
 
+let mayLoad = 1, hasSideEffects = 0, hasNoSchedulingInfo = 1 in {
+def LOADDUAL : ARMPseudoInst<(outs GPRPairOp:$Rt), (ins addrmode3:$addr),
+                             64, IIC_iLoad_d_r, []>,
+               Requires<[IsARM, HasV5TE]>;
+}
+
 def LDA : AIldracq<0b00, (outs GPR:$Rt), (ins addr_offset_none:$addr),
                     NoItinerary, "lda", "\t$Rt, $addr", []>;
 def LDAB : AIldracq<0b10, (outs GPR:$Rt), (ins addr_offset_none:$addr),
@@ -2970,6 +2982,17 @@ let mayStore = 1, hasSideEffects = 0, hasExtraSrcRegAllocReq = 1 in {
   }
 }
 
+let mayStore = 1, hasSideEffects = 0, hasNoSchedulingInfo = 1 in {
+def STOREDUAL : ARMPseudoInst<(outs), (ins GPRPairOp:$Rt, addrmode3:$addr),
+                              64, IIC_iStore_d_r, []>,
+                Requires<[IsARM, HasV5TE]>;
+}
+
+let Predicates = [IsARM, HasV5TE] in {
+def : Pat<(ARMstrd GPR:$Rt, GPR:$Rt2, addrmode3:$addr),
+          (STOREDUAL (REG_SEQUENCE GPRPair, GPR:$Rt, gsub_0, GPR:$Rt2, gsub_1), addrmode3:$addr)>;
+}
+
 // Indexed stores
 multiclass AI2_stridx<bit isByte, string opc,
                       InstrItinClass iii, InstrItinClass iir> {
diff --git a/llvm/lib/Target/ARM/ARMInstrThumb2.td b/llvm/lib/Target/ARM/ARMInstrThumb2.td
index 7044c92a7f11..00921930e71a 100644
--- a/llvm/lib/Target/ARM/ARMInstrThumb2.td
+++ b/llvm/lib/Target/ARM/ARMInstrThumb2.td
@@ -270,7 +270,8 @@ def t2am_imm8_offset : MemOperand,
 
 // t2addrmode_imm8s4  := reg +/- (imm8 << 2)
 def MemImm8s4OffsetAsmOperand : AsmOperandClass {let Name = "MemImm8s4Offset";}
-class T2AddrMode_Imm8s4 : MemOperand {
+class T2AddrMode_Imm8s4 : MemOperand,
+                          ComplexPattern<i32, 2, "SelectT2AddrModeImm8<2>", []> {
   let EncoderMethod = "getT2AddrModeImm8s4OpValue";
   let DecoderMethod = "DecodeT2AddrModeImm8s4";
   let ParserMatchClass = MemImm8s4OffsetAsmOperand;
@@ -1412,7 +1413,8 @@ let mayLoad = 1, hasSideEffects = 0, hasExtraDefRegAllocReq = 1 in {
 // Load doubleword
 def t2LDRDi8  : T2Ii8s4<1, 0, 1, (outs rGPR:$Rt, rGPR:$Rt2),
                         (ins t2addrmode_imm8s4:$addr),
-                        IIC_iLoad_d_i, "ldrd", "\t$Rt, $Rt2, $addr", "", []>,
+                        IIC_iLoad_d_i, "ldrd", "\t$Rt, $Rt2, $addr", "",
+                        [(set rGPR:$Rt, rGPR:$Rt2, (ARMldrd t2addrmode_imm8s4:$addr))]>,
                  Sched<[WriteLd]>;
 } // mayLoad = 1, hasSideEffects = 0, hasExtraDefRegAllocReq = 1
 
@@ -1593,7 +1595,8 @@ defm t2STRH:T2I_st<0b01,"strh", IIC_iStore_bh_i, IIC_iStore_bh_si,
 let mayStore = 1, hasSideEffects = 0, hasExtraSrcRegAllocReq = 1 in
 def t2STRDi8 : T2Ii8s4<1, 0, 0, (outs),
                        (ins rGPR:$Rt, rGPR:$Rt2, t2addrmode_imm8s4:$addr),
-               IIC_iStore_d_r, "strd", "\t$Rt, $Rt2, $addr", "", []>,
+               IIC_iStore_d_r, "strd", "\t$Rt, $Rt2, $addr", "",
+               [(ARMstrd rGPR:$Rt, rGPR:$Rt2, t2addrmode_imm8s4:$addr)]>,
                Sched<[WriteST]>;
 
 // Indexed stores
diff --git a/llvm/test/CodeGen/ARM/i64_volatile_load_store.ll b/llvm/test/CodeGen/ARM/i64_volatile_load_store.ll
new file mode 100644
index 000000000000..7461d3651eb3
--- /dev/null
+++ b/llvm/test/CodeGen/ARM/i64_volatile_load_store.ll
@@ -0,0 +1,153 @@
+; RUN: llc -mtriple=armv5e-arm-none-eabi %s -o - | FileCheck %s --check-prefixes=CHECK-ARMV5TE,CHECK
+; RUN: llc -mtriple=thumbv6t2-arm-none-eabi %s -o - | FileCheck %s --check-prefixes=CHECK-T2,CHECK
+; RUN: llc -mtriple=armv4t-arm-none-eabi %s -o - | FileCheck %s --check-prefixes=CHECK-ARMV4T,CHECK
+
+@x = common dso_local global i64 0, align 8
+@y = common dso_local global i64 0, align 8
+
+define void @test() {
+entry:
+; CHECK-LABEL: test:
+; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
+; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
+; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
+; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
+; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
+; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
+; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
+; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
+; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
+; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #4]
+; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #4]
+; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]]]
+  %0 = load volatile i64, i64* @x, align 8
+  store volatile i64 %0, i64* @y, align 8
+  ret void
+}
+
+define void @test_offset() {
+entry:
+; CHECK-LABEL: test_offset:
+; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #-4]
+; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #-4]
+; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
+; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
+; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
+; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
+; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #-4]
+; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #-4]
+; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #-4]
+; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
+; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]]]
+; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #-4]
+  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 -4) to i64*), align 8
+  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 -4) to i64*), align 8
+  ret void
+}
+
+define void @test_offset_1() {
+; CHECK-LABEL: test_offset_1:
+; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #255]
+; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #255]
+; CHECK-T2:           adds [[ADDR0:r[0-9]+]], #255
+; CHECK-T2-NEXT:      adds [[ADDR1:r[0-9]+]], #255
+; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
+; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
+; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #255]
+; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #259]
+; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #259]
+; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #255]
+entry:
+  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 255) to i64*), align 8
+  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 255) to i64*), align 8
+  ret void
+}
+
+define void @test_offset_2() {
+; CHECK-LABEL: test_offset_2:
+; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: mov [[OFFSET0:r[0-9]+]], #256
+; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], [[OFFSET0]]]
+; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], [[OFFSET0]]]
+; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
+; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
+; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
+; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
+; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #256]
+; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #256]
+; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #256]
+; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #260]
+; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #260]
+; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #256]
+entry:
+  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 256) to i64*), align 8
+  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 256) to i64*), align 8
+  ret void
+}
+
+define void @test_offset_3() {
+; CHECK-LABEL: test_offset_3:
+; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: mov [[OFFSET0:r[0-9]+]], #1020
+; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], [[OFFSET0]]]
+; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], [[OFFSET0]]]
+; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
+; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
+; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
+; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
+; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #1020]
+; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #1020]
+; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #1020]
+; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #1024]
+; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #1024]
+; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #1020]
+entry:
+  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 1020) to i64*), align 8
+  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 1020) to i64*), align 8
+  ret void
+}
+
+define void @test_offset_4() {
+; CHECK-LABEL: test_offset_4:
+; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: mov [[OFFSET0:r[0-9]+]], #1024
+; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], [[OFFSET0]]]
+; CHECK-ARMV5TE:      ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], [[OFFSET0]]]
+; CHECK-T2:           movw [[ADDR1:r[0-9]+]], :lower16:y
+; CHECK-T2-NEXT:      movw [[ADDR0:r[0-9]+]], :lower16:x
+; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
+; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
+; CHECK-T2-NEXT:      add.w [[ADDR0]], [[ADDR0]], #1024
+; CHECK-T2-NEXT:      add.w [[ADDR1]], [[ADDR1]], #1024
+; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
+; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
+; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
+; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #1024]
+; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #1028]
+; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #1028]
+; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #1024]
+entry:
+  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 1024) to i64*), align 8
+  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 1024) to i64*), align 8
+  ret void
+}
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/532878386.6332.1576906834252.JavaMail.javamailuser%40localhost.

------=_Part_6331_306319495.1576906833528--
