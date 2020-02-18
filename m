Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBEM7WHZAKGQEJ735DRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BD23D163390
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 21:56:49 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id w6sf11482783wrm.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 12:56:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582059409; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4csmTV/wRu2SWzl4J44M/qR62X11TrAQlaDkuSoe400ZZHMJm7zEQmo717lyQqxh3
         t0/9iZgJZUj6sPEjJYyzKGzkwWGB02cwLA28d0lMs07uj+TpMjpZ5pXNL37r4o1YEo2/
         0vcd0YBHL2t0abou301ouX6jVNf42lShVCj4IrxcuZy4R2WMuxedbNXNJy8Cn+7quDnK
         jL/6yLS+iR2XJcX0KRCnmRUXhEJFWGQf/Y+/GQJ3AZo1x5YQDy6sweeE77ggwfOEurHq
         xg6P7uKU50BNQrYyZJ11mcfafityAg2yYHntmLKLndSf/W33baa/6qiH+BphoJCGPXr8
         BxyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=8FVqUpXyyoLNAlGZBEGupp8k17uk/XBpXupRcECW6xk=;
        b=QJjU3a6Y1aNMlm/KogVluaxMbMNRQbFFA4HN8A/tJdAs08vLdv1qDgixhWtRplrn6f
         Rs18T1y4GeclCex94bOPp1+7Us7zDRZvICzs1zNtduYna1UojDJPkL0cIam/t0y1mhB+
         eUma32R4sdO3DLTQfUqcMEMOrzF8FflXbUoHDWt/z2XpGscdTfKMqncfPFWgMwQcCn2G
         yzYCwHp8IOQ+b2OiztAFtg+3s/npy2ro//1xFi0iG4hQMn3v1V4BoLjewFisg9i3W+Qp
         cnr9VXZ2Jikyi6Ztntor/lVN4qDr1ja6NSl/yu55CA0rARn7pD+mIF/IiY4/wgHbxrmJ
         qXlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MDMdMAnT;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FVqUpXyyoLNAlGZBEGupp8k17uk/XBpXupRcECW6xk=;
        b=Jkw6z3iTzC8ayiOcExKSmqVgeNDHHJambqYzK8hYcCLoT0Gl3ytSGgSpihjAIJMei6
         2GATAWCpStPlF7gF9ecWE7oaY/2U70ZYHiT/0v6fVJWpyt7MNes1SGM59an3dKbXCkAd
         v6zExjeDNI6uo1jax4lNzcYWdTzKUnHVtfSUmA95JE2+dlcOaznR8PMpYMzNxe1q/m8+
         i+HQxMAoNqr3wTK2jmyYeM3bL4+LiJ6S/+VGwTnHPNLB6cq+EemMwqBIiodkTtEWmG9Q
         bD2zHIw5W5OEydNIkt79lNL7FujcFAyyZZtfKFFAmsfgBx/LYouGITpGd/E/rQAhXtd0
         umbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8FVqUpXyyoLNAlGZBEGupp8k17uk/XBpXupRcECW6xk=;
        b=UMvFHp2cjzdjFF8cE5ZlGz2P812xg+remYq3yr53DEKTa2EklXI7kN2UOrwO5n7IHP
         UXm1QdqPkyakLliOdud7ArDsW4itTRrx5IvA9vwHNGUvESu/nYnFOd4E5mIZ2/FW6mD8
         mBTghVB4jDRNEOhhx7iMT05ix+6tLYhWqLE4LXOQyFcVoMfueyYgy0a19e4wt6p2Hh5T
         iWYwBWrqKmTdGGanctlyd+IjC4+wfp3c+mqUHTHuvpfJ9x70khNgMSnddQ3g51PZQeFc
         AWgJlRJiMAo84duxRgavxAL49XgVsw0Vb8qK/N/gQ3q6ty7IhIgPDvWxHOA2VL0ds7HB
         JK4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUfzN6j+aBIiDpXDRGH55OfwSK64GyuUDWh0yfYKq/tBqxsx8B
	Mgov0W/K90On/norIavJY/s=
X-Google-Smtp-Source: APXvYqwt0NDP4fgcRAUXSsol9A5BQXUcmqxUF3sSngPtuJEO9Hqz/bZXMNt9XUaRaAk+XvV5r3b8oA==
X-Received: by 2002:adf:dc8d:: with SMTP id r13mr32195710wrj.357.1582059409305;
        Tue, 18 Feb 2020 12:56:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:65d0:: with SMTP id e16ls8570740wrw.1.gmail; Tue, 18 Feb
 2020 12:56:48 -0800 (PST)
X-Received: by 2002:adf:e382:: with SMTP id e2mr32595718wrm.128.1582059408630;
        Tue, 18 Feb 2020 12:56:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582059408; cv=none;
        d=google.com; s=arc-20160816;
        b=yOVjUlBYhNAZiqmPYvTC54u9PtndqJz5JuGajwQTvIeiYsUAjWqJFpPVGAZlXGxIFV
         3MidJbZ3/kZTMFW/1z4Jl5gtMxMLhEWqbzVHkbmIPiec/u11nLe6WnQhCa93/77Yd3qK
         zRR/tj8UrUXUsjW2pHeLA+g8OrIiwdlnmiVZOqDC966CdlwMAza2IN6+GSUoslN8Xod0
         +EOblk0jzQ24qdDwszvJZ6i/+GPMQTmzCXv4CozSs+EHa4V82SPKCyXfriItnnIyXuU+
         y1Vak50Kb0fXAxQNdZQ+jRCYW/+p3Ce8eZoyNPvIO/bhCWnG4lqGu4RUZkMUYKY3z1Ix
         5ZIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=ITWbGUcwjGT5xnih/zOc+PaexfMHy7cE6lJ0xVBa7Vg=;
        b=M6/J0maq9TQyK6Jo73x+NVKfy/548XwhG+am5XugS4miu9dDRt6dck6trS9blLw3RF
         iSZvxGQ7+NCvRcb2lWXs97bi0kqxlPQ/HCl0dJD9XzZpo/FoyCcupQJFNYYJyiybdDmh
         khK+ojcb/iwoMv1iVi0poKw6AO+oThPDzuJ0A9MK/8g8IA3vWTy3UgxEE+0Icc95++aq
         rRfReImEW7Niv0NzBJ07EE89pMuIIIymLRbY5kdYqItqxbBu0a57cLNRvZygKHTdba5B
         2wJjRPj+e/fCp7l9JX0IkBkl/PEIeMfXLUQ3gdn9MGdwlwKweTCnvrfPK3boV2P48Gn+
         hFug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MDMdMAnT;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id q202si142555wme.2.2020.02.18.12.56.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 12:56:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id p9so4200748wmc.2
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 12:56:48 -0800 (PST)
X-Received: by 2002:a1c:b789:: with SMTP id h131mr5050165wmf.148.1582059406781;
        Tue, 18 Feb 2020 12:56:46 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id z6sm7837473wrw.36.2020.02.18.12.56.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 18 Feb 2020 12:56:45 -0800 (PST)
From: ci_notify@linaro.org
Date: Tue, 18 Feb 2020 20:56:44 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1481186508.2514.1582059405589.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 25 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2513_243782511.1582059404785"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MDMdMAnT;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332
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

------=_Part_2513_243782511.1582059404785
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Culprit:
<cut>
commit a82d3e8a6e67473c94a5ce6345372748e9b61718
Author: Djordje Todorovic <djordje.todorovic@rt-rk.com>
Date:   Tue Feb 18 13:27:25 2020 +0100

    Reland "[DebugInfo] Enable the debug entry values feature by default"
    
    This patch enables the debug entry values feature.
    
      - Remove the (CC1) experimental -femit-debug-entry-values option
      - Enable it for x86, arm and aarch64 targets
      - Resolve the test failures
      - Leave the llc experimental option for targets that do not
        support the CallSiteInfo yet
    
    Differential Revision: https://reviews.llvm.org/D73534
</cut>

First few errors in logs of first_bad:
00:16:45 clang-11: error: unable to execute command: Aborted (core dumped)
00:16:45 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:16:45 make[2]: *** [fs/xfs/xfs_log_recover.o] Error 254
00:18:50 make[1]: *** [fs/xfs] Error 2
00:22:40 make: *** [fs] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="6704960f7c282714d5963aad8f7b379fa13289ea"

Results regressed to (for first_bad == a82d3e8a6e67473c94a5ce6345372748e9b61718)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18456

from (for last_good == 9e4b761aba01391bf3966a1a61eab6b5c76c70ad)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18457

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/artifact/artifacts/build-a82d3e8a6e67473c94a5ce6345372748e9b61718/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/artifact/artifacts/build-9e4b761aba01391bf3966a1a61eab6b5c76c70ad/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/

Reproduce builds:
<cut>
mkdir investigate-llvm-a82d3e8a6e67473c94a5ce6345372748e9b61718
cd investigate-llvm-a82d3e8a6e67473c94a5ce6345372748e9b61718

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach a82d3e8a6e67473c94a5ce6345372748e9b61718
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 9e4b761aba01391bf3966a1a61eab6b5c76c70ad
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/25/consoleText

Full commit:
<cut>
commit a82d3e8a6e67473c94a5ce6345372748e9b61718
Author: Djordje Todorovic <djordje.todorovic@rt-rk.com>
Date:   Tue Feb 18 13:27:25 2020 +0100

    Reland "[DebugInfo] Enable the debug entry values feature by default"
    
    This patch enables the debug entry values feature.
    
      - Remove the (CC1) experimental -femit-debug-entry-values option
      - Enable it for x86, arm and aarch64 targets
      - Resolve the test failures
      - Leave the llc experimental option for targets that do not
        support the CallSiteInfo yet
    
    Differential Revision: https://reviews.llvm.org/D73534
---
 clang/include/clang/Basic/CodeGenOptions.def       |  1 -
 clang/include/clang/Driver/CC1Options.td           |  2 -
 clang/lib/CodeGen/BackendUtil.cpp                  |  1 -
 clang/lib/CodeGen/CGDebugInfo.cpp                  |  3 +-
 clang/lib/Frontend/CompilerInvocation.cpp          | 10 ---
 clang/test/CodeGen/debug-info-extern-call.c        |  2 +-
 .../CodeGenCXX/dbg-info-all-calls-described.cpp    | 12 +--
 lldb/packages/Python/lldbsuite/test/decorators.py  |  2 +-
 .../basic_entry_values_x86_64/Makefile             |  2 +-
 llvm/include/llvm/CodeGen/CommandFlags.inc         |  2 +-
 llvm/include/llvm/Target/TargetMachine.h           |  3 +
 llvm/include/llvm/Target/TargetOptions.h           | 15 +++-
 llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp         | 15 +++-
 llvm/lib/CodeGen/AsmPrinter/DwarfDebug.h           |  9 +++
 llvm/lib/CodeGen/LiveDebugValues.cpp               |  4 +-
 llvm/lib/CodeGen/MIRParser/MIRParser.cpp           |  4 +-
 llvm/lib/CodeGen/MachineFunction.cpp               |  3 +-
 .../CodeGen/SelectionDAG/ScheduleDAGSDNodes.cpp    |  2 +-
 llvm/lib/CodeGen/TargetOptionsImpl.cpp             |  8 ++
 llvm/lib/Target/AArch64/AArch64ISelLowering.cpp    |  2 +-
 llvm/lib/Target/AArch64/AArch64TargetMachine.cpp   |  3 +
 llvm/lib/Target/ARM/ARMISelLowering.cpp            |  2 +-
 llvm/lib/Target/ARM/ARMTargetMachine.cpp           |  3 +
 llvm/lib/Target/X86/X86ISelLowering.cpp            |  2 +-
 llvm/lib/Target/X86/X86TargetMachine.cpp           |  3 +
 llvm/test/CodeGen/AArch64/arm64-anyregcc.ll        |  2 +-
 llvm/test/CodeGen/AArch64/arm64-patchpoint.ll      |  4 +-
 llvm/test/CodeGen/AArch64/arm64-tls-dynamics.ll    |  2 +-
 llvm/test/CodeGen/ARM/smml.ll                      |  2 +-
 .../CodeGen/MIR/Hexagon/bundled-call-site-info.mir |  2 +
 .../test/CodeGen/MIR/X86/call-site-info-error1.mir |  2 +-
 .../test/CodeGen/MIR/X86/call-site-info-error2.mir |  2 +-
 .../test/CodeGen/MIR/X86/call-site-info-error3.mir |  2 +-
 .../test/CodeGen/MIR/X86/call-site-info-error4.mir |  4 +-
 llvm/test/CodeGen/X86/call-site-info-output.ll     |  4 +-
 llvm/test/CodeGen/X86/hoist-invariant-load.ll      |  2 +-
 .../X86/speculative-load-hardening-indirect.ll     |  2 +-
 llvm/test/CodeGen/X86/statepoint-allocas.ll        |  2 +-
 llvm/test/CodeGen/X86/tail-dup-repeat.ll           |  2 +-
 llvm/test/CodeGen/X86/xray-custom-log.ll           |  4 +-
 llvm/test/CodeGen/X86/xray-typed-event-log.ll      |  4 +-
 .../DebugInfo/AArch64/call-site-info-output.ll     |  2 +-
 llvm/test/DebugInfo/ARM/call-site-info-output.ll   |  2 +-
 .../DebugInfo/ARM/entry-value-multi-byte-expr.ll   |  2 +-
 .../MIR/AArch64/dbgcall-site-interpret-movzxi.mir  |  2 +-
 .../MIR/AArch64/dbgcall-site-interpretation.mir    |  2 +-
 .../MIR/AArch64/dbgcall-site-orr-moves.mir         |  2 +-
 .../MIR/ARM/dbgcall-site-interpretation.mir        |  2 +-
 .../MIR/ARM/dbgcall-site-propagated-value.mir      |  4 +-
 .../MIR/ARM/if-coverter-call-site-info.mir         |  5 +-
 .../dbgcall-site-instr-before-bundled-call.mir     |  4 +-
 .../live-debug-values-bundled-entry-values.mir     |  2 +
 llvm/test/DebugInfo/MIR/SystemZ/call-site-lzer.mir |  2 +
 llvm/test/DebugInfo/MIR/X86/DW_OP_entry_value.mir  |  2 +-
 .../MIR/X86/call-site-gnu-vs-dwarf5-attrs.mir      | 10 ++-
 .../dbg-call-site-spilled-arg-multiple-defs.mir    |  4 +-
 .../MIR/X86/dbg-call-site-spilled-arg.mir          |  4 +-
 .../MIR/X86/dbgcall-site-copy-super-sub.mir        |  2 +-
 .../MIR/X86/dbgcall-site-interpretation.mir        |  2 +-
 .../MIR/X86/dbgcall-site-lea-interpretation.mir    |  2 +-
 .../MIR/X86/dbgcall-site-partial-describe.mir      |  2 +-
 .../DebugInfo/MIR/X86/dbgcall-site-reference.mir   |  2 +-
 .../DebugInfo/MIR/X86/dbgcall-site-reg-shuffle.mir |  2 +-
 .../MIR/X86/dbgcall-site-two-fwd-reg-defs.mir      |  2 +-
 llvm/test/DebugInfo/MIR/X86/dbginfo-entryvals.mir  |  2 +-
 .../DebugInfo/MIR/X86/debug-call-site-param.mir    |  4 +-
 .../MIR/X86/entry-value-of-modified-param.mir      |  2 +-
 .../DebugInfo/MIR/X86/entry-values-diamond-bbs.mir |  2 +-
 .../MIR/X86/kill-entry-value-after-diamond-bbs.mir |  2 +-
 .../MIR/X86/multiple-param-dbg-value-entry.mir     |  2 +-
 .../MIR/X86/propagate-entry-value-cross-bbs.mir    |  2 +-
 .../MIR/X86/unreachable-block-call-site.mir        |  2 +-
 .../Sparc/entry-value-complex-reg-expr.ll          |  2 +
 llvm/test/DebugInfo/X86/dbg-value-range.ll         |  2 +-
 .../DebugInfo/X86/dbg-value-regmask-clobber.ll     |  6 +-
 .../test/DebugInfo/X86/dbgcall-site-64-bit-imms.ll |  2 +-
 .../DebugInfo/X86/dbgcall-site-zero-valued-imms.ll |  2 +-
 llvm/test/DebugInfo/X86/loclists-dwp.ll            |  6 +-
 llvm/test/DebugInfo/X86/no-entry-values-with-O0.ll | 88 ++++++++++++++++++++++
 llvm/test/tools/llvm-dwarfdump/X86/locstats.ll     |  2 +-
 .../llvm-dwarfdump/X86/stats-dbg-callsite-info.ll  |  5 +-
 .../X86/valid-call-site-GNU-extensions.ll          |  2 +-
 llvm/test/tools/llvm-locstats/locstats.ll          |  6 +-
 83 files changed, 248 insertions(+), 115 deletions(-)

diff --git a/clang/include/clang/Basic/CodeGenOptions.def b/clang/include/clang/Basic/CodeGenOptions.def
index 48c0df49e32..fa450724ddd 100644
--- a/clang/include/clang/Basic/CodeGenOptions.def
+++ b/clang/include/clang/Basic/CodeGenOptions.def
@@ -63,7 +63,6 @@ CODEGENOPT(ExperimentalNewPassManager, 1, 0) ///< Enables the new, experimental
 CODEGENOPT(DebugPassManager, 1, 0) ///< Prints debug information for the new
                                    ///< pass manager.
 CODEGENOPT(DisableRedZone    , 1, 0) ///< Set when -mno-red-zone is enabled.
-CODEGENOPT(EnableDebugEntryValues, 1, 0) ///< Emit call site parameter dbg info
 CODEGENOPT(IndirectTlsSegRefs, 1, 0) ///< Set when -mno-tls-direct-seg-refs
                                      ///< is specified.
 CODEGENOPT(DisableTailCalls  , 1, 0) ///< Do not emit tail calls.
diff --git a/clang/include/clang/Driver/CC1Options.td b/clang/include/clang/Driver/CC1Options.td
index 733a1080be5..8dcf28e3481 100644
--- a/clang/include/clang/Driver/CC1Options.td
+++ b/clang/include/clang/Driver/CC1Options.td
@@ -390,8 +390,6 @@ def flto_visibility_public_std:
 def flto_unit: Flag<["-"], "flto-unit">,
     HelpText<"Emit IR to support LTO unit features (CFI, whole program vtable opt)">;
 def fno_lto_unit: Flag<["-"], "fno-lto-unit">;
-def femit_debug_entry_values : Flag<["-"], "femit-debug-entry-values">,
-    HelpText<"Enables debug info about call site parameter's entry values">;
 def fdebug_pass_manager : Flag<["-"], "fdebug-pass-manager">,
     HelpText<"Prints debug information for the new pass manager">;
 def fno_debug_pass_manager : Flag<["-"], "fno-debug-pass-manager">,
diff --git a/clang/lib/CodeGen/BackendUtil.cpp b/clang/lib/CodeGen/BackendUtil.cpp
index 6c71cf793c0..6cd0af6caff 100644
--- a/clang/lib/CodeGen/BackendUtil.cpp
+++ b/clang/lib/CodeGen/BackendUtil.cpp
@@ -481,7 +481,6 @@ static void initTargetOptions(llvm::TargetOptions &Options,
   Options.DebuggerTuning = CodeGenOpts.getDebuggerTuning();
   Options.EmitStackSizeSection = CodeGenOpts.StackSizeSection;
   Options.EmitAddrsig = CodeGenOpts.Addrsig;
-  Options.EnableDebugEntryValues = CodeGenOpts.EnableDebugEntryValues;
   Options.ForceDwarfFrameSection = CodeGenOpts.ForceDwarfFrameSection;
 
   Options.MCOptions.SplitDwarfFile = CodeGenOpts.SplitDwarfFile;
diff --git a/clang/lib/CodeGen/CGDebugInfo.cpp b/clang/lib/CodeGen/CGDebugInfo.cpp
index e171082942f..f706ffb92a0 100644
--- a/clang/lib/CodeGen/CGDebugInfo.cpp
+++ b/clang/lib/CodeGen/CGDebugInfo.cpp
@@ -4861,8 +4861,7 @@ llvm::DINode::DIFlags CGDebugInfo::getCallSiteRelatedAttrs() const {
       (CGM.getCodeGenOpts().getDebuggerTuning() == llvm::DebuggerKind::LLDB ||
        CGM.getCodeGenOpts().getDebuggerTuning() == llvm::DebuggerKind::GDB);
 
-  if (!SupportsDWARFv4Ext && CGM.getCodeGenOpts().DwarfVersion < 5 &&
-      !CGM.getCodeGenOpts().EnableDebugEntryValues)
+  if (!SupportsDWARFv4Ext && CGM.getCodeGenOpts().DwarfVersion < 5)
     return llvm::DINode::FlagZero;
 
   return llvm::DINode::FlagAllCallsDescribed;
diff --git a/clang/lib/Frontend/CompilerInvocation.cpp b/clang/lib/Frontend/CompilerInvocation.cpp
index ecbdf0376bc..2a7ec58b214 100644
--- a/clang/lib/Frontend/CompilerInvocation.cpp
+++ b/clang/lib/Frontend/CompilerInvocation.cpp
@@ -792,16 +792,6 @@ static bool ParseCodeGenArgs(CodeGenOptions &Opts, ArgList &Args, InputKind IK,
 
   Opts.DisableLLVMPasses = Args.hasArg(OPT_disable_llvm_passes);
   Opts.DisableLifetimeMarkers = Args.hasArg(OPT_disable_lifetimemarkers);
-
-  const llvm::Triple::ArchType DebugEntryValueArchs[] = {
-      llvm::Triple::x86, llvm::Triple::x86_64, llvm::Triple::aarch64,
-      llvm::Triple::arm, llvm::Triple::armeb};
-
-  llvm::Triple T(TargetOpts.Triple);
-  if (Opts.OptimizationLevel > 0 && Opts.hasReducedDebugInfo() &&
-      llvm::is_contained(DebugEntryValueArchs, T.getArch()))
-    Opts.EnableDebugEntryValues = Args.hasArg(OPT_femit_debug_entry_values);
-
   Opts.DisableO0ImplyOptNone = Args.hasArg(OPT_disable_O0_optnone);
   Opts.DisableRedZone = Args.hasArg(OPT_disable_red_zone);
   Opts.IndirectTlsSegRefs = Args.hasArg(OPT_mno_tls_direct_seg_refs);
diff --git a/clang/test/CodeGen/debug-info-extern-call.c b/clang/test/CodeGen/debug-info-extern-call.c
index da3764f7359..072e578b589 100644
--- a/clang/test/CodeGen/debug-info-extern-call.c
+++ b/clang/test/CodeGen/debug-info-extern-call.c
@@ -1,7 +1,7 @@
 // When entry values are emitted, expect a subprogram for extern decls so that
 // the dwarf generator can describe call site parameters at extern call sites.
 //
-// RUN: %clang -Xclang -femit-debug-entry-values -g -O2 -target x86_64-none-linux-gnu -S -emit-llvm %s -o - \
+// RUN: %clang -g -O2 -target x86_64-none-linux-gnu -S -emit-llvm %s -o - \
 // RUN:   | FileCheck %s -check-prefix=DECLS-FOR-EXTERN
 
 // Similarly, when the debugger tuning is gdb, expect a subprogram for extern
diff --git a/clang/test/CodeGenCXX/dbg-info-all-calls-described.cpp b/clang/test/CodeGenCXX/dbg-info-all-calls-described.cpp
index 667c2469b55..540ef02c908 100644
--- a/clang/test/CodeGenCXX/dbg-info-all-calls-described.cpp
+++ b/clang/test/CodeGenCXX/dbg-info-all-calls-described.cpp
@@ -15,22 +15,22 @@
 // RUN: | FileCheck %s -check-prefix=HAS-ATTR \
 // RUN:     -implicit-check-not=DISubprogram -implicit-check-not=DIFlagAllCallsDescribed
 
-// Supported: DWARF4 + GDB tuning by using '-femit-debug-entry-values'
-// RUN: %clang_cc1 -femit-debug-entry-values -emit-llvm -triple x86_64-linux-gnu \
+// Supported: DWARF4 + GDB tuning, -O1
+// RUN: %clang_cc1 -emit-llvm -triple x86_64-linux-gnu \
 // RUN:   %s -o - -O1 -disable-llvm-passes -debugger-tuning=gdb \
 // RUN:   -debug-info-kind=standalone -dwarf-version=4 \
 // RUN: | FileCheck %s -check-prefix=HAS-ATTR \
 // RUN:     -implicit-check-not=DIFlagAllCallsDescribed
 
-// Supported: DWARF4 + LLDB tuning by using '-femit-debug-entry-values'
-// RUN: %clang_cc1 -femit-debug-entry-values -emit-llvm -triple x86_64-linux-gnu \
+// Supported: DWARF4 + LLDB tuning, -O1
+// RUN: %clang_cc1 -emit-llvm -triple x86_64-linux-gnu \
 // RUN:   %s -o - -O1 -disable-llvm-passes -debugger-tuning=lldb \
 // RUN:   -debug-info-kind=standalone -dwarf-version=4 \
 // RUN: | FileCheck %s -check-prefix=HAS-ATTR \
 // RUN:     -implicit-check-not=DIFlagAllCallsDescribed
 
-// Unsupported: -O0 + '-femit-debug-entry-values'
-// RUN: %clang_cc1 -femit-debug-entry-values -emit-llvm -triple x86_64-linux-gnu \
+// Unsupported: -O0
+// RUN: %clang_cc1 -emit-llvm -triple x86_64-linux-gnu \
 // RUN:   %s -o - -O0 -disable-llvm-passes -debugger-tuning=gdb \
 // RUN:   -debug-info-kind=standalone -dwarf-version=4 \
 // RUN: | FileCheck %s -check-prefix=NO-ATTR
diff --git a/lldb/packages/Python/lldbsuite/test/decorators.py b/lldb/packages/Python/lldbsuite/test/decorators.py
index ec17cb7c256..39cda3a8195 100644
--- a/lldb/packages/Python/lldbsuite/test/decorators.py
+++ b/lldb/packages/Python/lldbsuite/test/decorators.py
@@ -694,7 +694,7 @@ def skipUnlessHasCallSiteInfo(func):
 
         f = tempfile.NamedTemporaryFile()
         cmd = "echo 'int main() {}' | " \
-              "%s -g -glldb -O1 -Xclang -femit-debug-entry-values -S -emit-llvm -x c -o %s -" % (compiler_path, f.name)
+              "%s -g -glldb -O1 -S -emit-llvm -x c -o %s -" % (compiler_path, f.name)
         if os.popen(cmd).close() is not None:
             return "Compiler can't compile with call site info enabled"
 
diff --git a/lldb/test/API/functionalities/param_entry_vals/basic_entry_values_x86_64/Makefile b/lldb/test/API/functionalities/param_entry_vals/basic_entry_values_x86_64/Makefile
index db8fa57abb9..ab505a68412 100644
--- a/lldb/test/API/functionalities/param_entry_vals/basic_entry_values_x86_64/Makefile
+++ b/lldb/test/API/functionalities/param_entry_vals/basic_entry_values_x86_64/Makefile
@@ -1,3 +1,3 @@
 CXX_SOURCES := main.cpp
-CXXFLAGS_EXTRAS := -O2 -glldb -Xclang -femit-debug-entry-values
+CXXFLAGS_EXTRAS := -O2 -glldb
 include Makefile.rules
diff --git a/llvm/include/llvm/CodeGen/CommandFlags.inc b/llvm/include/llvm/CodeGen/CommandFlags.inc
index e1229346175..8b676655d2d 100644
--- a/llvm/include/llvm/CodeGen/CommandFlags.inc
+++ b/llvm/include/llvm/CodeGen/CommandFlags.inc
@@ -277,7 +277,7 @@ static cl::opt<bool>
 
 static cl::opt<bool>
     EnableDebugEntryValues("debug-entry-values",
-                           cl::desc("Emit debug info about parameter's entry values"),
+                           cl::desc("Enable debug info for the debug entry values"),
                            cl::init(false));
 
 static cl::opt<bool>
diff --git a/llvm/include/llvm/Target/TargetMachine.h b/llvm/include/llvm/Target/TargetMachine.h
index 176ae39b17a..3c2e2fe1a37 100644
--- a/llvm/include/llvm/Target/TargetMachine.h
+++ b/llvm/include/llvm/Target/TargetMachine.h
@@ -237,6 +237,9 @@ public:
   void setSupportsDefaultOutlining(bool Enable) {
     Options.SupportsDefaultOutlining = Enable;
   }
+  void setSupportsDebugEntryValues(bool Enable) {
+    Options.SupportsDebugEntryValues = Enable;
+  }
 
   bool shouldPrintMachineCode() const { return Options.PrintMachineCode; }
 
diff --git a/llvm/include/llvm/Target/TargetOptions.h b/llvm/include/llvm/Target/TargetOptions.h
index 84c6ee2a638..535909cc77c 100644
--- a/llvm/include/llvm/Target/TargetOptions.h
+++ b/llvm/include/llvm/Target/TargetOptions.h
@@ -119,7 +119,8 @@ namespace llvm {
           ExplicitEmulatedTLS(false), EnableIPRA(false),
           EmitStackSizeSection(false), EnableMachineOutliner(false),
           SupportsDefaultOutlining(false), EmitAddrsig(false),
-          EnableDebugEntryValues(false), ForceDwarfFrameSection(false) {}
+          SupportsDebugEntryValues(false), EnableDebugEntryValues(false),
+          ForceDwarfFrameSection(false) {}
 
     /// PrintMachineCode - This flag is enabled when the -print-machineinstrs
     /// option is specified on the command line, and should enable debugging
@@ -256,8 +257,18 @@ namespace llvm {
     /// Emit address-significance table.
     unsigned EmitAddrsig : 1;
 
-    /// Emit debug info about parameter's entry values.
+    /// Set if the target supports the debug entry values by default.
+    unsigned SupportsDebugEntryValues : 1;
+    /// When set to true, the EnableDebugEntryValues option forces production
+    /// of debug entry values even if the target does not officially support
+    /// it. Useful for testing purposes only. This flag should never be checked
+    /// directly, always use \ref ShouldEmitDebugEntryValues instead.
     unsigned EnableDebugEntryValues : 1;
+    /// NOTE: There are targets that still do not support the call site info
+    /// production (the info about the arguments passed to the call, necessary
+    /// for the debug entry values), so we keep using the experimental option
+    /// (-debug-entry-values) to test them as well.
+    bool ShouldEmitDebugEntryValues() const;
 
     /// Emit DWARF debug frame section.
     unsigned ForceDwarfFrameSection : 1;
diff --git a/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp b/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp
index 4e53edf7f02..f7467c345c6 100644
--- a/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp
+++ b/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp
@@ -95,6 +95,10 @@ static cl::opt<bool> UseDwarfRangesBaseAddressSpecifier(
     "use-dwarf-ranges-base-address-specifier", cl::Hidden,
     cl::desc("Use base address specifiers in debug_ranges"), cl::init(false));
 
+static cl::opt<bool> EmitDwarfDebugEntryValues(
+    "emit-debug-entry-values", cl::Hidden,
+    cl::desc("Emit the debug entry values"), cl::init(false));
+
 static cl::opt<bool> GenerateARangeSection("generate-arange-section",
                                            cl::Hidden,
                                            cl::desc("Generate dwarf aranges"),
@@ -419,6 +423,12 @@ DwarfDebug::DwarfDebug(AsmPrinter *A, Module *M)
   // a monolithic string offsets table without any header.
   UseSegmentedStringOffsetsTable = DwarfVersion >= 5;
 
+  // Emit call-site-param debug info for GDB and LLDB, if the target supports
+  // the debug entry values feature. It can also be enabled explicitly.
+  EmitDebugEntryValues = (Asm->TM.Options.ShouldEmitDebugEntryValues() &&
+                          (tuneForGDB() || tuneForLLDB())) ||
+                         EmitDwarfDebugEntryValues;
+
   Asm->OutStreamer->getContext().setDwarfVersion(DwarfVersion);
 }
 
@@ -840,9 +850,8 @@ void DwarfDebug::constructCallSiteEntryDIEs(const DISubprogram &SP,
       DIE &CallSiteDIE = CU.constructCallSiteEntryDIE(ScopeDIE, CalleeDIE,
                                                       IsTail, PCAddr, CallReg);
 
-      // GDB and LLDB support call site parameter debug info.
-      if (Asm->TM.Options.EnableDebugEntryValues &&
-          (tuneForGDB() || tuneForLLDB())) {
+      // Optionally emit call-site-param debug info.
+      if (emitDebugEntryValues()) {
         ParamSet Params;
         // Try to interpret values of call site parameters.
         collectCallSiteParameters(&MI, Params);
diff --git a/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.h b/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.h
index a44960589d8..882fc739d79 100644
--- a/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.h
+++ b/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.h
@@ -386,6 +386,11 @@ class DwarfDebug : public DebugHandlerBase {
   /// a monolithic sequence of string offsets.
   bool UseSegmentedStringOffsetsTable;
 
+  /// Enable production of call site parameters needed to print the debug entry
+  /// values. Useful for testing purposes when a debugger does not support the
+  /// feature yet.
+  bool EmitDebugEntryValues;
+
   /// Separated Dwarf Variables
   /// In general these will all be for bits that are left in the
   /// original object file, rather than things that are meant
@@ -708,6 +713,10 @@ public:
     return UseSegmentedStringOffsetsTable;
   }
 
+  bool emitDebugEntryValues() const {
+    return EmitDebugEntryValues;
+  }
+
   bool shareAcrossDWOCUs() const;
 
   /// Returns the Dwarf Version.
diff --git a/llvm/lib/CodeGen/LiveDebugValues.cpp b/llvm/lib/CodeGen/LiveDebugValues.cpp
index 259604adb5c..23a63698a0f 100644
--- a/llvm/lib/CodeGen/LiveDebugValues.cpp
+++ b/llvm/lib/CodeGen/LiveDebugValues.cpp
@@ -984,7 +984,7 @@ void LiveDebugValues::transferRegisterDef(
 
   if (auto *TPC = getAnalysisIfAvailable<TargetPassConfig>()) {
     auto &TM = TPC->getTM<TargetMachine>();
-    if (TM.Options.EnableDebugEntryValues)
+    if (TM.Options.ShouldEmitDebugEntryValues())
       emitEntryValues(MI, OpenRanges, VarLocIDs, Transfers, KillSet);
   }
 }
@@ -1484,7 +1484,7 @@ void LiveDebugValues::recordEntryValue(const MachineInstr &MI,
                                        VarLocMap &VarLocIDs) {
   if (auto *TPC = getAnalysisIfAvailable<TargetPassConfig>()) {
     auto &TM = TPC->getTM<TargetMachine>();
-    if (!TM.Options.EnableDebugEntryValues)
+    if (!TM.Options.ShouldEmitDebugEntryValues())
       return;
   }
 
diff --git a/llvm/lib/CodeGen/MIRParser/MIRParser.cpp b/llvm/lib/CodeGen/MIRParser/MIRParser.cpp
index 10157c746b4..69d14cf68ec 100644
--- a/llvm/lib/CodeGen/MIRParser/MIRParser.cpp
+++ b/llvm/lib/CodeGen/MIRParser/MIRParser.cpp
@@ -381,11 +381,11 @@ bool MIRParserImpl::initializeCallSiteInfo(
       CSInfo.emplace_back(Reg, ArgRegPair.ArgNo);
     }
 
-    if (TM.Options.EnableDebugEntryValues)
+    if (TM.Options.ShouldEmitDebugEntryValues())
       MF.addCallArgsForwardingRegs(&*CallI, std::move(CSInfo));
   }
 
-  if (YamlMF.CallSitesInfo.size() && !TM.Options.EnableDebugEntryValues)
+  if (YamlMF.CallSitesInfo.size() && !TM.Options.ShouldEmitDebugEntryValues())
     return error(Twine("Call site info provided but not used"));
   return false;
 }
diff --git a/llvm/lib/CodeGen/MachineFunction.cpp b/llvm/lib/CodeGen/MachineFunction.cpp
index 06b5ab5b7f4..2eb8d9460e0 100644
--- a/llvm/lib/CodeGen/MachineFunction.cpp
+++ b/llvm/lib/CodeGen/MachineFunction.cpp
@@ -865,8 +865,7 @@ MachineFunction::CallSiteInfoMap::iterator
 MachineFunction::getCallSiteInfo(const MachineInstr *MI) {
   assert(MI->isCandidateForCallSiteEntry() &&
          "Call site info refers only to call (MI) candidates");
-
-  if (!Target.Options.EnableDebugEntryValues)
+  if (!Target.Options.ShouldEmitDebugEntryValues())
     return CallSitesInfo.end();
   return CallSitesInfo.find(MI);
 }
diff --git a/llvm/lib/CodeGen/SelectionDAG/ScheduleDAGSDNodes.cpp b/llvm/lib/CodeGen/SelectionDAG/ScheduleDAGSDNodes.cpp
index 7bded0005a5..532efa718c5 100644
--- a/llvm/lib/CodeGen/SelectionDAG/ScheduleDAGSDNodes.cpp
+++ b/llvm/lib/CodeGen/SelectionDAG/ScheduleDAGSDNodes.cpp
@@ -867,7 +867,7 @@ EmitSchedule(MachineBasicBlock::iterator &InsertPos) {
     }
 
     if (MI->isCandidateForCallSiteEntry() &&
-        DAG->getTarget().Options.EnableDebugEntryValues)
+        DAG->getTarget().Options.ShouldEmitDebugEntryValues())
       MF.addCallArgsForwardingRegs(MI, DAG->getSDCallSiteInfo(Node));
 
     return MI;
diff --git a/llvm/lib/CodeGen/TargetOptionsImpl.cpp b/llvm/lib/CodeGen/TargetOptionsImpl.cpp
index d794a261ecb..3db0f2f2829 100644
--- a/llvm/lib/CodeGen/TargetOptionsImpl.cpp
+++ b/llvm/lib/CodeGen/TargetOptionsImpl.cpp
@@ -45,3 +45,11 @@ bool TargetOptions::DisableFramePointerElim(const MachineFunction &MF) const {
 bool TargetOptions::HonorSignDependentRoundingFPMath() const {
   return !UnsafeFPMath && HonorSignDependentRoundingFPMathOption;
 }
+
+/// NOTE: There are targets that still do not support the call site info
+/// production (the info about the arguments passed to the call, necessary
+/// for the debug entry values), so we keep using the experimental option
+/// (-debug-entry-values) to test them as well.
+bool TargetOptions::ShouldEmitDebugEntryValues() const {
+  return SupportsDebugEntryValues || EnableDebugEntryValues;
+}
diff --git a/llvm/lib/Target/AArch64/AArch64ISelLowering.cpp b/llvm/lib/Target/AArch64/AArch64ISelLowering.cpp
index 59dd4905de5..58a518fbe5d 100644
--- a/llvm/lib/Target/AArch64/AArch64ISelLowering.cpp
+++ b/llvm/lib/Target/AArch64/AArch64ISelLowering.cpp
@@ -4206,7 +4206,7 @@ AArch64TargetLowering::LowerCall(CallLoweringInfo &CLI,
         RegsToPass.emplace_back(VA.getLocReg(), Arg);
         RegsUsed.insert(VA.getLocReg());
         const TargetOptions &Options = DAG.getTarget().Options;
-        if (Options.EnableDebugEntryValues)
+        if (Options.SupportsDebugEntryValues)
           CSInfo.emplace_back(VA.getLocReg(), i);
       }
     } else {
diff --git a/llvm/lib/Target/AArch64/AArch64TargetMachine.cpp b/llvm/lib/Target/AArch64/AArch64TargetMachine.cpp
index bc7b4384662..d50bd090aee 100644
--- a/llvm/lib/Target/AArch64/AArch64TargetMachine.cpp
+++ b/llvm/lib/Target/AArch64/AArch64TargetMachine.cpp
@@ -309,6 +309,9 @@ AArch64TargetMachine::AArch64TargetMachine(const Target &T, const Triple &TT,
 
   // AArch64 supports default outlining behaviour.
   setSupportsDefaultOutlining(true);
+
+  // AArch64 supports the debug entry values.
+  setSupportsDebugEntryValues(true);
 }
 
 AArch64TargetMachine::~AArch64TargetMachine() = default;
diff --git a/llvm/lib/Target/ARM/ARMISelLowering.cpp b/llvm/lib/Target/ARM/ARMISelLowering.cpp
index ba62127d79e..690271289da 100644
--- a/llvm/lib/Target/ARM/ARMISelLowering.cpp
+++ b/llvm/lib/Target/ARM/ARMISelLowering.cpp
@@ -2223,7 +2223,7 @@ ARMTargetLowering::LowerCall(TargetLowering::CallLoweringInfo &CLI,
         isThisReturn = true;
       }
       const TargetOptions &Options = DAG.getTarget().Options;
-      if (Options.EnableDebugEntryValues)
+      if (Options.SupportsDebugEntryValues)
         CSInfo.emplace_back(VA.getLocReg(), i);
       RegsToPass.push_back(std::make_pair(VA.getLocReg(), Arg));
     } else if (isByVal) {
diff --git a/llvm/lib/Target/ARM/ARMTargetMachine.cpp b/llvm/lib/Target/ARM/ARMTargetMachine.cpp
index 84876eda33a..63aa65267ef 100644
--- a/llvm/lib/Target/ARM/ARMTargetMachine.cpp
+++ b/llvm/lib/Target/ARM/ARMTargetMachine.cpp
@@ -243,6 +243,9 @@ ARMBaseTargetMachine::ARMBaseTargetMachine(const Target &T, const Triple &TT,
     this->Options.NoTrapAfterNoreturn = true;
   }
 
+  // ARM supports the debug entry values.
+  setSupportsDebugEntryValues(true);
+
   initAsmInfo();
 }
 
diff --git a/llvm/lib/Target/X86/X86ISelLowering.cpp b/llvm/lib/Target/X86/X86ISelLowering.cpp
index fee2b19794d..be8d290169c 100644
--- a/llvm/lib/Target/X86/X86ISelLowering.cpp
+++ b/llvm/lib/Target/X86/X86ISelLowering.cpp
@@ -4020,7 +4020,7 @@ X86TargetLowering::LowerCall(TargetLowering::CallLoweringInfo &CLI,
     } else if (VA.isRegLoc()) {
       RegsToPass.push_back(std::make_pair(VA.getLocReg(), Arg));
       const TargetOptions &Options = DAG.getTarget().Options;
-      if (Options.EnableDebugEntryValues)
+      if (Options.SupportsDebugEntryValues)
         CSInfo.emplace_back(VA.getLocReg(), I);
       if (isVarArg && IsWin64) {
         // Win64 ABI requires argument XMM reg to be copied to the corresponding
diff --git a/llvm/lib/Target/X86/X86TargetMachine.cpp b/llvm/lib/Target/X86/X86TargetMachine.cpp
index 22b4e2805a5..0cfa7bb0477 100644
--- a/llvm/lib/Target/X86/X86TargetMachine.cpp
+++ b/llvm/lib/Target/X86/X86TargetMachine.cpp
@@ -232,6 +232,9 @@ X86TargetMachine::X86TargetMachine(const Target &T, const Triple &TT,
 
   setMachineOutliner(true);
 
+  // x86 supports the debug entry values.
+  setSupportsDebugEntryValues(true);
+
   initAsmInfo();
 }
 
diff --git a/llvm/test/CodeGen/AArch64/arm64-anyregcc.ll b/llvm/test/CodeGen/AArch64/arm64-anyregcc.ll
index 33bbfa2d81d..10989a07990 100644
--- a/llvm/test/CodeGen/AArch64/arm64-anyregcc.ll
+++ b/llvm/test/CodeGen/AArch64/arm64-anyregcc.ll
@@ -1,4 +1,4 @@
-; RUN: llc < %s -debug-entry-values -mtriple=arm64-apple-darwin | FileCheck %s
+; RUN: llc < %s -mtriple=arm64-apple-darwin | FileCheck %s
 
 ; Stackmap Header: no constants - 6 callsites
 ; CHECK-LABEL: .section	__LLVM_STACKMAPS,__llvm_stackmaps
diff --git a/llvm/test/CodeGen/AArch64/arm64-patchpoint.ll b/llvm/test/CodeGen/AArch64/arm64-patchpoint.ll
index b64f2455908..2f9004bb22e 100644
--- a/llvm/test/CodeGen/AArch64/arm64-patchpoint.ll
+++ b/llvm/test/CodeGen/AArch64/arm64-patchpoint.ll
@@ -1,5 +1,5 @@
-; RUN: llc -mtriple=arm64-apple-darwin -debug-entry-values -enable-misched=0 -mcpu=cyclone                             < %s | FileCheck %s
-; RUN: llc -mtriple=arm64-apple-darwin -debug-entry-values -enable-misched=0 -mcpu=cyclone -fast-isel -fast-isel-abort=1 < %s | FileCheck %s
+; RUN: llc -mtriple=arm64-apple-darwin -enable-misched=0 -mcpu=cyclone                             < %s | FileCheck %s
+; RUN: llc -mtriple=arm64-apple-darwin -enable-misched=0 -mcpu=cyclone -fast-isel -fast-isel-abort=1 < %s | FileCheck %s
 
 ; Trivial patchpoint codegen
 ;
diff --git a/llvm/test/CodeGen/AArch64/arm64-tls-dynamics.ll b/llvm/test/CodeGen/AArch64/arm64-tls-dynamics.ll
index 9a24d6acfa1..7be781f4c6a 100644
--- a/llvm/test/CodeGen/AArch64/arm64-tls-dynamics.ll
+++ b/llvm/test/CodeGen/AArch64/arm64-tls-dynamics.ll
@@ -1,6 +1,6 @@
 ; Verify the call site info. If the call site info is not
 ; in the valid state, an assert should be triggered.
-; RUN: llc < %s -debug-entry-values -mtriple=arm64-none-linux-gnu -stop-after=machineverifier -relocation-model=pic -aarch64-elf-ldtls-generation=1 < %s
+; RUN: llc < %s -mtriple=arm64-none-linux-gnu -stop-after=machineverifier -relocation-model=pic -aarch64-elf-ldtls-generation=1 < %s
 
 ; RUN: llc -mtriple=arm64-none-linux-gnu -relocation-model=pic -aarch64-elf-ldtls-generation=1 -verify-machineinstrs < %s | FileCheck %s
 ; RUN: llc -mtriple=arm64-none-linux-gnu -relocation-model=pic -aarch64-elf-ldtls-generation=1 -filetype=obj < %s | llvm-objdump -r - | FileCheck --check-prefix=CHECK-RELOC %s
diff --git a/llvm/test/CodeGen/ARM/smml.ll b/llvm/test/CodeGen/ARM/smml.ll
index 712aaa4392f..9ddb1a28301 100644
--- a/llvm/test/CodeGen/ARM/smml.ll
+++ b/llvm/test/CodeGen/ARM/smml.ll
@@ -10,7 +10,7 @@
 
 ; Next test would previously trigger an assertion responsible for verification of
 ; call site info state.
-; RUN: llc -stop-after=if-converter -debug-entry-values -mtriple=thumbv6t2-eabi %s -o -| FileCheck %s -check-prefix=CHECK-CALLSITE
+; RUN: llc -stop-after=if-converter -mtriple=thumbv6t2-eabi %s -o -| FileCheck %s -check-prefix=CHECK-CALLSITE
 ; CHECK-CALLSITE: name:  test_used_flags
 ; CHECK-CALLSITE: callSites:
 
diff --git a/llvm/test/CodeGen/MIR/Hexagon/bundled-call-site-info.mir b/llvm/test/CodeGen/MIR/Hexagon/bundled-call-site-info.mir
index 5ffa0293a2e..96a9411af31 100644
--- a/llvm/test/CodeGen/MIR/Hexagon/bundled-call-site-info.mir
+++ b/llvm/test/CodeGen/MIR/Hexagon/bundled-call-site-info.mir
@@ -1,3 +1,5 @@
+# We do not support the call site info for the target now, so we use the experimental option (-debug-entry-values).
+
 # RUN: llc -debug-entry-values -run-pass=none -verify-machineinstrs -o - %s | FileCheck %s
 
 # Verify that it is possible to read and write MIR where a callSites entry
diff --git a/llvm/test/CodeGen/MIR/X86/call-site-info-error1.mir b/llvm/test/CodeGen/MIR/X86/call-site-info-error1.mir
index 096a80f77db..c28e1d7084f 100644
--- a/llvm/test/CodeGen/MIR/X86/call-site-info-error1.mir
+++ b/llvm/test/CodeGen/MIR/X86/call-site-info-error1.mir
@@ -1,4 +1,4 @@
-# RUN: not llc -mtriple=x86_64-- -run-pass none -debug-entry-values %s -o - 2>&1 | FileCheck %s
+# RUN: not llc -mtriple=x86_64-- -run-pass none %s -o - 2>&1 | FileCheck %s
 # CHECK: baa call instruction block out of range. Unable to reference bb:1
 --- |
   define dso_local i32 @baa(i32 %a) local_unnamed_addr {
diff --git a/llvm/test/CodeGen/MIR/X86/call-site-info-error2.mir b/llvm/test/CodeGen/MIR/X86/call-site-info-error2.mir
index bd5b2451a8d..ca26a738f6e 100644
--- a/llvm/test/CodeGen/MIR/X86/call-site-info-error2.mir
+++ b/llvm/test/CodeGen/MIR/X86/call-site-info-error2.mir
@@ -1,4 +1,4 @@
-# RUN: not llc -mtriple=x86_64-- -run-pass none -debug-entry-values %s -o - 2>&1 | FileCheck %s
+# RUN: not llc -mtriple=x86_64-- -run-pass none %s -o - 2>&1 | FileCheck %s
 # CHECK: baa call instruction offset out of range. Unable to reference instruction at bb: 0 at offset:1
 --- |
   define dso_local i32 @baa(i32 %a) local_unnamed_addr {
diff --git a/llvm/test/CodeGen/MIR/X86/call-site-info-error3.mir b/llvm/test/CodeGen/MIR/X86/call-site-info-error3.mir
index ded9fd2bb1b..3271a8b3a80 100644
--- a/llvm/test/CodeGen/MIR/X86/call-site-info-error3.mir
+++ b/llvm/test/CodeGen/MIR/X86/call-site-info-error3.mir
@@ -1,4 +1,4 @@
-# RUN: not llc -mtriple=x86_64-- -run-pass none -debug-entry-values %s -o - 2>&1 | FileCheck %s
+# RUN: not llc -mtriple=x86_64-- -run-pass none %s -o - 2>&1 | FileCheck %s
 # CHECK: baa call site info should reference call instruction. Instruction at bb:0 at offset:0 is not a call instruction
 --- |
   define dso_local i32 @baa(i32 %a) local_unnamed_addr {
diff --git a/llvm/test/CodeGen/MIR/X86/call-site-info-error4.mir b/llvm/test/CodeGen/MIR/X86/call-site-info-error4.mir
index 2472aa707e1..8f71d2b21da 100644
--- a/llvm/test/CodeGen/MIR/X86/call-site-info-error4.mir
+++ b/llvm/test/CodeGen/MIR/X86/call-site-info-error4.mir
@@ -1,5 +1,5 @@
-# RUN: not llc -mtriple=x86_64-- -run-pass none %s -o - 2>&1 | FileCheck %s
-# CHECK: Call site info provided but not used
+# RUN: llc -mtriple=x86_64-- -run-pass none %s -o - 2>&1 | FileCheck %s
+# CHECK-NOT: Call site info provided but not used
 --- |
   define dso_local i32 @baa(i32 %a) local_unnamed_addr {
   entry:
diff --git a/llvm/test/CodeGen/X86/call-site-info-output.ll b/llvm/test/CodeGen/X86/call-site-info-output.ll
index 4b1e236aadf..8586d34762d 100644
--- a/llvm/test/CodeGen/X86/call-site-info-output.ll
+++ b/llvm/test/CodeGen/X86/call-site-info-output.ll
@@ -1,6 +1,6 @@
 ; Test call site info MIR printer and parser.Parser assertions and machine
 ; verifier will check the rest;
-; RUN: llc -debug-entry-values %s -stop-before=finalize-isel -o %t.mir
+; RUN: llc %s -stop-before=finalize-isel -o %t.mir
 ; RUN: cat %t.mir | FileCheck %s
 ; CHECK: name: fn2
 ; CHECK: callSites:
@@ -10,7 +10,7 @@
 ; CHECK-NEXT:   arg: 0, reg: '$edi'
 ; CHECK-NEXT:   arg: 1, reg: '$esi'
 ; CHECK-NEXT:   arg: 2, reg: '$edx'
-; RUN: llc -debug-entry-values %t.mir -run-pass=finalize-isel -o -| FileCheck %s --check-prefix=PARSER
+; RUN: llc %t.mir -run-pass=finalize-isel -o -| FileCheck %s --check-prefix=PARSER
 ; Verify that we are able to parse output mir and that we are getting the same result.
 ; PARSER: name: fn2
 ; PARSER: callSites:
diff --git a/llvm/test/CodeGen/X86/hoist-invariant-load.ll b/llvm/test/CodeGen/X86/hoist-invariant-load.ll
index 13b72bdfc6d..0c7ec862c7a 100644
--- a/llvm/test/CodeGen/X86/hoist-invariant-load.ll
+++ b/llvm/test/CodeGen/X86/hoist-invariant-load.ll
@@ -2,7 +2,7 @@
 
 ; Verify the call site info. If the call site info is not
 ; in the valid state, an assert should be triggered.
-; RUN: llc < %s -debug-entry-values -stop-after=machineverifier
+; RUN: llc < %s -stop-after=machineverifier
 
 ; REQUIRES: asserts
 ; RUN: llc -mcpu=haswell < %s -O2 2>&1 | FileCheck %s
diff --git a/llvm/test/CodeGen/X86/speculative-load-hardening-indirect.ll b/llvm/test/CodeGen/X86/speculative-load-hardening-indirect.ll
index f393595ef9b..8bab95a0419 100644
--- a/llvm/test/CodeGen/X86/speculative-load-hardening-indirect.ll
+++ b/llvm/test/CodeGen/X86/speculative-load-hardening-indirect.ll
@@ -2,7 +2,7 @@
 
 ; Verify the call site info. If the call site info is not
 ; in the valid state, an assert should be triggered.
-; RUN: llc < %s -debug-entry-values -mtriple=x86_64-unknown-linux-gnu -x86-speculative-load-hardening -stop-after=machineverifier
+; RUN: llc < %s -mtriple=x86_64-unknown-linux-gnu -x86-speculative-load-hardening -stop-after=machineverifier
 
 ; RUN: llc < %s -mtriple=x86_64-unknown-linux-gnu -x86-speculative-load-hardening -data-sections | FileCheck %s --check-prefix=X64
 ; FIXME: Fix machine verifier issues and remove -verify-machineinstrs=0. PR39451.
diff --git a/llvm/test/CodeGen/X86/statepoint-allocas.ll b/llvm/test/CodeGen/X86/statepoint-allocas.ll
index e469f38b311..c7bae8ff18c 100644
--- a/llvm/test/CodeGen/X86/statepoint-allocas.ll
+++ b/llvm/test/CodeGen/X86/statepoint-allocas.ll
@@ -1,5 +1,5 @@
 ; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
-; RUN: llc -verify-machineinstrs -debug-entry-values < %s | FileCheck %s
+; RUN: llc -verify-machineinstrs < %s | FileCheck %s
 ; Check that we can lower a use of an alloca both as a deopt value (where the
 ; exact meaning is up to the consumer of the stackmap) and as an explicit spill
 ; slot used for GC.
diff --git a/llvm/test/CodeGen/X86/tail-dup-repeat.ll b/llvm/test/CodeGen/X86/tail-dup-repeat.ll
index fffc135fa52..9a06c9a723b 100644
--- a/llvm/test/CodeGen/X86/tail-dup-repeat.ll
+++ b/llvm/test/CodeGen/X86/tail-dup-repeat.ll
@@ -1,5 +1,5 @@
 ; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
-; RUN: llc < %s -mtriple=x86_64-unknown-linux-gnu -debug-entry-values | FileCheck %s
+; RUN: llc < %s -mtriple=x86_64-unknown-linux-gnu | FileCheck %s
 
 ; Function Attrs: uwtable
 ; When tail-duplicating during placement, we work backward from blocks with
diff --git a/llvm/test/CodeGen/X86/xray-custom-log.ll b/llvm/test/CodeGen/X86/xray-custom-log.ll
index f53e6c676c3..3a3d6a5df0d 100644
--- a/llvm/test/CodeGen/X86/xray-custom-log.ll
+++ b/llvm/test/CodeGen/X86/xray-custom-log.ll
@@ -1,5 +1,5 @@
-; RUN: llc -verify-machineinstrs -debug-entry-values -filetype=asm -o - -mtriple=x86_64-unknown-linux-gnu < %s | FileCheck %s
-; RUN: llc -verify-machineinstrs -debug-entry-values -filetype=asm -o - \
+; RUN: llc -verify-machineinstrs -filetype=asm -o - -mtriple=x86_64-unknown-linux-gnu < %s | FileCheck %s
+; RUN: llc -verify-machineinstrs -filetype=asm -o - \
 ; RUN:     -mtriple=x86_64-unknown-linux-gnu -relocation-model=pic < %s | FileCheck %s -check-prefix=PIC
 
 define i32 @fn() nounwind noinline uwtable "function-instrument"="xray-always" {
diff --git a/llvm/test/CodeGen/X86/xray-typed-event-log.ll b/llvm/test/CodeGen/X86/xray-typed-event-log.ll
index aa7e19947f9..0ed8ed7f659 100644
--- a/llvm/test/CodeGen/X86/xray-typed-event-log.ll
+++ b/llvm/test/CodeGen/X86/xray-typed-event-log.ll
@@ -1,5 +1,5 @@
-; RUN: llc -verify-machineinstrs -debug-entry-values -filetype=asm -o - -mtriple=x86_64-unknown-linux-gnu < %s | FileCheck %s
-; RUN: llc -verify-machineinstrs -debug-entry-values -filetype=asm -o - -mtriple=x86_64-unknown-linux-gnu \
+; RUN: llc -verify-machineinstrs -filetype=asm -o - -mtriple=x86_64-unknown-linux-gnu < %s | FileCheck %s
+; RUN: llc -verify-machineinstrs -filetype=asm -o - -mtriple=x86_64-unknown-linux-gnu \
 ; RUN:    -relocation-model=pic < %s | FileCheck %s -check-prefix=PIC
 
 define i32 @fn() nounwind noinline uwtable "function-instrument"="xray-always" {
diff --git a/llvm/test/DebugInfo/AArch64/call-site-info-output.ll b/llvm/test/DebugInfo/AArch64/call-site-info-output.ll
index d52d6962f3c..6817aabd602 100644
--- a/llvm/test/DebugInfo/AArch64/call-site-info-output.ll
+++ b/llvm/test/DebugInfo/AArch64/call-site-info-output.ll
@@ -1,4 +1,4 @@
-; RUN: llc -mtriple aarch64-linux-gnu -debug-entry-values %s -o - -stop-before=finalize-isel | FileCheck %s
+; RUN: llc -mtriple aarch64-linux-gnu %s -o - -stop-before=finalize-isel | FileCheck %s
 ; Verify that Selection DAG knows how to recognize simple function parameter forwarding registers.
 ; Produced from:
 ; extern int fn1(int,int,int);
diff --git a/llvm/test/DebugInfo/ARM/call-site-info-output.ll b/llvm/test/DebugInfo/ARM/call-site-info-output.ll
index 9255a7d57dd..e1cd900aefb 100644
--- a/llvm/test/DebugInfo/ARM/call-site-info-output.ll
+++ b/llvm/test/DebugInfo/ARM/call-site-info-output.ll
@@ -1,4 +1,4 @@
-; RUN: llc -mtriple arm-linux-gnu -debug-entry-values %s -o - -stop-before=finalize-isel | FileCheck %s
+; RUN: llc -mtriple arm-linux-gnu %s -o - -stop-before=finalize-isel | FileCheck %s
 ; Verify that Selection DAG knows how to recognize simple function parameter forwarding registers.
 ; Produced from:
 ; extern int fn1(int,int,int);
diff --git a/llvm/test/DebugInfo/ARM/entry-value-multi-byte-expr.ll b/llvm/test/DebugInfo/ARM/entry-value-multi-byte-expr.ll
index 71cf4178272..4c5a38161c7 100644
--- a/llvm/test/DebugInfo/ARM/entry-value-multi-byte-expr.ll
+++ b/llvm/test/DebugInfo/ARM/entry-value-multi-byte-expr.ll
@@ -1,4 +1,4 @@
-; RUN: llc -debug-entry-values -filetype=asm -o - %s | FileCheck %s
+; RUN: llc -filetype=asm -o - %s | FileCheck %s
 
 ; Verify that the size operands of the DW_OP_GNU_entry_value operations are
 ; correct for the multi-byte DW_OP_regx expressions.
diff --git a/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpret-movzxi.mir b/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpret-movzxi.mir
index dc7561ca640..8fdfe37d7db 100644
--- a/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpret-movzxi.mir
+++ b/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpret-movzxi.mir
@@ -1,4 +1,4 @@
-# RUN: llc -mtriple aarch64-linux-gnu -debug-entry-values -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
+# RUN: llc -mtriple aarch64-linux-gnu -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
 #
 # Based on the following C reproducer:
 #
diff --git a/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpretation.mir b/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpretation.mir
index 0371ccef603..559a11d3d53 100644
--- a/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpretation.mir
+++ b/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-interpretation.mir
@@ -1,4 +1,4 @@
-# RUN: llc -mtriple aarch64-linux-gnu -debug-entry-values -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
+# RUN: llc -mtriple aarch64-linux-gnu -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
 # Following code is used for producing this test case. Note that
 # some of argument loading instruction are modified in order to
 # cover certain cases.
diff --git a/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-orr-moves.mir b/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-orr-moves.mir
index 9d4feaccf9e..72540049612 100644
--- a/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-orr-moves.mir
+++ b/llvm/test/DebugInfo/MIR/AArch64/dbgcall-site-orr-moves.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-after=livedebugvalues -filetype=obj -o - %s | llvm-dwarfdump - | FileCheck %s
+# RUN: llc -start-after=livedebugvalues -filetype=obj -o - %s | llvm-dwarfdump - | FileCheck %s
 
 # Based on the following C reproducer:
 #
diff --git a/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-interpretation.mir b/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-interpretation.mir
index ce8dc97f0e7..507250d0e5a 100644
--- a/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-interpretation.mir
+++ b/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-interpretation.mir
@@ -1,4 +1,4 @@
-# RUN: llc -mtriple=arm-linux-gnueabi -debug-entry-values -filetype=obj -start-after=machineverifier %s -o -| llvm-dwarfdump -| FileCheck %s
+# RUN: llc -mtriple=arm-linux-gnueabi -filetype=obj -start-after=machineverifier %s -o -| llvm-dwarfdump -| FileCheck %s
 # Following code is used for producing this test case. Note that
 # some of argument loading instruction are modified in order to
 # cover certain cases.
diff --git a/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-propagated-value.mir b/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-propagated-value.mir
index 9001c8ba8ee..13012a7dc10 100644
--- a/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-propagated-value.mir
+++ b/llvm/test/DebugInfo/MIR/ARM/dbgcall-site-propagated-value.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -run-pass=livedebugvalues -o - %s | FileCheck %s
+# RUN: llc -run-pass=livedebugvalues -o - %s | FileCheck %s
 
 # Based on the following C reproducer:
 #
@@ -20,7 +20,7 @@
 #
 # Generated using:
 #
-# clang -Os -fno-inline -Xclang -femit-debug-entry-values -g --target=armeb.
+# clang -Os -fno-inline -g --target=armeb.
 
 --- |
   target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
diff --git a/llvm/test/DebugInfo/MIR/ARM/if-coverter-call-site-info.mir b/llvm/test/DebugInfo/MIR/ARM/if-coverter-call-site-info.mir
index aa7b54c1e5b..b2b9580cdc7 100644
--- a/llvm/test/DebugInfo/MIR/ARM/if-coverter-call-site-info.mir
+++ b/llvm/test/DebugInfo/MIR/ARM/if-coverter-call-site-info.mir
@@ -1,4 +1,4 @@
-# RUN: llc -mtriple=arm-linux-gnu -debug-entry-values -run-pass if-converter %s -o -| FileCheck %s
+# RUN: llc -mtriple=arm-linux-gnu -run-pass if-converter %s -o -| FileCheck %s
 
 # Vefify that the call site info will be updated after the optimization.
 # This test case would previously trigger an assertion when
@@ -19,8 +19,7 @@
 #
 # With slight change of MIR - substitution of BL instruction with BL_pred 
 # in order to trigger optimization.
-# clang -target arm-linux-gnu -g -O2 -Xclang -femit-debug-entry-values 
-#       %s -stop-before=if-convert
+# clang -target arm-linux-gnu -g -O2 %s -stop-before=if-convert
 #
 # CHECK: callSites:
 # CHECK-NEXT: - { bb: {{.*}}, offset: {{.*}}, fwdArgRegs:
diff --git a/llvm/test/DebugInfo/MIR/Hexagon/dbgcall-site-instr-before-bundled-call.mir b/llvm/test/DebugInfo/MIR/Hexagon/dbgcall-site-instr-before-bundled-call.mir
index 8ae628af2c0..a86cd7f7a44 100644
--- a/llvm/test/DebugInfo/MIR/Hexagon/dbgcall-site-instr-before-bundled-call.mir
+++ b/llvm/test/DebugInfo/MIR/Hexagon/dbgcall-site-instr-before-bundled-call.mir
@@ -1,4 +1,6 @@
-# RUN: llc -mtriple hexagon -debug-entry-values -start-after=machineverifier -filetype=obj %s -o - | llvm-dwarfdump - | FileCheck %s
+# We do not support the call site info for the target now, so we use the experimental option (-debug-entry-values).
+
+# RUN: llc -debug-entry-values -mtriple hexagon -start-after=machineverifier -filetype=obj %s -o - | llvm-dwarfdump - | FileCheck %s
 
 # Based on the following C reproducer:
 #
diff --git a/llvm/test/DebugInfo/MIR/Hexagon/live-debug-values-bundled-entry-values.mir b/llvm/test/DebugInfo/MIR/Hexagon/live-debug-values-bundled-entry-values.mir
index ff0a539dd15..956db574c59 100644
--- a/llvm/test/DebugInfo/MIR/Hexagon/live-debug-values-bundled-entry-values.mir
+++ b/llvm/test/DebugInfo/MIR/Hexagon/live-debug-values-bundled-entry-values.mir
@@ -1,3 +1,5 @@
+# We do not support the call site info for the target now, so we use the experimental option (-debug-entry-values).
+
 # RUN: llc -debug-entry-values -run-pass=livedebugvalues -o - %s | FileCheck %s
 
 # Verify that the entry values for the input parameters are inserted after the
diff --git a/llvm/test/DebugInfo/MIR/SystemZ/call-site-lzer.mir b/llvm/test/DebugInfo/MIR/SystemZ/call-site-lzer.mir
index 8a4e8b5632c..4f06b1a639e 100644
--- a/llvm/test/DebugInfo/MIR/SystemZ/call-site-lzer.mir
+++ b/llvm/test/DebugInfo/MIR/SystemZ/call-site-lzer.mir
@@ -1,3 +1,5 @@
+# We do not support the call site info for the target now, so we use the experimental option (-debug-entry-values).
+
 # RUN: llc -debug-entry-values -start-after=livedebugvalues -o - %s | FileCheck %s
 
 # This test would previously trigger an assertion when trying to describe the
diff --git a/llvm/test/DebugInfo/MIR/X86/DW_OP_entry_value.mir b/llvm/test/DebugInfo/MIR/X86/DW_OP_entry_value.mir
index e6fe5d2de87..f7f74b628d1 100644
--- a/llvm/test/DebugInfo/MIR/X86/DW_OP_entry_value.mir
+++ b/llvm/test/DebugInfo/MIR/X86/DW_OP_entry_value.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-before=livedebugvalues -mtriple=x86_64-apple-darwin -o %t %s -filetype=obj
+# RUN: llc -start-before=livedebugvalues -mtriple=x86_64-apple-darwin -o %t %s -filetype=obj
 # RUN: llvm-dwarfdump %t | FileCheck %s
 #
 # int global;
diff --git a/llvm/test/DebugInfo/MIR/X86/call-site-gnu-vs-dwarf5-attrs.mir b/llvm/test/DebugInfo/MIR/X86/call-site-gnu-vs-dwarf5-attrs.mir
index 1c5922ce76f..0718878e0fa 100644
--- a/llvm/test/DebugInfo/MIR/X86/call-site-gnu-vs-dwarf5-attrs.mir
+++ b/llvm/test/DebugInfo/MIR/X86/call-site-gnu-vs-dwarf5-attrs.mir
@@ -1,14 +1,18 @@
 # Test the call site encoding in DWARF5 vs GNU extensions.
 #
-# RUN: llc -dwarf-version 4 -debugger-tune=gdb -debug-entry-values -filetype=obj \
+# RUN: llc -dwarf-version 4 -debugger-tune=gdb -filetype=obj \
 # RUN:     -mtriple=x86_64-unknown-unknown -start-after=machineverifier -o - %s  \
 # RUN:     | llvm-dwarfdump - | FileCheck %s -check-prefixes=CHECK-GNU
 #
-# RUN: llc -dwarf-version 5 -debugger-tune=lldb -debug-entry-values -filetype=obj \
+# RUN: llc -dwarf-version 5 -debugger-tune=lldb -filetype=obj \
 # RUN:     -mtriple=x86_64-unknown-unknown -start-after=machineverifier -o - %s   \
 # RUN:     | llvm-dwarfdump - | FileCheck %s -check-prefixes=CHECK-DWARF5
 #
-# RUN: llc -dwarf-version 5 -debug-entry-values -filetype=obj \
+# RUN: llc -dwarf-version 5 -filetype=obj \
+# RUN:     -mtriple=x86_64-unknown-unknown -start-after=machineverifier -o - %s   \
+# RUN:     | llvm-dwarfdump - | FileCheck %s -check-prefixes=CHECK-DWARF5
+#
+# RUN: llc -dwarf-version 5 -filetype=obj -debugger-tune=sce -emit-debug-entry-values \
 # RUN:     -mtriple=x86_64-unknown-unknown -start-after=machineverifier -o - %s   \
 # RUN:     | llvm-dwarfdump - | FileCheck %s -check-prefixes=CHECK-DWARF5
 #
diff --git a/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg-multiple-defs.mir b/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg-multiple-defs.mir
index cfb5a74056d..127706fade2 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg-multiple-defs.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg-multiple-defs.mir
@@ -2,10 +2,10 @@
 # into the forwarding register has a memory operand and multiple defs.
 # The generated code was modified a bit in order to have the scenario.
 #
-# RUN: llc -debug-entry-values -start-after=machineverifier -filetype=obj %s -o - \
+# RUN: llc -start-after=machineverifier -filetype=obj %s -o - \
 # RUN:  | llvm-dwarfdump - | FileCheck %s --implicit-check-not=DW_TAG_GNU_call_site_parameter
 #
-# Command: clang -g -O2 -Xclang -femit-debug-entry-values test.c
+# Command: clang -g -O2 test.c
 #          -mllvm -stop-before=machineverifier -o test.mir -c
 # extern void callee(int);
 # extern int y;
diff --git a/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg.mir b/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg.mir
index c32a1155d03..0d161fe26c0 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbg-call-site-spilled-arg.mir
@@ -1,9 +1,9 @@
 # Check that llvm can describe a call site parameter which resides in a spill slot.
 #
-# RUN: llc -debug-entry-values -start-after=machineverifier -filetype=obj %s -o - | llvm-dwarfdump - | FileCheck %s
+# RUN: llc -start-after=machineverifier -filetype=obj %s -o - | llvm-dwarfdump - | FileCheck %s
 # 
 # Command:
-# $ ~/src/builds/llvm-project-master-RA/bin/clang -g -Xclang -femit-debug-entry-values -O2 -c -o spill.o spill.cc -mllvm -stop-before=machineverifier -o spill.mir
+# $ ~/src/builds/llvm-project-master-RA/bin/clang -g -O2 -c -o spill.o spill.cc -mllvm -stop-before=machineverifier -o spill.mir
 #
 # Source:
 ## extern void callee(int);
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-copy-super-sub.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-copy-super-sub.mir
index a2d51a20351..271a9c101e7 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-copy-super-sub.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-copy-super-sub.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-after=livedebugvalues -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
+# RUN: llc -start-after=livedebugvalues -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
 
 # Based on the following reproducer:
 #
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-interpretation.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-interpretation.mir
index dc3a425e569..5204bae67ae 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-interpretation.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-interpretation.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
+# RUN: llc -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
 #
 # CHECK:        DW_TAG_GNU_call_site
 # CHECK-NEXT:     DW_AT_abstract_origin {{.*}} "foo"
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-lea-interpretation.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-lea-interpretation.mir
index 1bb70f6d453..4530ab6eae9 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-lea-interpretation.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-lea-interpretation.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
+# RUN: llc -start-after=machineverifier -filetype=obj %s -o -| llvm-dwarfdump -| FileCheck %s
 # CHECK:        DW_TAG_GNU_call_site
 # CHECK-NEXT:     DW_AT_abstract_origin {{.*}} "foo")
 # CHECK-NEXT:     DW_AT_low_pc {{.*}}
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-partial-describe.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-partial-describe.mir
index 37740951843..580eefb9234 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-partial-describe.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-partial-describe.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-before=livedebugvalues -filetype=obj -o - %s \
+# RUN: llc -start-before=livedebugvalues -filetype=obj -o - %s \
 # RUN:     | llvm-dwarfdump - | FileCheck %s --implicit-check-not=DW_TAG_GNU_call_site_parameter
 
 --- |
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reference.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reference.mir
index 235787573f5..73927772ca0 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reference.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reference.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-before=livedebugvalues -filetype=obj -o - %s | llvm-dwarfdump - | FileCheck %s
+# RUN: llc -start-before=livedebugvalues -filetype=obj -o - %s | llvm-dwarfdump - | FileCheck %s
 
 # Based on the following C++ code:
 # struct A { A(A &) {} };
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reg-shuffle.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reg-shuffle.mir
index 5b934f6dc53..c9bed340bbc 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reg-shuffle.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-reg-shuffle.mir
@@ -1,4 +1,4 @@
-# RUN: llc -debug-entry-values -start-before=livedebugvalues -filetype=obj -o - %s \
+# RUN: llc -start-before=livedebugvalues -filetype=obj -o - %s \
 # RUN:     | llvm-dwarfdump - | FileCheck %s --implicit-check-not=DW_TAG_GNU_call_site_parameter
 
 --- |
diff --git a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-two-fwd-reg-defs.mir b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-two-fwd-reg-defs.mir
index 4e1b8fdb5be..77b26c398ba 100644
--- a/llvm/test/DebugInfo/MIR/X86/dbgcall-site-two-fwd-reg-defs.mir
+++ b/llvm/test/DebugInfo/MIR/X86/dbgcall-site-two-fwd-reg-defs.mir
@@ -1,4 +1,4 @@
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1481186508.2514.1582059405589.JavaMail.javamailuser%40localhost.

------=_Part_2513_243782511.1582059404785--
