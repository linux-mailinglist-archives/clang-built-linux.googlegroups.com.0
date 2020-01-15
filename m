Return-Path: <clang-built-linux+bncBDT6TV45WMPRBSGF7TYAKGQETOBX3IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9F313C61C
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:33:46 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id y15sf10399134pgk.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:33:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579098825; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVIcUAocQgJrTwIaBEnEnpurDuULnjJ9MTDP+Imr37WAXOBvVwi+Io+WwXhXOHCMo0
         fynf9Tbj+Tv6+ktCE72KRR3BRC6y/GLHkCnhfHR+Ot0jtQV2xCvX37jysohxQOoPrOuh
         MYHm+3lesTAR+Fw06MrmlfLWTMCKdeFrqwaflGVpEzYlKkTFaSM8IV7Xe7Ytzw4+1wFk
         /V2yiP9eOtXIBKvK6DJH7ZpnQpYlrXD6GRYiZ67HMGZsaIMtkhIaXiV/qryIx6/siwx/
         G9EzGrw1L0lVOgrWy+sqt/FNgM9Fob8SR+se5xXeoWLDBWjbb8dP21j8CP3XjoZu/TjG
         XCRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=vHc+P1kLaCebT6ojfoxxnhML/qWF4VRt5xk0t7Or6og=;
        b=b3sO+LuW4a0p+CCOv+stFCMqeiBGL3ITjWQaGey8GwYJBbvzLy6NcdvDP3Wkm1Jrfy
         3nTPd4j36ju5mnN3Wd9L0Hkhvyw1aSrn2wfpIGUzLmuEFSkhVtX2gZWcD8GkiFM2EtWB
         s211nDTRIa9H8CZMy1vWyY8JCUYwfyEdAi5KZCRlRFDcPXuz0RxpZf42EKtj67Yi8c2U
         Wm88Wg0YN/h99Qj2VtcTEOntvsmEXsSQLrJteRFNNhPNwHdLk4QntatKGps96Vc4eJo2
         NkJ2Et/PJnmupl5/eSrbOpaW8lm94oZco/4PPaHKC6jQ3tF9n5ZmO+bMH8gi9YobAvPw
         Jc9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=f7jFdjlp;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vHc+P1kLaCebT6ojfoxxnhML/qWF4VRt5xk0t7Or6og=;
        b=NoTZRIuKBc6R25U8oH2XG8ljQmDkLJbk81Lr0FVF0HljxDrP2Xz0sd9goAvflbGRMm
         5U3fz4aIWoL10EMcNtDX5Z6N8FGc4H7tfOd+EK9JvynCW2k/I59ByC1G2VWDArDf0V3r
         P/5QVT8g44tvl6YWYwoEC2uf4MW7XYVtvgPLsRa6GKHYOvcVsHMK7YZlQgYwa3XX3QEv
         MiuJ4dBmIsKjgDolXfppfAqWMovR57yd93SVnBNO1amCWGB1UgDSf5W5waaPnxLC3ZB+
         5fj6qL8k5ij7WINxb3C4L/0FUlxtIh+k6PJROvNu4weRHF1Lut3uecr0ULSbQKMkuw7r
         J5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vHc+P1kLaCebT6ojfoxxnhML/qWF4VRt5xk0t7Or6og=;
        b=LdPTsDIxNNkt2ouEhmYYN7pyM3KZ5DzMX3aMlzV1pYUvLxdqRwA97qd0QW1dkQLM+t
         gjtZPE5J42/fbhGlRudSpJzbq0R93iMUuRV/oo9dAMiHur4iqY8eUqN0isM2pxmYogrJ
         zQt7p6orZox1pewRzpi/HeZgpxE+dNcHwmeTIQQDfe6K5mmJi2UYmywUt+dvqBbHSNBK
         h6mvA3xN+Hjfc2sT8YHpmN9uR3qH082RKi7CDr2bgxTdBuLBFSJdT7s3L2A2+KfRb+i8
         30pUOHHnb4uNQiSRVkBZammntuDaeMuiC606DaNLQs+P3KyaVtWAwH1lwUEzDdqJG9nF
         7bFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWurMKc/umq8gQH6vSYh3nf7Q5V0+Y860FNLcSRbK+smaUPcM8v
	c/F2SCgKw1QA3yPisSap54Q=
X-Google-Smtp-Source: APXvYqzG0Y4BZL3TzPJRK/pevaBECSj6eHCBEokFkMfV1gcTXtLGsFSqf8h8peAU38T8n7gaJSIGoQ==
X-Received: by 2002:a62:7711:: with SMTP id s17mr31556415pfc.157.1579098825077;
        Wed, 15 Jan 2020 06:33:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6483:: with SMTP id y125ls5854402pfb.9.gmail; Wed, 15
 Jan 2020 06:33:44 -0800 (PST)
X-Received: by 2002:a65:6216:: with SMTP id d22mr33352785pgv.437.1579098824537;
        Wed, 15 Jan 2020 06:33:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579098824; cv=none;
        d=google.com; s=arc-20160816;
        b=jy89Xa4z5gTakmq5CvGE93T8EkG1yJMfvmqrQD5QMtxlPLHKeDxtSSns3o9juBwGTd
         4J+q04DmqM2p2QH9K+hYpQ9Ia9wN3WV8upWnzF9OkJviAsHWwLRum/P2yJ0x91hknMW4
         rqaLwX6f18hP35oMk8i7HD2UAggtOZjzyEMILCp+tU1fjBb6zFyY4QpHc9ddb/idspWX
         hK1bN2YQET0EIWwmjFoQG+au/Ad4EOyzDH+j9F7K2lQps2RDM+GTN+FE7RP/2W6Yceq0
         vEhTxRsEgbeAHLK1w5E4gBZXxmKvuUafxDP8p/r8LgluMxbZ+RWG8YffuHt91wZgVpjg
         Bi8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=b3TUVA9xzHInEed1c+5PjbOorol2cuAg19euk6Lu5Lw=;
        b=zuVGeliFts/sazPg3/+Joi0xuTf9XqBkjtshoC4PvRN4Pe7rK3PlXHcao3O/J1EY1K
         cPTmS2tcw3eZuxkqr7li+Tk2wuV7Qd9O2Bl4g4pyyqDQVStF01tDYWjryD3oSd/HdA8n
         zQ2lBr+VLUd7y0hhVKGB0Z3UvA6RsjwRb/jpCbX2vYaFEJp8Ym/fNi4EfFj9LirhYwqT
         FGZ/Hdf/v06IpwMQg7hiL456ttDs4t2rcoUhcrwfZWmg3BrBEoni1PACbaHBcgebp7rq
         fwvEmS+LCukum07+6tM4naK5VXi2sM9X9MVHeybOvKI2aLnm8fKlEvGE1GBik5PxTcGJ
         fX6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=f7jFdjlp;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w2si622679pgt.2.2020.01.15.06.33.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:33:44 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id a5so99013wmb.0
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:33:43 -0800 (PST)
X-Received: by 2002:a05:600c:2c13:: with SMTP id q19mr34849wmg.144.1579098821175;
        Wed, 15 Jan 2020 06:33:41 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id f16sm24600456wrm.65.2020.01.15.06.33.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:33:40 -0800 (PST)
Message-ID: <5e1f22c4.1c69fb81.4609.6bf6@mx.google.com>
Date: Wed, 15 Jan 2020 06:33:40 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20200115
Subject: next/master build: 215 builds: 6 failed, 209 passed, 24 errors,
 85 warnings (next-20200115)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=f7jFdjlp;       spf=neutral (google.com: 2a00:1450:4864:20::342 is
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

next/master build: 215 builds: 6 failed, 209 passed, 24 errors, 85 warnings=
 (next-20200115)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200115/

Tree: next
Branch: master
Git Describe: next-20200115
Git Commit: 5b483a1a0ea1ab19a5734051c9692c2cfabe1327
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

riscv:
    allnoconfig: (gcc-8) FAIL
    defconfig: (gcc-8) FAIL
    defconfig+kselftest: (gcc-8) FAIL
    nommu_virt_defconfig: (gcc-8) FAIL
    rv32_defconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 2 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (gcc-8): 3 warnings
    defconfig (gcc-8): 2 warnings
    defconfig (gcc-8): 2 warnings
    defconfig (gcc-8): 2 warnings
    defconfig (gcc-8): 2 warnings

arm:
    allmodconfig (gcc-8): 21 warnings
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 4 warnings
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 3 warnings

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    ip27_defconfig (gcc-8): 2 warnings
    lemote2f_defconfig (gcc-8): 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 2 warnings
    nlm_xlr_defconfig (gcc-8): 2 warnings

riscv:
    allnoconfig (gcc-8): 4 errors
    defconfig (gcc-8): 4 errors
    defconfig (gcc-8): 4 errors
    nommu_virt_defconfig (gcc-8): 4 errors
    rv32_defconfig (gcc-8): 4 errors, 3 warnings
    tinyconfig (gcc-8): 4 errors

x86_64:
    allmodconfig (gcc-8): 4 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 2 warnings

Errors summary:

    6    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=
=E2=80=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=
=98cause=E2=80=99?
    6    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=
=E2=80=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=
=80=98badaddr=E2=80=99?
    6    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=
=E2=80=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=
=80=98status=E2=80=99?
    6    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=
=E2=80=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=
=98epc=E2=80=99?

Warnings summary:

    19   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    12   fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
    12   fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    8    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=
=E2=80=99 may be used uninitialized in this function [-Wmaybe-uninitialized=
]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/pr=
operty-entry-test.o
    3    drivers/gpio/gpio-grgpio.c:438:16: warning: unused variable =E2=80=
=98flags=E2=80=99 [-Wunused-variable]
    2    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    2    WARNING: unmet direct dependencies detected for I2C_S3C2410
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1184=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=E2=
=80=99 expects argument of type =E2=80=98long int=E2=80=99, but argument 5 =
has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wf=
ormat=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/base/test/property-entry-test.c:214:1: warning: the frame =
size of 3128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    1    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    /tmp/ccx2n2O4.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccx2n2O4.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1161:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    5    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x3b10): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x37b0): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnin=
gs, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1184 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 section =
mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    /tmp/ccx2n2O4.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccx2n2O4.s:18191: Warning: using r15 results in unpredictable beha=
viour
    drivers/base/test/property-entry-test.c:214:1: warning: the frame size =
of 3128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpio/gpio-grgpio.c:438:16: warning: unused variable =E2=80=98fl=
ags=E2=80=99 [-Wunused-variable]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to integ=
er of different size [-Wpointer-to-int-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=E2=80=99=
 expects argument of type =E2=80=98long int=E2=80=99, but argument 5 has ty=
pe =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=
=3D]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    drivers/gpio/gpio-grgpio.c:438:16: warning: unused variable =E2=80=98fl=
ags=E2=80=99 [-Wunused-variable]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    drivers/gpio/gpio-grgpio.c:438:16: warning: unused variable =E2=80=98fl=
ags=E2=80=99 [-Wunused-variable]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 section =
mismatches

Errors:
    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?

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
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3b10): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x37b0): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 section mi=
smatches

Errors:
    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 2 warnings, 0 section mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 2 warnings, 0 section mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 =
section mismatches

Errors:
    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?

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
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

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
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

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
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

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
    {standard input}:141: Warning: macro instruction expanded into multiple=
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
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warni=
ngs, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

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

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 0 warnings, 0=
 section mismatches

Errors:
    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

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

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 3 warnings, 0 secti=
on mismatches

Errors:
    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
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

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 section m=
ismatches

Errors:
    arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
    arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
    arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
    arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1161:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    fs/btrfs/block-group.c:1706:5: warning: =E2=80=98logical=E2=80=99 may b=
e used uninitialized in this function [-Wmaybe-uninitialized]
    fs/btrfs/block-group.c:1691:20: warning: =E2=80=98stripe_len=E2=80=99 m=
ay be used uninitialized in this function [-Wmaybe-uninitialized]

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
clang-built-linux/5e1f22c4.1c69fb81.4609.6bf6%40mx.google.com.
