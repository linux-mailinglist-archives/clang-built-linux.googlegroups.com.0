Return-Path: <clang-built-linux+bncBDT6TV45WMPRBO6AUL5QKGQEE26Q24I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3343A27241C
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 14:44:45 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id y136sf6828101ooa.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 05:44:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600692284; cv=pass;
        d=google.com; s=arc-20160816;
        b=oi6dK7PY7SIUKGoeQKbxV9cW3VE+jbO7nPB1ZosRydK09FDbD0v1AyZGaNwXRewdDz
         gNxLhjR2XMup92ePKoWjj9Ne9JlXZHFHpxwl1MOIablYjvtdEhkCtxG8utkFXbY4wkCS
         xUtHwTa4XWQ0NQAOve+mNLVZnSMBBAyfbBvh9e0/ACYu25heoErmoZI5J3UsE2GueXoZ
         a1vkrDr0yxfvUV2Uly4ylqOnRWU6chR5s2INljP1eld4PfgCk6vlQdsxj1eQe0msnEDU
         aYUSzZ5Tx8E+f3Z7J6JDEM8CG1la67EruPzZKLzpxdgEwJlPdGMaUZ9lN2DQbdPRdFxg
         kYcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=SLxjegznjqXcruqQ4Yo84yNAUDSfq82l1EIRleL5Vak=;
        b=aLlohNQFmuSVEVcC+valOXt9hdLFPL9R7YGadiZ+siwD8dryshw9m0M2uUKQlg2Wjg
         4Y97fame3xr40HrqTwsosGqaCD4IapxdJha6m54tu2DQSQcpkWTLXnV/3GW9n+ZnHKu3
         L852p70FRvyIuvXX4QJtu4hNIaM5ooTyH4Ci8w/KbvmTf324iRAVWJIDSUVdnxrJpYHX
         SxLmwSGl3y/PcKYlmX84lE78isow4RZWGYDGn5JbOgb4HpF5QbFPgsaQKZ2KHnzJ2J5a
         M5NO3CaB89kN2asIGS5cDQp8DRWmuprGgPguqva3hsap4IFxsuzj1BdwNTaDCgxKioPo
         qtng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="2GXNuu/D";
       spf=neutral (google.com: 2607:f8b0:4864:20::532 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLxjegznjqXcruqQ4Yo84yNAUDSfq82l1EIRleL5Vak=;
        b=hgr5MyfbwEcPuPFwYEldYhQxw68DDYxvYAljt+jpmV87h+T7leLH+iqfu9gsLtQBuU
         QcqUw17JeSCRz9Ih6yuNYWzQ10BdWn3bj3MnlSMBhikK2+yEq97mDdAp/PhxTRW1heNg
         Om+NzJAsPkULX48LDLnw0UNYQ/rNGX4x58iiLWB2xmQZBZlbzeMVS30qTL7OOSvRwAKY
         CcKP7WVwr3QUimApdnkhDZRGMEZSmHMtUOHzlR1ldkXmtw/gPUs3yBPUbf1EZ/mNPaTA
         X0DtTsk5TWFjkT1ZFjHUG+NiY6GjUF+kXCbJSclqvnBaQIKHXUv3RqtFrbxahkZBwDwC
         yseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLxjegznjqXcruqQ4Yo84yNAUDSfq82l1EIRleL5Vak=;
        b=FYnC2huNs/ugXoXWroGCat/geTl9o4bXT4+rVMGVRU+T2xg45IYrqnk9bKK+mOQvDg
         J2xYxMqJZSOR+X8uDbX1s6MJcp2OLVb2SuhTSPbPKm948f1Ziw6IXtmLgzEhFXTXX/vf
         VWJA0e0LmgsadynPB2ywudgyLDLOjIsSiLsy8wiTsuEgjKtIzLUb+Qp08jM57Q0x6Jom
         O4+ikeJetEk99ota8kpZU1hqAtpDKNQ0yGqcvYyBx8bpxNMnU6P7ucHCoXP8gyTHWVcX
         BX1V7hwwjDHydnsvkrPg+OPH22KQ8DQayK3nSxu7rJl6o2w17IaGq70js8E1+gBh01Bw
         K+YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314G84Vhr+0FTCeYnTRHB6SfHCsO4i4VI9j6hGUIlKRbxi3PZzf
	4NcVq5D0UwcppQvSTEiiaUU=
X-Google-Smtp-Source: ABdhPJyytJZMpVx9DU3gxa6GHZYX9bxYaiJWkKnOtHUMR4cwJi4zI+90Rwq0+jLh9zhuFZe0EXbG3Q==
X-Received: by 2002:a4a:3308:: with SMTP id q8mr32869071ooq.48.1600692283813;
        Mon, 21 Sep 2020 05:44:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ca86:: with SMTP id x6ls747028ooq.5.gmail; Mon, 21 Sep
 2020 05:44:43 -0700 (PDT)
X-Received: by 2002:a4a:b982:: with SMTP id e2mr33702292oop.0.1600692283185;
        Mon, 21 Sep 2020 05:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600692283; cv=none;
        d=google.com; s=arc-20160816;
        b=Rll/nTsgGwCcgJtXbVsi+F/dcJFj8w1UW73It85iTPMbweLIpmvPm9mVoFuFPVzP8m
         ogVeol48sQ77EbeHLld/3ex4ztOlO14lD+ZkRHAJo47Qc7ABy9l1epA7eQXaphFgB55K
         bxMtbrlIYyZUYAEYIRsWiwU+xvE941Am/uPPOBM6MtqstuwLfZqxdqOgygNPnBOcRun9
         bpww44dIBfVrIuFA/arYMLwjQ0s6duyY/nmwXVz1jaETfN6ehz7AKlOyw3hFHYS5il2E
         /rNDBz+vNn/VVy6TEWkwhlofW1m03S0TLh7PN4cBgOS3yTDDm7KxRhq7GgVXXcYkedvb
         vR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=F4z0ihg26LxzCbyvfBBIhwM5OHj1bCMiT7IpDefsmCc=;
        b=sS9CEiyyvWI4OnCiEC7HcZvRGIzW2DusuEB2SmDhpw23c9wLvGft/ddJ7BJ4jPvUcv
         FRx5vdiPnULp2Am5Y7pzANgABfANHtQECD1JaER2A3NliFpCKAA4nVffsq3oAiePye9J
         m1Hp9KeMrviugLiFZ1bw/Xb7SJ8ZcV8aVrQZvqNOXyeok8b3lHfILvhdZV8UwmQZfo6p
         dM4Y0/NJkPlol4xKKiTVEPGScDbiWSnUBV8EvPE9+Fno+6ZSXczSwHXpNCiGMZjJ4LQ/
         syyQy8HxcB/NtrBqmoCt882jDc4HD/TpOCVUOxKIWFUhUARrlx6MIsueMlEqe5NPV1XZ
         3njw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="2GXNuu/D";
       spf=neutral (google.com: 2607:f8b0:4864:20::532 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id b12si251967ots.3.2020.09.21.05.44.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 05:44:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::532 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id t14so8922307pgl.10
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 05:44:42 -0700 (PDT)
X-Received: by 2002:a62:ac18:0:b029:142:2501:34ef with SMTP id v24-20020a62ac180000b0290142250134efmr25720429pfe.72.1600692280180;
        Mon, 21 Sep 2020 05:44:40 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id l11sm5876489pjf.17.2020.09.21.05.44.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 05:44:38 -0700 (PDT)
Message-ID: <5f68a036.1c69fb81.b332f.d4a1@mx.google.com>
Date: Mon, 21 Sep 2020 05:44:38 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20200921
Subject: next/master build: 228 builds: 22 failed, 206 passed, 1470 errors,
 240 warnings (next-20200921)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b="2GXNuu/D";       spf=neutral (google.com: 2607:f8b0:4864:20::532 is
 neither permitted nor denied by best guess record for domain of
 bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
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

next/master build: 228 builds: 22 failed, 206 passed, 1470 errors, 240 warn=
ings (next-20200921)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200921/

Tree: next
Branch: master
Git Describe: next-20200921
Git Commit: b10b8ad862118bf42c28a98b0f067619aadcfb23
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    defconfig: (clang-10) FAIL
    allmodconfig: (clang-9) FAIL
    allnoconfig: (clang-9) FAIL
    defconfig: (clang-9) FAIL
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy: (clang-9) FAIL

arm:
    multi_v7_defconfig: (clang-10) FAIL
    allmodconfig: (clang-9) FAIL
    allnoconfig: (clang-9) FAIL
    aspeed_g5_defconfig: (clang-9) FAIL
    multi_v5_defconfig: (clang-9) FAIL
    multi_v7_defconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL
    milbeaut_m10v_defconfig: (gcc-8) FAIL
    qcom_defconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL
    decstation_defconfig: (gcc-8) FAIL
    jmr3927_defconfig: (gcc-8) FAIL

riscv:
    nommu_virt_defconfig: (gcc-8) FAIL

x86_64:
    x86_64_defconfig: (clang-10) FAIL
    allmodconfig: (clang-9) FAIL
    allnoconfig: (clang-9) FAIL
    x86_64_defconfig: (clang-9) FAIL

Errors and Warnings Detected:

arc:
    haps_hs_smp_defconfig+kselftest (gcc-8): 167 errors, 24 warnings

arm64:
    allmodconfig (clang-9): 1 error
    allmodconfig (gcc-8): 9 warnings
    allnoconfig (clang-9): 1 error
    allnoconfig (gcc-8): 1 warning
    defconfig (clang-9): 1 error
    defconfig (clang-10): 1 error
    defconfig (gcc-8): 8 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-9): 1 error
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 8 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 8 warnings
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 8 warnings
    defconfig+kselftest (gcc-8): 304 errors, 11 warnings
    tinyconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 error, 8 warnings
    allmodconfig (clang-9): 2 errors
    allnoconfig (clang-9): 2 errors
    aspeed_g5_defconfig (clang-9): 2 errors
    imx_v6_v7_defconfig (gcc-8): 2 warnings
    mmp2_defconfig (gcc-8): 3 warnings
    multi_v5_defconfig (clang-9): 2 errors
    multi_v7_defconfig (clang-9): 2 errors
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (clang-10): 1 error
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 5 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 5 warnin=
gs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 5 warnings
    multi_v7_defconfig+kselftest (gcc-8): 280 errors, 9 warnings
    omap1_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 3 warnings
    pxa910_defconfig (gcc-8): 3 warnings
    qcom_defconfig (gcc-8): 1 error, 1 warning

i386:
    i386_defconfig+kselftest (gcc-8): 59 errors, 30 warnings

mips:
    32r2el_defconfig+kselftest (gcc-8): 280 errors, 20 warnings
    cavium_octeon_defconfig (gcc-8): 1 error
    decstation_defconfig (gcc-8): 1 error
    jmr3927_defconfig (gcc-8): 1 error
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning

riscv:
    defconfig+kselftest (gcc-8): 280 errors, 11 warnings
    nommu_virt_defconfig (gcc-8): 2 errors, 1 warning
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (clang-9): 2 errors
    allmodconfig (gcc-8): 1 warning
    allnoconfig (clang-9): 1 error
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-9): 2 errors
    x86_64_defconfig (clang-10): 1 error
    x86_64_defconfig+kselftest (gcc-8): 71 errors, 39 warnings

Errors summary:

    584  /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such =
file or directory
    375  /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: =
fatal error: asm/types.h: No such file or directory
    120  /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h:=
 No such file or directory
    16   /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h=
: No such file or directory
    15   arc-elf32-gcc: error: unrecognized command line option =E2=80=98-p=
thread=E2=80=99
    15   /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, =
your version of Clang is too old - please use 10.0.1 or newer.
    14   /bin/sh: 3: llc: not found
    14   /bin/sh: 1: llc: not found
    14   /bin/sh: 1: clang: not found
    11   test_execve.c:4:10: fatal error: cap-ng.h: No such file or directo=
ry
    9    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or dire=
ctory
    9    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or dir=
ectory
    8    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or dire=
ctory
    8    posix_timers.c:10:10: fatal error: sys/time.h: No such file or dir=
ectory
    8    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file =
or directory
    8    collect2: error: ld returned 1 exit status
    8    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such f=
ile or directory
    8    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or=
 directory
    8    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such=
 file or directory
    6    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or direc=
tory
    4    test_verifier.c:25:10: fatal error: sys/capability.h: No such file=
 or directory
    4    hmm-tests.c:24:10: fatal error: hugetlbfs.h: No such file or direc=
tory
    4    binderfs_test.c:22:10: fatal error: linux/android/binderfs.h: No s=
uch file or directory
    4    ../kselftest_harness.h:56:10: fatal error: asm/types.h: No such fi=
le or directory
    4    ../../../include/uapi/linux/fcntl.h:5:10: fatal error: asm/fcntl.h=
: No such file or directory
    3    validate_cap.c:2:10: fatal error: cap-ng.h: No such file or direct=
ory
    3    ipcsocket.c:6:10: fatal error: sys/socket.h: No such file or direc=
tory
    3    ionutils.c:7:10: fatal error: sys/ioctl.h: No such file or directo=
ry
    3    ion.h:18:10: fatal error: linux/ioctl.h: No such file or directory
    3    error: fallthrough annotation does not directly precede switch lab=
el
    2    udmabuf.c:13:10: fatal error: linux/udmabuf.h: No such file or dir=
ectory
    2    tls.c:1284:27: error: =E2=80=98TLS_CIPHER_AES_GCM_256=E2=80=99 und=
eclared (first use in this function); did you mean =E2=80=98TLS_CIPHER_AES_=
GCM_128=E2=80=99?
    2    tls.c:1273:39: error: storage size of =E2=80=98tls12=E2=80=99 isn=
=E2=80=99t known
    2    tls.c:1230:27: error: =E2=80=98TLS_CIPHER_AES_GCM_256=E2=80=99 und=
eclared (first use in this function); did you mean =E2=80=98TLS_CIPHER_AES_=
GCM_128=E2=80=99?
    2    tls.c:1221:39: error: storage size of =E2=80=98tls12=E2=80=99 isn=
=E2=80=99t known
    2    tls.c:116:17: error: =E2=80=98TLS_1_3_VERSION=E2=80=99 undeclared =
here (not in a function); did you mean =E2=80=98TLS_1_2_VERSION=E2=80=99?
    2    signals.S:4:10: fatal error: asm/unistd.h: No such file or directo=
ry
    2    rseq.c:25:10: fatal error: syscall.h: No such file or directory
    2    reuseport_bpf_numa.c:24:10: fatal error: numa.h: No such file or d=
irectory
    2    regression_enomem.c:5:10: fatal error: linux/types.h: No such file=
 or directory
    2    proc-fsconfig-hidepid.c:20:10: fatal error: linux/mount.h: No such=
 file or directory
    2    pm_nl_ctl.c:19:10: fatal error: linux/mptcp.h: No such file or dir=
ectory
    2    pidfd_wait.c:44:4: error: =E2=80=98struct clone_args=E2=80=99 has =
no member named =E2=80=98exit_signal=E2=80=99
    2    pidfd_wait.c:43:4: error: =E2=80=98struct clone_args=E2=80=99 has =
no member named =E2=80=98flags=E2=80=99
    2    pidfd_wait.c:42:4: error: =E2=80=98struct clone_args=E2=80=99 has =
no member named =E2=80=98pidfd=E2=80=99
    2    pidfd_wait.c:41:4: error: =E2=80=98struct clone_args=E2=80=99 has =
no member named =E2=80=98parent_tid=E2=80=99
    2    pidfd_wait.c:40:9: error: variable =E2=80=98args=E2=80=99 has init=
ializer but incomplete type
    2    pidfd_wait.c:40:20: error: storage size of =E2=80=98args=E2=80=99 =
isn=E2=80=99t known
    2    pidfd_wait.c:26:43: error: invalid application of =E2=80=98sizeof=
=E2=80=99 to incomplete type =E2=80=98struct clone_args=E2=80=99
    2    pidfd_wait.c:129:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98exit_signal=E2=80=99
    2    pidfd_wait.c:128:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98flags=E2=80=99
    2    pidfd_wait.c:127:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98pidfd=E2=80=99
    2    pidfd_wait.c:126:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98parent_tid=E2=80=99
    2    pidfd_wait.c:125:9: error: variable =E2=80=98args=E2=80=99 has ini=
tializer but incomplete type
    2    pidfd_wait.c:125:20: error: storage size of =E2=80=98args=E2=80=99=
 isn=E2=80=99t known
    2    pidfd_setns_test.c:84:34: error: invalid application of =E2=80=98s=
izeof=E2=80=99 to incomplete type =E2=80=98struct clone_args=E2=80=99
    2    pidfd_setns_test.c:81:4: error: =E2=80=98struct clone_args=E2=80=
=99 has no member named =E2=80=98pidfd=E2=80=99
    2    pidfd_setns_test.c:80:4: error: =E2=80=98struct clone_args=E2=80=
=99 has no member named =E2=80=98exit_signal=E2=80=99
    2    pidfd_setns_test.c:79:4: error: =E2=80=98struct clone_args=E2=80=
=99 has no member named =E2=80=98flags=E2=80=99
    2    pidfd_setns_test.c:78:9: error: variable =E2=80=98args=E2=80=99 ha=
s initializer but incomplete type
    2    pidfd_setns_test.c:78:20: error: storage size of =E2=80=98args=E2=
=80=99 isn=E2=80=99t known
    2    pidfd/pidfd.h:14:10: fatal error: syscall.h: No such file or direc=
tory
    2    nf-queue.c:13:10: fatal error: libmnl/libmnl.h: No such file or di=
rectory
    2    lib/kvm_util.c:302:22: error: =E2=80=98KVM_CLEAR_DIRTY_LOG=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98KVM_GET_=
DIRTY_LOG=E2=80=99?
    2    lib/kvm_util.c:299:39: error: =E2=80=98struct kvm_clear_dirty_log=
=E2=80=99 has no member named =E2=80=98num_pages=E2=80=99
    2    lib/kvm_util.c:298:32: error: =E2=80=98struct kvm_clear_dirty_log=
=E2=80=99 has no member named =E2=80=98first_page=E2=80=99
    2    lib/kvm_util.c:297:9: error: variable =E2=80=98args=E2=80=99 has i=
nitializer but incomplete type
    2    lib/kvm_util.c:297:60: error: =E2=80=98struct kvm_clear_dirty_log=
=E2=80=99 has no member named =E2=80=98slot=E2=80=99
    2    lib/kvm_util.c:297:39: error: =E2=80=98struct kvm_clear_dirty_log=
=E2=80=99 has no member named =E2=80=98dirty_bitmap=E2=80=99
    2    lib/kvm_util.c:297:29: error: storage size of =E2=80=98args=E2=80=
=99 isn=E2=80=99t known
    2    lib/assert.c:12:10: fatal error: execinfo.h: No such file or direc=
tory
    2    include/x86_64/processor.h:14:10: fatal error: asm/msr-index.h: No=
 such file or directory
    2    helpers.c:12:10: fatal error: syscall.h: No such file or directory
    2    fuse_mnt.c:17:10: fatal error: fuse.h: No such file or directory
    2    compaction_test.c:12:10: fatal error: sys/mman.h: No such file or =
directory
    2    close_range_test.c:55:10: error: expected expression before =E2=80=
=98return=E2=80=99
    2    close_range_test.c:47:11: error: expected expression before =E2=80=
=98return=E2=80=99
    2    close_range_test.c:200:11: error: expected expression before =E2=
=80=98return=E2=80=99
    2    close_range_test.c:111:11: error: expected expression before =E2=
=80=98return=E2=80=99
    2    clone3/clone3_selftests.h:55:9: error: variable =E2=80=98args=E2=
=80=99 has initializer but incomplete type
    2    clone3/clone3_selftests.h:55:20: error: storage size of =E2=80=98a=
rgs=E2=80=99 isn=E2=80=99t known
    2    /scratch/linux/include/linux/compiler-clang.h/scratch/linux/includ=
e/linux/compiler-clang.h::1111::33::  errorerror: : Sorry, your version of =
Clang is too old - please use 10.0.1 or newer.Sorry, your version of Clang =
is too old - please use 10.0.1 or newer.
    2    /scratch/linux/arch/mips/include/asm/pgtable-bits.h:258:33: error:=
 =E2=80=98_CACHE_SHIFT=E2=80=99 undeclared (first use in this function); di=
d you mean =E2=80=98L1_CACHE_SHIFT=E2=80=99?
    1    unprivileged-remount-test.c:8:10: fatal error: sys/mount.h: No suc=
h file or directory
    1    udmabuf.c:7:10: fatal error: linux/fcntl.h: No such file or direct=
ory
    1    test_fpu.c:12:10: fatal error: fenv.h: No such file or directory
    1    step_after_suspend_test.c:16:10: fatal error: sys/ptrace.h: No suc=
h file or directory
    1    splice_read.c:49:15: error: =E2=80=98SPLICE_F_MOVE=E2=80=99 undecl=
ared (first use in this function)
    1    setdate.c:10:10: fatal error: linux/rtc.h: No such file or directo=
ry
    1    seccomp_bpf.c:24:10: fatal error: linux/filter.h: No such file or =
directory
    1    seccomp_bpf.c:16:20: error: missing binary operator before token "=
("
    1    seccomp_benchmark.c:11:10: fatal error: linux/filter.h: No such fi=
le or directory
    1    sas.c:14:10: fatal error: sys/mman.h: No such file or directory
    1    rtctest.c:10:10: fatal error: linux/rtc.h: No such file or directo=
ry
    1    reuseport_bpf_cpu.c:17:10: fatal error: arpa/inet.h: No such file =
or directory
    1    reuseport_bpf.c:11:10: fatal error: error.h: No such file or direc=
tory
    1    resolve_test.c:12:10: fatal error: sys/mount.h: No such file or di=
rectory
    1    proc.h:10:10: fatal error: sys/syscall.h: No such file or director=
y
    1    posix_timers.c:217:25: error: =E2=80=98CLOCK_PROCESS_CPUTIME_ID=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98CLOCK=
_REALTIME=E2=80=99?
    1    posix_timers.c:205:25: error: =E2=80=98CLOCK_THREAD_CPUTIME_ID=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98CLOCK=
_REALTIME=E2=80=99?
    1    posix_timers.c:150:22: error: =E2=80=98CLOCK_PROCESS_CPUTIME_ID=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98CLOCK=
_REALTIME=E2=80=99?
    1    posix_timers.c:148:15: error: =E2=80=98CLOCK_THREAD_CPUTIME_ID=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98CLOCK=
_REALTIME=E2=80=99?
    1    pm_nl_ctl.c:4:10: fatal error: error.h: No such file or directory
    1    pidns.c:12:10: fatal error: sys/ioctl.h: No such file or directory
    1    owner.c:12:10: fatal error: sys/ioctl.h: No such file or directory
    1    openat2_test.c:12:10: fatal error: sys/mount.h: No such file or di=
rectory
    1    open-unlink.c:7:10: fatal error: sys/ioctl.h: No such file or dire=
ctory
    1    nosymfollow-test.c:12:10: fatal error: sys/mount.h: No such file o=
r directory
    1    nf-queue.c:11:10: fatal error: arpa/inet.h: No such file or direct=
ory
    1    nanosleep.c:27:10: fatal error: sys/timex.h: No such file or direc=
tory
    1    msgque.c:7:10: fatal error: sys/msg.h: No such file or directory
    1    mq_perf_tests.c:38:10: fatal error: mqueue.h: No such file or dire=
ctory
    1    mq_open_tests.c:33:10: fatal error: mqueue.h: No such file or dire=
ctory
    1    mptcp_connect.c:17:10: fatal error: sys/poll.h: No such file or di=
rectory
    1    mincore_selftest.c:14:10: fatal error: sys/mman.h: No such file or=
 directory
    1    membarrier_test_single_thread.c:3:10: fatal error: linux/membarrie=
r.h: No such file or directory
    1    membarrier_test_multi_thread.c:3:10: fatal error: linux/membarrier=
.h: No such file or directory
    1    load_address.c:5:10: fatal error: link.h: No such file or director=
y
    1    kcmp_test.c:12:10: fatal error: linux/unistd.h: No such file or di=
rectory
    1    fw_namespace.c:14:10: fatal error: sys/mount.h: No such file or di=
rectory
    1    error: Sorry, your version of Clang is too old - please use 10.0.1=
 or newer.
    1    epoll_wakeup_test.c:4:10: fatal error: poll.h: No such file or dir=
ectory
    1    dnotify_test.c:28:42: error: =E2=80=98DN_MULTISHOT=E2=80=99 undecl=
ared (first use in this function)
    1    dnotify_test.c:28:32: error: =E2=80=98DN_CREATE=E2=80=99 undeclare=
d (first use in this function); did you mean =E2=80=98O_CREAT=E2=80=99?
    1    dnotify_test.c:28:22: error: =E2=80=98DN_MODIFY=E2=80=99 undeclare=
d (first use in this function)
    1    dnotify_test.c:28:12: error: =E2=80=98F_NOTIFY=E2=80=99 undeclared=
 (first use in this function); did you mean =E2=80=98O_NOCTTY=E2=80=99?
    1    dnotify_test.c:27:12: error: =E2=80=98F_SETSIG=E2=80=99 undeclared=
 (first use in this function); did you mean =E2=80=98FD_SETSIZE=E2=80=99?
    1    dnotify_test.c:24:12: error: =E2=80=98SIGRTMIN=E2=80=99 undeclared=
 (first use in this function); did you mean =E2=80=98SIGTTIN=E2=80=99?
    1    dnotify_test.c:23:17: error: =E2=80=98SA_SIGINFO=E2=80=99 undeclar=
ed (first use in this function); did you mean =E2=80=98S_IFIFO=E2=80=99?
    1    dnotify_test.c:21:5: error: =E2=80=98struct sigaction=E2=80=99 has=
 no member named =E2=80=98sa_sigaction=E2=80=99
    1    dnotify_test.c:13:17: error: =E2=80=98siginfo_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} has no member named =E2=80=98si_fd=E2=80=
=99; did you mean =E2=80=98si_code=E2=80=99?
    1    devpts_pts.c:11:10: fatal error: asm/ioctls.h: No such file or dir=
ectory
    1    close_range_test.c:6:10: fatal error: linux/kernel.h: No such file=
 or directory
    1    clone3_clear_sighand.c:11:10: fatal error: linux/sched.h: No such =
file or directory
    1    clone3.c:8:10: fatal error: linux/types.h: No such file or directo=
ry
    1    bug-link-o-tmpfile.c:23:10: fatal error: sys/mount.h: No such file=
 or directory
    1    /usr/arc-elf32/sys-include/sys/dirent.h:10:2: error: #error "<dire=
nt.h> not supported"
    1    /usr/arc-elf32/sys-include/dirent.h:76:15: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:73:15: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:72:15: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:61:17: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:58:16: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:56:11: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:54:1: error: unknown type name=
 =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:53:1: error: unknown type name=
 =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:51:17: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /usr/arc-elf32/sys-include/dirent.h:48:12: error: unknown type nam=
e =E2=80=98DIR=E2=80=99
    1    /scratch/linux/mm/secretmem.c:50:33: error: =E2=80=98PMD_PAGE_ORDE=
R=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98M=
AX_ORDER=E2=80=99?
    1    /scratch/linux/mm/secretmem.c:146:6: error: implicit declaration o=
f function =E2=80=98mlock_future_check=E2=80=99; did you mean =E2=80=98lock=
s_free_lock=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    1    /scratch/linux/include/linux/compiler-clang.h:11:3: error: # error=
 Sorry, your version of Clang is too old - please use 10.0.1 or newer.
    1    /scratch/linux/drivers/gpu/drm/msm/dp/dp_display.c:1278:14: error:=
 too many arguments to function =E2=80=98dp_debug_get=E2=80=99
    1    /scratch/linux/drivers/dax/super.c:326:6: error: redefinition of =
=E2=80=98dax_supported=E2=80=99
    1    /scratch/linux/arch/mips/cavium-octeon/octeon-usb.c:537:40: error:=
 =E2=80=98res=E2=80=99 undeclared (first use in this function); did you mea=
n =E2=80=98kref=E2=80=99?
    1    ../../include/uapi/linux/types.h:5:10: fatal error: asm-generic/in=
t-ll64.h: No such file or directory

Warnings summary:

    24   cc1: warning: -fsanitize=3Daddress not supported for this target
    18   /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.=
dtsi:7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-range=
s" property but its #size-cells (1) differs from / (2)
    18   /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.=
dtsi:7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-range=
s" property but its #address-cells (1) differs from / (2)
    8    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    8    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address=
 are not supported for this target
    8    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fa=
iled prerequisite 'spi_bus_bridge'
    8    /scratch/linux/include/linux/bits.h:36:11: warning: right shift co=
unt is negative [-Wshift-count-negative]
    8    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (=
spi_bus_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for =
SPI bus
    8    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (=
spi_bus_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells f=
or SPI bus
    7    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftes=
t/lkdtm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest=
/lkdtm/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/bu=
ild/kselftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /r=
oot/build/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORR=
UPT_STACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_=
GUARD_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING=
.sh /root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/D=
OUBLE_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kself=
test/lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWR=
ITE_ALLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/bui=
ld/kselftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUD=
DY_AFTER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root=
/build/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB=
_FREE_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/ks=
elftest/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root=
/build/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.=
sh /root/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXE=
C_STACK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftes=
t/lkdtm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/bu=
ild/kselftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL=
.sh /root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/l=
kdtm/ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kse=
lftest/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.=
sh /root/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselfte=
st/lkdtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_=
NOT_ZERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVER=
FLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselft=
est/lkdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC=
_AND_TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEG=
ATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kself=
test/lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SA=
TURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/buil=
d/kselftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REF=
COUNT_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NO=
T_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATUR=
ATED.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /roo=
t/build/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOM=
IC_TIMING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/bui=
ld/kselftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHIT=
ELIST_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/=
build/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lk=
dtm/USERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh=
 /root/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkd=
tm/CFI_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/
    7    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE=
.sh
    7    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    7    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: w=
arning: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=
=98long unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=
=99 to =E2=80=98705032704=E2=80=99 [-Woverflow]
    6    pidfd.h:30:21: warning: excess elements in struct initializer
    6    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =
=E2=80=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=
=E2=80=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=
=3D]
    6    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: War=
ning (dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but =
its #size-cells (1) differs from / (2)
    6    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: War=
ning (dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but =
its #address-cells (1) differs from / (2)
    2    tls.c:1273:39: warning: unused variable =E2=80=98tls12=E2=80=99 [-=
Wunused-variable]
    2    tls.c:1221:39: warning: unused variable =E2=80=98tls12=E2=80=99 [-=
Wunused-variable]
    2    proc-uptime-002.c:18: warning: "_GNU_SOURCE" redefined
    2    proc-self-syscall.c:16: warning: "_GNU_SOURCE" redefined
    2    proc-loadavg-001.c:17: warning: "_GNU_SOURCE" redefined
    2    pidfd_wait.c:44:18: warning: excess elements in struct initializer
    2    pidfd_wait.c:24:32: warning: =E2=80=98struct clone_args=E2=80=99 d=
eclared inside parameter list will not be visible outside of this definitio=
n or declaration
    2    pidfd_wait.c:129:18: warning: excess elements in struct initialize=
r
    2    pidfd_setns_test.c:80:18: warning: excess elements in struct initi=
alizer
    2    memfd_test.c:90:6: warning: implicit declaration of function =E2=
=80=98fcntl=E2=80=99; did you mean =E2=80=98fcvt=E2=80=99? [-Wimplicit-func=
tion-declaration]
    2    memfd_test.c:64:7: warning: implicit declaration of function =E2=
=80=98open=E2=80=99; did you mean =E2=80=98popen=E2=80=99? [-Wimplicit-func=
tion-declaration]
    2    memfd_test.c:397:6: warning: implicit declaration of function =E2=
=80=98fallocate=E2=80=99; did you mean =E2=80=98alloca=E2=80=99? [-Wimplici=
t-function-declaration]
    2    lib/kvm_util.c:299:51: warning: excess elements in struct initiali=
zer
    2    lib/kvm_util.c:298:45: warning: excess elements in struct initiali=
zer
    2    lib/kvm_util.c:297:67: warning: excess elements in struct initiali=
zer
    2    lib/kvm_util.c:297:54: warning: excess elements in struct initiali=
zer
    2    lib/kvm_util.c:297:29: warning: unused variable =E2=80=98args=E2=
=80=99 [-Wunused-variable]
    2    fuse_test.c:67:6: warning: implicit declaration of function =E2=80=
=98fcntl=E2=80=99; did you mean =E2=80=98fcvt=E2=80=99? [-Wimplicit-functio=
n-declaration]
    2    fuse_test.c:261:7: warning: implicit declaration of function =E2=
=80=98open=E2=80=99; did you mean =E2=80=98popen=E2=80=99? [-Wimplicit-func=
tion-declaration]
    2    close_range_test.c:47:5: warning: implicit declaration of function=
 =E2=80=98XFAIL=E2=80=99 [-Wimplicit-function-declaration]
    2    clone3/clone3_selftests.h:45:32: warning: =E2=80=98struct clone_ar=
gs=E2=80=99 declared inside parameter list will not be visible outside of t=
his definition or declaration
    2    clone3/clone3_selftests.h:16:25: warning: excess elements in struc=
t initializer
    2    aarch64-linux-gnu-ld: warning: orphan section `.igot.plt' from `ar=
ch/arm64/kernel/head.o' being placed in section `.igot.plt'
    2    Warning: Kernel ABI header at 'tools/include/uapi/linux/netlink.h'=
 differs from latest version at 'include/uapi/linux/netlink.h'
    2    Warning: Kernel ABI header at 'tools/include/uapi/linux/if_link.h'=
 differs from latest version at 'include/uapi/linux/if_link.h'
    2    WARNING: modpost: missing MODULE_LICENSE() in sound/soc/sof/imx/im=
x-common.o
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    /scratch/linux/drivers/net/ethernet/intel/ice/ice_flow.h:197:33: w=
arning: cast from pointer to integer of different size [-Wpointer-to-int-ca=
st]
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    sync_stress_parallelism.c:93:2: warning: implicit declaration of f=
unction =E2=80=98pthread_create=E2=80=99; did you mean =E2=80=98pthread_atf=
ork=E2=80=99? [-Wimplicit-function-declaration]
    1    sync_stress_parallelism.c:100:2: warning: implicit declaration of =
function =E2=80=98pthread_join=E2=80=99; did you mean =E2=80=98pthread_atfo=
rk=E2=80=99? [-Wimplicit-function-declaration]
    1    sync_stress_consumer.c:95:3: warning: implicit declaration of func=
tion =E2=80=98pthread_mutex_unlock=E2=80=99; did you mean =E2=80=98pthread_=
atfork=E2=80=99? [-Wimplicit-function-declaration]
    1    sync_stress_consumer.c:93:3: warning: implicit declaration of func=
tion =E2=80=98pthread_mutex_lock=E2=80=99; did you mean =E2=80=98pthread_at=
fork=E2=80=99? [-Wimplicit-function-declaration]
    1    sync_stress_consumer.c:182:3: warning: implicit declaration of fun=
ction =E2=80=98pthread_join=E2=80=99; did you mean =E2=80=98pthread_atfork=
=E2=80=99? [-Wimplicit-function-declaration]
    1    sync_stress_consumer.c:174:3: warning: implicit declaration of fun=
ction =E2=80=98pthread_create=E2=80=99; did you mean =E2=80=98pthread_atfor=
k=E2=80=99? [-Wimplicit-function-declaration]
    1    sync_stress_consumer.c:171:2: warning: implicit declaration of fun=
ction =E2=80=98pthread_mutex_init=E2=80=99; did you mean =E2=80=98pthread_a=
tfork=E2=80=99? [-Wimplicit-function-declaration]
    1    splice_read.c:48:12: warning: implicit declaration of function =E2=
=80=98splice=E2=80=99; did you mean =E2=80=98pipe=E2=80=99? [-Wimplicit-fun=
ction-declaration]
    1    posix_timers.c:40:9: warning: implicit declaration of function =E2=
=80=98brk=E2=80=99; did you mean =E2=80=98sbrk=E2=80=99? [-Wimplicit-functi=
on-declaration]
    1    posix_timers.c:169:8: warning: implicit declaration of function =
=E2=80=98timer_settime=E2=80=99; did you mean =E2=80=98timerisset=E2=80=99?=
 [-Wimplicit-function-declaration]
    1    posix_timers.c:156:8: warning: implicit declaration of function =
=E2=80=98timer_create=E2=80=99; did you mean =E2=80=98timerclear=E2=80=99? =
[-Wimplicit-function-declaration]
    1    default_file_splice_read.c:7:9: warning: implicit declaration of f=
unction =E2=80=98splice=E2=80=99; did you mean =E2=80=98select=E2=80=99? [-=
Wimplicit-function-declaration]
    1    cc1: some warnings being treated as errors
    1    /tmp/cc3FuUIu.s:18192: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc3FuUIu.s:18120: Warning: using r15 results in unpredictable=
 behaviour
    1    /scratch/linux/drivers/net/ethernet/intel/ice/ice_flow.h:198:32: w=
arning: cast to pointer from integer of different size [-Wint-to-pointer-ca=
st]
    1    /scratch/linux/drivers/block/paride/bpck.c:32: warning: "PC" redef=
ined
    1    /scratch/linux/arch/arm/mach-omap1/board-ams-delta.c:462:12: warni=
ng: =E2=80=98ams_delta_camera_power=E2=80=99 defined but not used [-Wunused=
-function]
    1    .config:1178:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x28fc): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 280 errors, 20 war=
nings, 0 section mismatches

Errors:
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    ../kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or=
 directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory

Warnings:
    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =E2=80=
=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=
=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress and -fsanitize=3Dkernel-address are =
not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-9) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    error: Sorry, your version of Clang is too old - please use 10.0.1 or n=
ewer.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 section mi=
smatches

Errors:
    /scratch/linux/drivers/dax/super.c:326:6: error: redefinition of =E2=80=
=98dax_supported=E2=80=99

Warnings:
    /tmp/cc3FuUIu.s:18120: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc3FuUIu.s:18192: Warning: using r15 results in unpredictable beha=
viour
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =E2=80=
=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=
=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]
    /scratch/linux/drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warnin=
g: cast from pointer to integer of different size [-Wpointer-to-int-cast]
    /scratch/linux/drivers/net/ethernet/intel/ice/ice_flow.h:198:32: warnin=
g: cast to pointer from integer of different size [-Wint-to-pointer-cast]
    /scratch/linux/drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warnin=
g: cast from pointer to integer of different size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: modpost: missing MODULE_LICENSE() in sound/soc/sof/imx/imx-com=
mon.o

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 section=
 mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: # error Sorr=
y, your version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 section=
 mismatches

Warnings:
    WARNING: modpost: missing MODULE_LICENSE() in sound/soc/sof/imx/imx-com=
mon.o
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
size-cells (1) differs from / (2)

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-9) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-9) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h/scratch/linux/include/lin=
ux/compiler-clang.h::1111::33::  errorerror: : Sorry, your version of Clang=
 is too old - please use 10.0.1 or newer.Sorry, your version of Clang is to=
o old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 section =
mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    aarch64-linux-gnu-ld: warning: orphan section `.igot.plt' from `arch/ar=
m64/kernel/head.o' being placed in section `.igot.plt'

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, =
0 section mismatches

Errors:
    /scratch/linux/arch/mips/cavium-octeon/octeon-usb.c:537:40: error: =E2=
=80=98res=E2=80=99 undeclared (first use in this function); did you mean =
=E2=80=98kref=E2=80=99?

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 s=
ection mismatches

Errors:
    /scratch/linux/arch/mips/include/asm/pgtable-bits.h:258:33: error: =E2=
=80=98_CACHE_SHIFT=E2=80=99 undeclared (first use in this function); did yo=
u mean =E2=80=98L1_CACHE_SHIFT=E2=80=99?

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x28fc): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-9) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section m=
ismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h/scratch/linux/include/lin=
ux/compiler-clang.h::1111::33::  errorerror: : Sorry, your version of Clang=
 is too old - please use 10.0.1 or newer.Sorry, your version of Clang is to=
o old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section =
mismatches

Errors:
    error: fallthrough annotation does not directly precede switch label

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 section mi=
smatches

Warnings:
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
size-cells (1) differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-9) =E2=80=94 FAIL, 1 err=
or, 0 warnings, 0 section mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 8 warnings, 0 section mismatches

Warnings:
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
size-cells (1) differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 8 warnings, 0 section mismatches

Warnings:
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
size-cells (1) differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 8 warnings, 0 section mismatches

Warnings:
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
size-cells (1) differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 280 errors, 11 warnings,=
 0 section mismatches

Errors:
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    ../kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or=
 directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory

Warnings:
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 304 errors, 11 warnings,=
 0 section mismatches

Errors:
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    signals.S:4:10: fatal error: asm/unistd.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    ../kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or=
 directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    signals.S:4:10: fatal error: asm/unistd.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory

Warnings:
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:=
7.3-14: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" pr=
operty but its #size-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
address-cells (1) differs from / (2)
    /scratch/linux/arch/arm64/boot/dts/qcom/ipq6018.dtsi:185.3-14: Warning =
(dma_ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #=
size-cells (1) differs from / (2)
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 167 errors, 24=
 warnings, 0 section mismatches

Errors:
    ion.h:18:10: fatal error: linux/ioctl.h: No such file or directory
    ipcsocket.c:6:10: fatal error: sys/socket.h: No such file or directory
    ionutils.c:7:10: fatal error: sys/ioctl.h: No such file or directory
    step_after_suspend_test.c:16:10: fatal error: sys/ptrace.h: No such fil=
e or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    clone3.c:8:10: fatal error: linux/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    close_range_test.c:6:10: fatal error: linux/kernel.h: No such file or d=
irectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    udmabuf.c:7:10: fatal error: linux/fcntl.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    open-unlink.c:7:10: fatal error: sys/ioctl.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    devpts_pts.c:11:10: fatal error: asm/ioctls.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    epoll_wakeup_test.c:4:10: fatal error: poll.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    fw_namespace.c:14:10: fatal error: sys/mount.h: No such file or directo=
ry
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    test_fpu.c:12:10: fatal error: fenv.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    msgque.c:7:10: fatal error: sys/msg.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    ../../include/uapi/linux/types.h:5:10: fatal error: asm-generic/int-ll6=
4.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    kcmp_test.c:12:10: fatal error: linux/unistd.h: No such file or directo=
ry
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    lib/assert.c:12:10: fatal error: execinfo.h: No such file or directory
    membarrier_test_single_thread.c:3:10: fatal error: linux/membarrier.h: =
No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    ../../../include/uapi/linux/fcntl.h:5:10: fatal error: asm/fcntl.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    ../../../include/uapi/linux/fcntl.h:5:10: fatal error: asm/fcntl.h: No =
such file or directory
    mincore_selftest.c:14:10: fatal error: sys/mman.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    unprivileged-remount-test.c:8:10: fatal error: sys/mount.h: No such fil=
e or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    mq_open_tests.c:33:10: fatal error: mqueue.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    reuseport_bpf.c:11:10: fatal error: error.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    mptcp_connect.c:17:10: fatal error: sys/poll.h: No such file or directo=
ry
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    nf-queue.c:11:10: fatal error: arpa/inet.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    owner.c:12:10: fatal error: sys/ioctl.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    regression_enomem.c:5:10: fatal error: linux/types.h: No such file or d=
irectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    pidfd/pidfd.h:14:10: fatal error: syscall.h: No such file or directory
    /usr/arc-elf32/sys-include/sys/dirent.h:10:2: error: #error "<dirent.h>=
 not supported"
    /usr/arc-elf32/sys-include/dirent.h:48:12: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:51:17: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:53:1: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:54:1: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:56:11: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:58:16: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:61:17: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:72:15: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:73:15: error: unknown type name =E2=
=80=98DIR=E2=80=99
    /usr/arc-elf32/sys-include/dirent.h:76:15: error: unknown type name =E2=
=80=98DIR=E2=80=99
    proc.h:10:10: fatal error: sys/syscall.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    openat2_test.c:12:10: fatal error: sys/mount.h: No such file or directo=
ry
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    helpers.c:12:10: fatal error: syscall.h: No such file or directory
    rseq.c:25:10: fatal error: syscall.h: No such file or directory
    rtctest.c:10:10: fatal error: linux/rtc.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    seccomp_bpf.c:16:20: error: missing binary operator before token "("
    seccomp_bpf.c:24:10: fatal error: linux/filter.h: No such file or direc=
tory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    sas.c:14:10: fatal error: sys/mman.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    posix_timers.c:148:15: error: =E2=80=98CLOCK_THREAD_CPUTIME_ID=E2=80=99=
 undeclared (first use in this function); did you mean =E2=80=98CLOCK_REALT=
IME=E2=80=99?
    posix_timers.c:150:22: error: =E2=80=98CLOCK_PROCESS_CPUTIME_ID=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98CLOCK_RE=
ALTIME=E2=80=99?
    posix_timers.c:205:25: error: =E2=80=98CLOCK_THREAD_CPUTIME_ID=E2=80=99=
 undeclared (first use in this function); did you mean =E2=80=98CLOCK_REALT=
IME=E2=80=99?
    posix_timers.c:217:25: error: =E2=80=98CLOCK_PROCESS_CPUTIME_ID=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98CLOCK_RE=
ALTIME=E2=80=99?
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    bug-link-o-tmpfile.c:23:10: fatal error: sys/mount.h: No such file or d=
irectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    compaction_test.c:12:10: fatal error: sys/mman.h: No such file or direc=
tory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    ion.h:18:10: fatal error: linux/ioctl.h: No such file or directory
    ipcsocket.c:6:10: fatal error: sys/socket.h: No such file or directory
    ionutils.c:7:10: fatal error: sys/ioctl.h: No such file or directory
    ion.h:18:10: fatal error: linux/ioctl.h: No such file or directory
    ipcsocket.c:6:10: fatal error: sys/socket.h: No such file or directory
    ionutils.c:7:10: fatal error: sys/ioctl.h: No such file or directory
    validate_cap.c:2:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    clone3_clear_sighand.c:11:10: fatal error: linux/sched.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    load_address.c:5:10: fatal error: link.h: No such file or directory
    dnotify_test.c:13:17: error: =E2=80=98siginfo_t=E2=80=99 {aka =E2=80=98=
struct <anonymous>=E2=80=99} has no member named =E2=80=98si_fd=E2=80=99; d=
id you mean =E2=80=98si_code=E2=80=99?
    dnotify_test.c:21:5: error: =E2=80=98struct sigaction=E2=80=99 has no m=
ember named =E2=80=98sa_sigaction=E2=80=99
    dnotify_test.c:23:17: error: =E2=80=98SA_SIGINFO=E2=80=99 undeclared (f=
irst use in this function); did you mean =E2=80=98S_IFIFO=E2=80=99?
    dnotify_test.c:24:12: error: =E2=80=98SIGRTMIN=E2=80=99 undeclared (fir=
st use in this function); did you mean =E2=80=98SIGTTIN=E2=80=99?
    dnotify_test.c:27:12: error: =E2=80=98F_SETSIG=E2=80=99 undeclared (fir=
st use in this function); did you mean =E2=80=98FD_SETSIZE=E2=80=99?
    dnotify_test.c:28:12: error: =E2=80=98F_NOTIFY=E2=80=99 undeclared (fir=
st use in this function); did you mean =E2=80=98O_NOCTTY=E2=80=99?
    dnotify_test.c:28:22: error: =E2=80=98DN_MODIFY=E2=80=99 undeclared (fi=
rst use in this function)
    dnotify_test.c:28:32: error: =E2=80=98DN_CREATE=E2=80=99 undeclared (fi=
rst use in this function); did you mean =E2=80=98O_CREAT=E2=80=99?
    dnotify_test.c:28:42: error: =E2=80=98DN_MULTISHOT=E2=80=99 undeclared =
(first use in this function)
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    lib/assert.c:12:10: fatal error: execinfo.h: No such file or directory
    membarrier_test_multi_thread.c:3:10: fatal error: linux/membarrier.h: N=
o such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    ../../../include/uapi/linux/fcntl.h:5:10: fatal error: asm/fcntl.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    ../../../include/uapi/linux/fcntl.h:5:10: fatal error: asm/fcntl.h: No =
such file or directory
    nosymfollow-test.c:12:10: fatal error: sys/mount.h: No such file or dir=
ectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    mq_perf_tests.c:38:10: fatal error: mqueue.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    reuseport_bpf_cpu.c:17:10: fatal error: arpa/inet.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    pm_nl_ctl.c:4:10: fatal error: error.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    pidns.c:12:10: fatal error: sys/ioctl.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    regression_enomem.c:5:10: fatal error: linux/types.h: No such file or d=
irectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    pidfd/pidfd.h:14:10: fatal error: syscall.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    resolve_test.c:12:10: fatal error: sys/mount.h: No such file or directo=
ry
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    helpers.c:12:10: fatal error: syscall.h: No such file or directory
    rseq.c:25:10: fatal error: syscall.h: No such file or directory
    setdate.c:10:10: fatal error: linux/rtc.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    seccomp_benchmark.c:11:10: fatal error: linux/filter.h: No such file or=
 directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    splice_read.c:49:15: error: =E2=80=98SPLICE_F_MOVE=E2=80=99 undeclared =
(first use in this function)
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    arc-elf32-gcc: error: unrecognized command line option =E2=80=98-pthrea=
d=E2=80=99
    nanosleep.c:27:10: fatal error: sys/timex.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    compaction_test.c:12:10: fatal error: sys/mman.h: No such file or direc=
tory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory

Warnings:
    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =E2=80=
=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=
=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    default_file_splice_read.c:7:9: warning: implicit declaration of functi=
on =E2=80=98splice=E2=80=99; did you mean =E2=80=98select=E2=80=99? [-Wimpl=
icit-function-declaration]
    sync_stress_parallelism.c:93:2: warning: implicit declaration of functi=
on =E2=80=98pthread_create=E2=80=99; did you mean =E2=80=98pthread_atfork=
=E2=80=99? [-Wimplicit-function-declaration]
    sync_stress_parallelism.c:100:2: warning: implicit declaration of funct=
ion =E2=80=98pthread_join=E2=80=99; did you mean =E2=80=98pthread_atfork=E2=
=80=99? [-Wimplicit-function-declaration]
    sync_stress_consumer.c:93:3: warning: implicit declaration of function =
=E2=80=98pthread_mutex_lock=E2=80=99; did you mean =E2=80=98pthread_atfork=
=E2=80=99? [-Wimplicit-function-declaration]
    sync_stress_consumer.c:95:3: warning: implicit declaration of function =
=E2=80=98pthread_mutex_unlock=E2=80=99; did you mean =E2=80=98pthread_atfor=
k=E2=80=99? [-Wimplicit-function-declaration]
    sync_stress_consumer.c:171:2: warning: implicit declaration of function=
 =E2=80=98pthread_mutex_init=E2=80=99; did you mean =E2=80=98pthread_atfork=
=E2=80=99? [-Wimplicit-function-declaration]
    sync_stress_consumer.c:174:3: warning: implicit declaration of function=
 =E2=80=98pthread_create=E2=80=99; did you mean =E2=80=98pthread_atfork=E2=
=80=99? [-Wimplicit-function-declaration]
    sync_stress_consumer.c:182:3: warning: implicit declaration of function=
 =E2=80=98pthread_join=E2=80=99; did you mean =E2=80=98pthread_atfork=E2=80=
=99? [-Wimplicit-function-declaration]
    posix_timers.c:40:9: warning: implicit declaration of function =E2=80=
=98brk=E2=80=99; did you mean =E2=80=98sbrk=E2=80=99? [-Wimplicit-function-=
declaration]
    posix_timers.c:156:8: warning: implicit declaration of function =E2=80=
=98timer_create=E2=80=99; did you mean =E2=80=98timerclear=E2=80=99? [-Wimp=
licit-function-declaration]
    posix_timers.c:169:8: warning: implicit declaration of function =E2=80=
=98timer_settime=E2=80=99; did you mean =E2=80=98timerisset=E2=80=99? [-Wim=
plicit-function-declaration]
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    cc1: warning: -fsanitize=3Daddress not supported for this target
    splice_read.c:48:12: warning: implicit declaration of function =E2=80=
=98splice=E2=80=99; did you mean =E2=80=98pipe=E2=80=99? [-Wimplicit-functi=
on-declaration]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 59 errors, 30 warnin=
gs, 0 section mismatches

Errors:
    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or directory
    test_verifier.c:25:10: fatal error: sys/capability.h: No such file or d=
irectory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    collect2: error: ld returned 1 exit status
    close_range_test.c:47:11: error: expected expression before =E2=80=98re=
turn=E2=80=99
    close_range_test.c:55:10: error: expected expression before =E2=80=98re=
turn=E2=80=99
    close_range_test.c:111:11: error: expected expression before =E2=80=98r=
eturn=E2=80=99
    close_range_test.c:200:11: error: expected expression before =E2=80=98r=
eturn=E2=80=99
    udmabuf.c:13:10: fatal error: linux/udmabuf.h: No such file or director=
y
    binderfs_test.c:22:10: fatal error: linux/android/binderfs.h: No such f=
ile or directory
    include/x86_64/processor.h:14:10: fatal error: asm/msr-index.h: No such=
 file or directory
    fuse_mnt.c:17:10: fatal error: fuse.h: No such file or directory
    collect2: error: ld returned 1 exit status
    reuseport_bpf_numa.c:24:10: fatal error: numa.h: No such file or direct=
ory
    pm_nl_ctl.c:19:10: fatal error: linux/mptcp.h: No such file or director=
y
    nf-queue.c:13:10: fatal error: libmnl/libmnl.h: No such file or directo=
ry
    pidfd_wait.c:26:43: error: invalid application of =E2=80=98sizeof=E2=80=
=99 to incomplete type =E2=80=98struct clone_args=E2=80=99
    pidfd_wait.c:40:9: error: variable =E2=80=98args=E2=80=99 has initializ=
er but incomplete type
    pidfd_wait.c:41:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98parent_tid=E2=80=99
    pidfd_wait.c:42:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98pidfd=E2=80=99
    pidfd_wait.c:43:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98flags=E2=80=99
    pidfd_wait.c:44:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98exit_signal=E2=80=99
    pidfd_wait.c:40:20: error: storage size of =E2=80=98args=E2=80=99 isn=
=E2=80=99t known
    pidfd_wait.c:125:9: error: variable =E2=80=98args=E2=80=99 has initiali=
zer but incomplete type
    pidfd_wait.c:126:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98parent_tid=E2=80=99
    pidfd_wait.c:127:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98pidfd=E2=80=99
    pidfd_wait.c:128:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98flags=E2=80=99
    pidfd_wait.c:129:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98exit_signal=E2=80=99
    pidfd_wait.c:125:20: error: storage size of =E2=80=98args=E2=80=99 isn=
=E2=80=99t known
    proc-fsconfig-hidepid.c:20:10: fatal error: linux/mount.h: No such file=
 or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    hmm-tests.c:24:10: fatal error: hugetlbfs.h: No such file or directory
    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or directory
    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or directory
    test_verifier.c:25:10: fatal error: sys/capability.h: No such file or d=
irectory
    validate_cap.c:2:10: fatal error: cap-ng.h: No such file or directory
    collect2: error: ld returned 1 exit status
    binderfs_test.c:22:10: fatal error: linux/android/binderfs.h: No such f=
ile or directory
    include/x86_64/processor.h:14:10: fatal error: asm/msr-index.h: No such=
 file or directory
    collect2: error: ld returned 1 exit status
    tls.c:116:17: error: =E2=80=98TLS_1_3_VERSION=E2=80=99 undeclared here =
(not in a function); did you mean =E2=80=98TLS_1_2_VERSION=E2=80=99?
    tls.c:1221:39: error: storage size of =E2=80=98tls12=E2=80=99 isn=E2=80=
=99t known
    tls.c:1230:27: error: =E2=80=98TLS_CIPHER_AES_GCM_256=E2=80=99 undeclar=
ed (first use in this function); did you mean =E2=80=98TLS_CIPHER_AES_GCM_1=
28=E2=80=99?
    tls.c:1273:39: error: storage size of =E2=80=98tls12=E2=80=99 isn=E2=80=
=99t known
    tls.c:1284:27: error: =E2=80=98TLS_CIPHER_AES_GCM_256=E2=80=99 undeclar=
ed (first use in this function); did you mean =E2=80=98TLS_CIPHER_AES_GCM_1=
28=E2=80=99?
    clone3/clone3_selftests.h:55:9: error: variable =E2=80=98args=E2=80=99 =
has initializer but incomplete type
    clone3/clone3_selftests.h:55:20: error: storage size of =E2=80=98args=
=E2=80=99 isn=E2=80=99t known
    pidfd_setns_test.c:78:9: error: variable =E2=80=98args=E2=80=99 has ini=
tializer but incomplete type
    pidfd_setns_test.c:79:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98flags=E2=80=99
    pidfd_setns_test.c:80:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98exit_signal=E2=80=99
    pidfd_setns_test.c:81:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98pidfd=E2=80=99
    pidfd_setns_test.c:78:20: error: storage size of =E2=80=98args=E2=80=99=
 isn=E2=80=99t known
    pidfd_setns_test.c:84:34: error: invalid application of =E2=80=98sizeof=
=E2=80=99 to incomplete type =E2=80=98struct clone_args=E2=80=99
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    hmm-tests.c:24:10: fatal error: hugetlbfs.h: No such file or directory

Warnings:
    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =E2=80=
=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=
=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    Warning: Kernel ABI header at 'tools/include/uapi/linux/netlink.h' diff=
ers from latest version at 'include/uapi/linux/netlink.h'
    Warning: Kernel ABI header at 'tools/include/uapi/linux/if_link.h' diff=
ers from latest version at 'include/uapi/linux/if_link.h'
    close_range_test.c:47:5: warning: implicit declaration of function =E2=
=80=98XFAIL=E2=80=99 [-Wimplicit-function-declaration]
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    memfd_test.c:64:7: warning: implicit declaration of function =E2=80=98o=
pen=E2=80=99; did you mean =E2=80=98popen=E2=80=99? [-Wimplicit-function-de=
claration]
    memfd_test.c:90:6: warning: implicit declaration of function =E2=80=98f=
cntl=E2=80=99; did you mean =E2=80=98fcvt=E2=80=99? [-Wimplicit-function-de=
claration]
    memfd_test.c:397:6: warning: implicit declaration of function =E2=80=98=
fallocate=E2=80=99; did you mean =E2=80=98alloca=E2=80=99? [-Wimplicit-func=
tion-declaration]
    fuse_test.c:67:6: warning: implicit declaration of function =E2=80=98fc=
ntl=E2=80=99; did you mean =E2=80=98fcvt=E2=80=99? [-Wimplicit-function-dec=
laration]
    fuse_test.c:261:7: warning: implicit declaration of function =E2=80=98o=
pen=E2=80=99; did you mean =E2=80=98popen=E2=80=99? [-Wimplicit-function-de=
claration]
    pidfd_wait.c:24:32: warning: =E2=80=98struct clone_args=E2=80=99 declar=
ed inside parameter list will not be visible outside of this definition or =
declaration
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd.h:30:21: warning: excess elements in struct initializer
    pidfd_wait.c:44:18: warning: excess elements in struct initializer
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd.h:30:21: warning: excess elements in struct initializer
    pidfd_wait.c:129:18: warning: excess elements in struct initializer
    proc-loadavg-001.c:17: warning: "_GNU_SOURCE" redefined
    proc-self-syscall.c:16: warning: "_GNU_SOURCE" redefined
    proc-uptime-002.c:18: warning: "_GNU_SOURCE" redefined
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/
    tls.c:1221:39: warning: unused variable =E2=80=98tls12=E2=80=99 [-Wunus=
ed-variable]
    tls.c:1273:39: warning: unused variable =E2=80=98tls12=E2=80=99 [-Wunus=
ed-variable]
    clone3/clone3_selftests.h:45:32: warning: =E2=80=98struct clone_args=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
    pidfd.h:30:21: warning: excess elements in struct initializer
    pidfd_setns_test.c:80:18: warning: excess elements in struct initialize=
r
    clone3/clone3_selftests.h:16:25: warning: excess elements in struct ini=
tializer

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    /scratch/linux/arch/mips/include/asm/pgtable-bits.h:258:33: error: =E2=
=80=98_CACHE_SHIFT=E2=80=99 undeclared (first use in this function); did yo=
u mean =E2=80=98L1_CACHE_SHIFT=E2=80=99?

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    {standard input}:39: Warning: macro instruction expanded into multiple =
instructions

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 FAIL, 1 error, 0 warnings, 0 s=
ection mismatches

Errors:
    error: fallthrough annotation does not directly precede switch label

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 5 warnings, 0 section mismatches

Warnings:
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 5 warnings, 0 section mismatches

Warnings:
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 =
warnings, 0 section mismatches

Warnings:
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 280 errors, 9 war=
nings, 0 section mismatches

Errors:
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    ../kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or=
 directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    execveat.c:11:10: fatal error: sys/sendfile.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/poll.h:1:10: fatal error: sys/poll.h: No such file or dire=
ctory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/linux/ioctl.h:5:10: fatal error: asm/ioctl.h: No such file=
 or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No =
such file or directory
    /usr/include/syscall.h:1:10: fatal error: sys/syscall.h: No such file o=
r directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    kselftest_harness.h:56:10: fatal error: asm/types.h: No such file or di=
rectory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    seccomp_bpf.c:9:10: fatal error: sys/types.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    get_size.c:29:10: fatal error: sys/sysinfo.h: No such file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    posix_timers.c:10:10: fatal error: sys/time.h: No such file or director=
y
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory
    /usr/include/stdio.h:27:10: fatal error: bits/libc-header-start.h: No s=
uch file or directory
    /scratch/linux/tools/testing/selftests/kselftest_harness.h:56:10: fatal=
 error: asm/types.h: No such file or directory
    /usr/include/features.h:424:12: fatal error: sys/cdefs.h: No such file =
or directory

Warnings:
    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =E2=80=
=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=
=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]
    /scratch/linux/drivers/gpu/drm/msm/dsi/pll/dsi_pll_7nm.c:882:19: warnin=
g: conversion from =E2=80=98long long unsigned int=E2=80=99 to =E2=80=98lon=
g unsigned int=E2=80=99 changes value from =E2=80=985000000000=E2=80=99 to =
=E2=80=98705032704=E2=80=99 [-Woverflow]
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /scratch/linux/include/linux/kern_levels.h:5:18: warning: format =E2=80=
=98%lu=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=
=99, but argument 8 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 =
section mismatches

Errors:
    /scratch/linux/mm/secretmem.c:50:33: error: =E2=80=98PMD_PAGE_ORDER=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98MAX_O=
RDER=E2=80=99?
    /scratch/linux/mm/secretmem.c:146:6: error: implicit declaration of fun=
ction =E2=80=98mlock_future_check=E2=80=99; did you mean =E2=80=98locks_fre=
e_lock=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    /scratch/linux/arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =
=E2=80=98ams_delta_camera_power=E2=80=99 defined but not used [-Wunused-fun=
ction]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SP=
I bus
    /scratch/linux/arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_b=
us_bridge): /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI b=
us
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    /scratch/linux/drivers/gpu/drm/msm/dp/dp_display.c:1278:14: error: too =
many arguments to function =E2=80=98dp_debug_get=E2=80=99

Warnings:
    /scratch/linux/include/linux/bits.h:36:11: warning: right shift count i=
s negative [-Wshift-count-negative]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    /scratch/linux/drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1178:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    aarch64-linux-gnu-ld: warning: orphan section `.igot.plt' from `arch/ar=
m64/kernel/head.o' being placed in section `.igot.plt'

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.
    /scratch/linux/include/linux/compiler-clang.h:11:3: error: Sorry, your =
version of Clang is too old - please use 10.0.1 or newer.

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 FAIL, 1 error, 0 warnings, 0 =
section mismatches

Errors:
    error: fallthrough annotation does not directly precede switch label

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 71 errors, 39 wa=
rnings, 0 section mismatches

Errors:
    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or directory
    test_verifier.c:25:10: fatal error: sys/capability.h: No such file or d=
irectory
    test_execve.c:4:10: fatal error: cap-ng.h: No such file or directory
    collect2: error: ld returned 1 exit status
    close_range_test.c:47:11: error: expected expression before =E2=80=98re=
turn=E2=80=99
    close_range_test.c:55:10: error: expected expression before =E2=80=98re=
turn=E2=80=99
    close_range_test.c:111:11: error: expected expression before =E2=80=98r=
eturn=E2=80=99
    close_range_test.c:200:11: error: expected expression before =E2=80=98r=
eturn=E2=80=99
    udmabuf.c:13:10: fatal error: linux/udmabuf.h: No such file or director=
y
    binderfs_test.c:22:10: fatal error: linux/android/binderfs.h: No such f=
ile or directory
    lib/kvm_util.c:297:9: error: variable =E2=80=98args=E2=80=99 has initia=
lizer but incomplete type
    lib/kvm_util.c:297:39: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98dirty_bitmap=E2=80=99
    lib/kvm_util.c:297:60: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98slot=E2=80=99
    lib/kvm_util.c:298:32: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98first_page=E2=80=99
    lib/kvm_util.c:299:39: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98num_pages=E2=80=99
    lib/kvm_util.c:297:29: error: storage size of =E2=80=98args=E2=80=99 is=
n=E2=80=99t known
    lib/kvm_util.c:302:22: error: =E2=80=98KVM_CLEAR_DIRTY_LOG=E2=80=99 und=
eclared (first use in this function); did you mean =E2=80=98KVM_GET_DIRTY_L=
OG=E2=80=99?
    fuse_mnt.c:17:10: fatal error: fuse.h: No such file or directory
    collect2: error: ld returned 1 exit status
    reuseport_bpf_numa.c:24:10: fatal error: numa.h: No such file or direct=
ory
    pm_nl_ctl.c:19:10: fatal error: linux/mptcp.h: No such file or director=
y
    nf-queue.c:13:10: fatal error: libmnl/libmnl.h: No such file or directo=
ry
    pidfd_wait.c:26:43: error: invalid application of =E2=80=98sizeof=E2=80=
=99 to incomplete type =E2=80=98struct clone_args=E2=80=99
    pidfd_wait.c:40:9: error: variable =E2=80=98args=E2=80=99 has initializ=
er but incomplete type
    pidfd_wait.c:41:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98parent_tid=E2=80=99
    pidfd_wait.c:42:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98pidfd=E2=80=99
    pidfd_wait.c:43:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98flags=E2=80=99
    pidfd_wait.c:44:4: error: =E2=80=98struct clone_args=E2=80=99 has no me=
mber named =E2=80=98exit_signal=E2=80=99
    pidfd_wait.c:40:20: error: storage size of =E2=80=98args=E2=80=99 isn=
=E2=80=99t known
    pidfd_wait.c:125:9: error: variable =E2=80=98args=E2=80=99 has initiali=
zer but incomplete type
    pidfd_wait.c:126:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98parent_tid=E2=80=99
    pidfd_wait.c:127:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98pidfd=E2=80=99
    pidfd_wait.c:128:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98flags=E2=80=99
    pidfd_wait.c:129:4: error: =E2=80=98struct clone_args=E2=80=99 has no m=
ember named =E2=80=98exit_signal=E2=80=99
    pidfd_wait.c:125:20: error: storage size of =E2=80=98args=E2=80=99 isn=
=E2=80=99t known
    proc-fsconfig-hidepid.c:20:10: fatal error: linux/mount.h: No such file=
 or directory
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    hmm-tests.c:24:10: fatal error: hugetlbfs.h: No such file or directory
    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or directory
    ionmap_test.c:14:10: fatal error: drm/drm.h: No such file or directory
    test_verifier.c:25:10: fatal error: sys/capability.h: No such file or d=
irectory
    validate_cap.c:2:10: fatal error: cap-ng.h: No such file or directory
    collect2: error: ld returned 1 exit status
    binderfs_test.c:22:10: fatal error: linux/android/binderfs.h: No such f=
ile or directory
    lib/kvm_util.c:297:9: error: variable =E2=80=98args=E2=80=99 has initia=
lizer but incomplete type
    lib/kvm_util.c:297:39: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98dirty_bitmap=E2=80=99
    lib/kvm_util.c:297:60: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98slot=E2=80=99
    lib/kvm_util.c:298:32: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98first_page=E2=80=99
    lib/kvm_util.c:299:39: error: =E2=80=98struct kvm_clear_dirty_log=E2=80=
=99 has no member named =E2=80=98num_pages=E2=80=99
    lib/kvm_util.c:297:29: error: storage size of =E2=80=98args=E2=80=99 is=
n=E2=80=99t known
    lib/kvm_util.c:302:22: error: =E2=80=98KVM_CLEAR_DIRTY_LOG=E2=80=99 und=
eclared (first use in this function); did you mean =E2=80=98KVM_GET_DIRTY_L=
OG=E2=80=99?
    collect2: error: ld returned 1 exit status
    tls.c:116:17: error: =E2=80=98TLS_1_3_VERSION=E2=80=99 undeclared here =
(not in a function); did you mean =E2=80=98TLS_1_2_VERSION=E2=80=99?
    tls.c:1221:39: error: storage size of =E2=80=98tls12=E2=80=99 isn=E2=80=
=99t known
    tls.c:1230:27: error: =E2=80=98TLS_CIPHER_AES_GCM_256=E2=80=99 undeclar=
ed (first use in this function); did you mean =E2=80=98TLS_CIPHER_AES_GCM_1=
28=E2=80=99?
    tls.c:1273:39: error: storage size of =E2=80=98tls12=E2=80=99 isn=E2=80=
=99t known
    tls.c:1284:27: error: =E2=80=98TLS_CIPHER_AES_GCM_256=E2=80=99 undeclar=
ed (first use in this function); did you mean =E2=80=98TLS_CIPHER_AES_GCM_1=
28=E2=80=99?
    clone3/clone3_selftests.h:55:9: error: variable =E2=80=98args=E2=80=99 =
has initializer but incomplete type
    clone3/clone3_selftests.h:55:20: error: storage size of =E2=80=98args=
=E2=80=99 isn=E2=80=99t known
    pidfd_setns_test.c:78:9: error: variable =E2=80=98args=E2=80=99 has ini=
tializer but incomplete type
    pidfd_setns_test.c:79:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98flags=E2=80=99
    pidfd_setns_test.c:80:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98exit_signal=E2=80=99
    pidfd_setns_test.c:81:4: error: =E2=80=98struct clone_args=E2=80=99 has=
 no member named =E2=80=98pidfd=E2=80=99
    pidfd_setns_test.c:78:20: error: storage size of =E2=80=98args=E2=80=99=
 isn=E2=80=99t known
    pidfd_setns_test.c:84:34: error: invalid application of =E2=80=98sizeof=
=E2=80=99 to incomplete type =E2=80=98struct clone_args=E2=80=99
    /bin/sh: 1: llc: not found
    /bin/sh: 1: clang: not found
    /bin/sh: 3: llc: not found
    hmm-tests.c:24:10: fatal error: hugetlbfs.h: No such file or directory

Warnings:
    Warning: Kernel ABI header at 'tools/include/uapi/linux/netlink.h' diff=
ers from latest version at 'include/uapi/linux/netlink.h'
    Warning: Kernel ABI header at 'tools/include/uapi/linux/if_link.h' diff=
ers from latest version at 'include/uapi/linux/if_link.h'
    close_range_test.c:47:5: warning: implicit declaration of function =E2=
=80=98XFAIL=E2=80=99 [-Wimplicit-function-declaration]
    lib/kvm_util.c:297:54: warning: excess elements in struct initializer
    lib/kvm_util.c:297:67: warning: excess elements in struct initializer
    lib/kvm_util.c:298:45: warning: excess elements in struct initializer
    lib/kvm_util.c:299:51: warning: excess elements in struct initializer
    lib/kvm_util.c:297:29: warning: unused variable =E2=80=98args=E2=80=99 =
[-Wunused-variable]
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING.sh
    install -m 0744 run.sh /root/build/kselftest/lkdtm/WARNING_MESSAGE.sh
    memfd_test.c:64:7: warning: implicit declaration of function =E2=80=98o=
pen=E2=80=99; did you mean =E2=80=98popen=E2=80=99? [-Wimplicit-function-de=
claration]
    memfd_test.c:90:6: warning: implicit declaration of function =E2=80=98f=
cntl=E2=80=99; did you mean =E2=80=98fcvt=E2=80=99? [-Wimplicit-function-de=
claration]
    memfd_test.c:397:6: warning: implicit declaration of function =E2=80=98=
fallocate=E2=80=99; did you mean =E2=80=98alloca=E2=80=99? [-Wimplicit-func=
tion-declaration]
    fuse_test.c:67:6: warning: implicit declaration of function =E2=80=98fc=
ntl=E2=80=99; did you mean =E2=80=98fcvt=E2=80=99? [-Wimplicit-function-dec=
laration]
    fuse_test.c:261:7: warning: implicit declaration of function =E2=80=98o=
pen=E2=80=99; did you mean =E2=80=98popen=E2=80=99? [-Wimplicit-function-de=
claration]
    pidfd_wait.c:24:32: warning: =E2=80=98struct clone_args=E2=80=99 declar=
ed inside parameter list will not be visible outside of this definition or =
declaration
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd.h:30:21: warning: excess elements in struct initializer
    pidfd_wait.c:44:18: warning: excess elements in struct initializer
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd_wait.c:22:25: warning: excess elements in struct initializer
    pidfd.h:30:21: warning: excess elements in struct initializer
    pidfd_wait.c:129:18: warning: excess elements in struct initializer
    proc-loadavg-001.c:17: warning: "_GNU_SOURCE" redefined
    proc-self-syscall.c:16: warning: "_GNU_SOURCE" redefined
    proc-uptime-002.c:18: warning: "_GNU_SOURCE" redefined
    lib/kvm_util.c:297:54: warning: excess elements in struct initializer
    lib/kvm_util.c:297:67: warning: excess elements in struct initializer
    lib/kvm_util.c:298:45: warning: excess elements in struct initializer
    lib/kvm_util.c:299:51: warning: excess elements in struct initializer
    lib/kvm_util.c:297:29: warning: unused variable =E2=80=98args=E2=80=99 =
[-Wunused-variable]
    rsync -a /root/build/kselftest/lkdtm/PANIC.sh /root/build/kselftest/lkd=
tm/BUG.sh /root/build/kselftest/lkdtm/WARNING.sh /root/build/kselftest/lkdt=
m/WARNING_MESSAGE.sh /root/build/kselftest/lkdtm/EXCEPTION.sh /root/build/k=
selftest/lkdtm/LOOP.sh /root/build/kselftest/lkdtm/EXHAUST_STACK.sh /root/b=
uild/kselftest/lkdtm/CORRUPT_STACK.sh /root/build/kselftest/lkdtm/CORRUPT_S=
TACK_STRONG.sh /root/build/kselftest/lkdtm/CORRUPT_LIST_ADD.sh /root/build/=
kselftest/lkdtm/CORRUPT_LIST_DEL.sh /root/build/kselftest/lkdtm/STACK_GUARD=
_PAGE_LEADING.sh /root/build/kselftest/lkdtm/STACK_GUARD_PAGE_TRAILING.sh /=
root/build/kselftest/lkdtm/UNSET_SMEP.sh /root/build/kselftest/lkdtm/DOUBLE=
_FAULT.sh /root/build/kselftest/lkdtm/CORRUPT_PAC.sh /root/build/kselftest/=
lkdtm/UNALIGNED_LOAD_STORE_WRITE.sh /root/build/kselftest/lkdtm/OVERWRITE_A=
LLOCATION.sh /root/build/kselftest/lkdtm/WRITE_AFTER_FREE.sh /root/build/ks=
elftest/lkdtm/READ_AFTER_FREE.sh /root/build/kselftest/lkdtm/WRITE_BUDDY_AF=
TER_FREE.sh /root/build/kselftest/lkdtm/READ_BUDDY_AFTER_FREE.sh /root/buil=
d/kselftest/lkdtm/SLAB_FREE_DOUBLE.sh /root/build/kselftest/lkdtm/SLAB_FREE=
_CROSS.sh /root/build/kselftest/lkdtm/SLAB_FREE_PAGE.sh /root/build/kselfte=
st/lkdtm/SOFTLOCKUP.sh /root/build/kselftest/lkdtm/HARDLOCKUP.sh /root/buil=
d/kselftest/lkdtm/SPINLOCKUP.sh /root/build/kselftest/lkdtm/HUNG_TASK.sh /r=
oot/build/kselftest/lkdtm/EXEC_DATA.sh /root/build/kselftest/lkdtm/EXEC_STA=
CK.sh /root/build/kselftest/lkdtm/EXEC_KMALLOC.sh /root/build/kselftest/lkd=
tm/EXEC_VMALLOC.sh /root/build/kselftest/lkdtm/EXEC_RODATA.sh /root/build/k=
selftest/lkdtm/EXEC_USERSPACE.sh /root/build/kselftest/lkdtm/EXEC_NULL.sh /=
root/build/kselftest/lkdtm/ACCESS_USERSPACE.sh /root/build/kselftest/lkdtm/=
ACCESS_NULL.sh /root/build/kselftest/lkdtm/WRITE_RO.sh /root/build/kselftes=
t/lkdtm/WRITE_RO_AFTER_INIT.sh /root/build/kselftest/lkdtm/WRITE_KERN.sh /r=
oot/build/kselftest/lkdtm/REFCOUNT_INC_OVERFLOW.sh /root/build/kselftest/lk=
dtm/REFCOUNT_ADD_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_NOT_Z=
ERO_OVERFLOW.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZERO_OVERFLOW.=
sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_ZERO.sh /root/build/kselftest/l=
kdtm/REFCOUNT_DEC_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_=
TEST_NEGATIVE.sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_NEGATIVE=
.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_ZERO.sh /root/build/kselftest/=
lkdtm/REFCOUNT_ADD_ZERO.sh /root/build/kselftest/lkdtm/REFCOUNT_INC_SATURAT=
ED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_SATURATED.sh /root/build/kse=
lftest/lkdtm/REFCOUNT_ADD_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT=
_INC_NOT_ZERO_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_ADD_NOT_ZER=
O_SATURATED.sh /root/build/kselftest/lkdtm/REFCOUNT_DEC_AND_TEST_SATURATED.=
sh /root/build/kselftest/lkdtm/REFCOUNT_SUB_AND_TEST_SATURATED.sh /root/bui=
ld/kselftest/lkdtm/REFCOUNT_TIMING.sh /root/build/kselftest/lkdtm/ATOMIC_TI=
MING.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_SIZE_TO.sh /root/build/ks=
elftest/lkdtm/USERCOPY_HEAP_SIZE_FROM.sh /root/build/kselftest/lkdtm/USERCO=
PY_HEAP_WHITELIST_TO.sh /root/build/kselftest/lkdtm/USERCOPY_HEAP_WHITELIST=
_FROM.sh /root/build/kselftest/lkdtm/USERCOPY_STACK_FRAME_TO.sh /root/build=
/kselftest/lkdtm/USERCOPY_STACK_FRAME_FROM.sh /root/build/kselftest/lkdtm/U=
SERCOPY_STACK_BEYOND.sh /root/build/kselftest/lkdtm/USERCOPY_KERNEL.sh /roo=
t/build/kselftest/lkdtm/STACKLEAK_ERASING.sh /root/build/kselftest/lkdtm/CF=
I_FORWARD_PROTO.sh /root/build/_kselftest_/lkdtm/
    tls.c:1221:39: warning: unused variable =E2=80=98tls12=E2=80=99 [-Wunus=
ed-variable]
    tls.c:1273:39: warning: unused variable =E2=80=98tls12=E2=80=99 [-Wunus=
ed-variable]
    clone3/clone3_selftests.h:45:32: warning: =E2=80=98struct clone_args=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
    pidfd.h:30:21: warning: excess elements in struct initializer
    pidfd_setns_test.c:80:18: warning: excess elements in struct initialize=
r
    clone3/clone3_selftests.h:16:25: warning: excess elements in struct ini=
tializer

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5f68a036.1c69fb81.b332f.d4a1%40mx.google.com.
