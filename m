Return-Path: <clang-built-linux+bncBDT6TV45WMPRB4MOSX7AKGQEEUHGL6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAA42C8E06
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:26:42 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id x7sf3410590ion.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:26:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606764401; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqoTK1CFzJvYhGlPjf3x/SWInMWmF7SdDHS+0hmVEIKuu9zLoQMQ94zTt07lb5ZZe4
         FggiXvB1ZBvvO/PBjfnChyb73NCOZ91QhjGbVIUNGhNXz3ZknYcarD9QANKzl3mc52CQ
         o1cdztNJkXOIM7IOMz4QLU0zCldshylCBImH737skQoQU6TR4enERs+5csN0AoEreqAW
         hM1e54RX92MQiJ29HSMIcltvAfGZcFHJSoIVkkvh6QfAf+ehDBeOeND7WR6nhunDzI5D
         4xW5AWghfiArca215jgyfK86wxZrXdv/bHPn0dvvt1XkwTgkoP2T9hG3GYnZuvNdRV2p
         whJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=cT1isnix7spHyvHVg0nQxxKS6eFvzBs5Ux0ptgZ7PL0=;
        b=DgjdBxnp5iYEH6Vd6OT8zufJES+oZS31U9wYOUnFj0wQj/vh9PkIj0dxWQBdVL0G8x
         szWdkVhoZ6q9PDAk8pSOMFWyFxkbaXknJ00oq6ISk56eLPwTkey6W0/hLng/PeEMgNJN
         +Hge/+NeSGi5JzV/CqwnbVSNG5IgIs17sTtykSJIkxzRhlYyx5HynRmCy/87BLw279sg
         0GEwdJ3Yl6tP4RGL8VWeY4CfH60rCp4ajZ3Paeuy+ElL/F2kwkPNirgVS8kgAI2o46EM
         TFxcuvVh7exhlacQcpJjdmrjxWq37Ach27n6B5mTMbyK7+o4DuIkaXqSd8KCW2SGhAPS
         4PpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=gJ4LSDMH;
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cT1isnix7spHyvHVg0nQxxKS6eFvzBs5Ux0ptgZ7PL0=;
        b=JGDY7ASdaaE7heA6ozMarezP4FKl/pxt3sKv0vXig/UZf9IvJtjiM/Wvq1KSd94bFe
         jD8UzRBKKf1cCNoblOXqslKVRJ84tCjprQvBUgLvzj0328WYJwK3btnVoDQtGHaUPiyV
         GYiu41NO2dFwuZwvCkMKy7go3mddsJmcoq2oaBpjvKVzqafGx1KqXOZAL5SJp08O5tPd
         2XCJ1vHOUDV7g6Il54xrqfAct8FQB8Z2TL62l1oyjPXR/x8VvCE9PWGX6aHl47PSIahm
         I9xh8hk2UGiREpDOBuuYIsd2euh50Yt4kwNr79X8vPvWAIuHD4p2w7fvbWbxwpgVKdT1
         Z+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cT1isnix7spHyvHVg0nQxxKS6eFvzBs5Ux0ptgZ7PL0=;
        b=lPpbrUjabo+2sXaNGSbF+inpSPqcc9qFmqCbD85CELqqaXuYhhu2BdC0C2OH2860ft
         77xuH+OQTIjmiRnHzKF0DBQlqm6n9gIrekpNI42U4TzWsM0wKeXnU41rhSPxeBpkmdtD
         qDiZAn3dWdFlLUzwfqNHCETClQfyeYw6Eef+3anT4IBDrH+skeCqqBMAwGVY29bRnZks
         c0yG0Neb5YnEUDnU09oDLVwIp9muugfdF46gVh5vFsKL7l6UMfvSM9H8dgYuaqpUJUlg
         cLza6PqEkH3QTjkVrWRUC/jPvJKhVaZAchZJy2dmiZK1p3twHPKAd9LjUS8J7ohNUFLs
         X1eA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530K321yxrCI/BzRmRy2swdBXDWyEmOvkTXS0iiLiCOPqAs6LLEI
	rRrSCsisj14hjCh+AAFI21E=
X-Google-Smtp-Source: ABdhPJxSlQFX8d7c8KKFqZAM5nK33MuYePtot5CNMFVughij6kaKl4Tz0bYfCn8Ia6KFAGdOwLAAag==
X-Received: by 2002:a05:6e02:104b:: with SMTP id p11mr20694882ilj.241.1606764401522;
        Mon, 30 Nov 2020 11:26:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:dd0b:: with SMTP id n11ls3513821ilm.6.gmail; Mon, 30 Nov
 2020 11:26:41 -0800 (PST)
X-Received: by 2002:a92:7b07:: with SMTP id w7mr21485685ilc.78.1606764400875;
        Mon, 30 Nov 2020 11:26:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606764400; cv=none;
        d=google.com; s=arc-20160816;
        b=00oqtXYRnyEOJ2t55nz9pdGiTa10pBQ0HVhSDDrLEz5jvSbEP5sw5xxmlyMLkFgUaP
         HSal+Gq9rFSnMPPwNkrzlV+BMgAosGRkUNJBHFQ/2rfP3Hcr/Q5oB8yOGsn4/9dzt/V/
         H5M04n8aSqdJwQcOjBpAvqVBWVx3cVkB3xXU2St1jtGYXMgFz9QWWqO9yWH8EP2sXjbu
         dGmqpwCu6s/rLBgl+W+rAK4NFw+ZFJZntNI3sbIaYij/Uonbc0v0Bt9Yb3oGtomoPPcd
         E0l8XgB/cDwrP0Hb8GLw3zfcmL187Hl/HZknQEYWlt/xMnxlshw1Lag5+2yBXT4Unn3J
         98Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=K8zjYsgSDF7Vf1WCX+omdnfi84vQM54/QQTFX7jy9E0=;
        b=Ph+sX66ynv0VW1hnEAMX98VTrbJAiO8HOqIt0854EN0OPbWR1dLWpCZ/5z/xrhCG7d
         JfZf0Ilk1UGfz5lUnL0NcTlsIxrIFvNa2tPQ9NeCo5mNmJpvaOzoBAvuxBiTg1y3X6mI
         O5mKj1lsgqJCk+6SKRi8h+vFZDROE0mjeKcPuo4yvBpcaM5pc5fIAY1tLipDDnDxi8Rl
         e4rU8MlQ+RB/bLYVxAIwPAO7UDB6FkcpMrecx6jReOYpcABFcFAcHU7k1pGd9s68eeaq
         pDdtdOLpwLfOEZun81FacZTtoJbBYbghwJwOIeFQyVcMutjWkaiv2w0rVJ2uqj21hb2b
         TUYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=gJ4LSDMH;
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u4si1117973ilk.5.2020.11.30.11.26.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 11:26:40 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id f17so10683424pge.6
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 11:26:40 -0800 (PST)
X-Received: by 2002:a65:6299:: with SMTP id f25mr18429087pgv.402.1606764397953;
        Mon, 30 Nov 2020 11:26:37 -0800 (PST)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id f123sm2587033pfa.89.2020.11.30.11.26.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 11:26:36 -0800 (PST)
Message-ID: <5fc5476c.1c69fb81.43fd4.49d0@mx.google.com>
Date: Mon, 30 Nov 2020 11:26:36 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20201130
X-Kernelci-Report-Type: build
Subject: next/master build: 229 builds: 13 failed, 216 passed, 63 errors,
 131 warnings (next-20201130)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=gJ4LSDMH;       spf=neutral (google.com: 2607:f8b0:4864:20::544 is
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

next/master build: 229 builds: 13 failed, 216 passed, 63 errors, 131 warnin=
gs (next-20201130)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20201130/

Tree: next
Branch: master
Git Describe: next-20201130
Git Commit: c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-10) FAIL
    defconfig: (clang-10) FAIL
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy: (clang-10) FAIL
    allmodconfig: (clang-11) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    allmodconfig: (clang-10) FAIL
    aspeed_g5_defconfig: (clang-10) FAIL
    allmodconfig: (clang-11) FAIL
    allmodconfig: (gcc-8) FAIL
    milbeaut_m10v_defconfig: (gcc-8) FAIL
    mini2440_defconfig: (gcc-8) FAIL
    s3c2410_defconfig: (gcc-8) FAIL

x86_64:
    allmodconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (gcc-8): 1 error, 1 warning
    allmodconfig (clang-10): 1 error, 11 warnings
    allmodconfig (clang-11): 1 error, 11 warnings
    defconfig (gcc-8): 1 warning
    defconfig (clang-10): 1 error, 5 warnings
    defconfig (clang-11): 6 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 error, 5 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 6 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 warning

arm:
    allmodconfig (clang-11): 21 errors
    allmodconfig (gcc-8): 1 error
    allmodconfig (clang-10): 20 errors, 19 warnings
    aspeed_g5_defconfig (clang-10): 13 errors
    axm55xx_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 error
    mmp2_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (clang-11): 5 warnings
    multi_v7_defconfig (clang-10): 5 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 4 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 5 warnin=
gs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 4 warnings
    mvebu_v7_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 2 warnings
    pxa168_defconfig (gcc-8): 3 warnings
    pxa910_defconfig (gcc-8): 3 warnings
    s3c2410_defconfig (gcc-8): 1 error
    tegra_defconfig (gcc-8): 1 warning

i386:

mips:
    loongson3_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 2 warnings

riscv:
    defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 1 error, 1 warning
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-10): 2 warnings
    x86_64_defconfig (clang-11): 2 warnings

Errors summary:

    3    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko]=
 undefined!
    2    ld.lld: error: unknown argument '--be8'
    2    ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the=
 section
    2    ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outsid=
e the section
    2    ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outsid=
e the section
    2    ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset i=
s outside the section
    2    ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outsi=
de the section
    2    ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outs=
ide the section
    2    ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is out=
side the section
    2    ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset =
is outside the section
    2    ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is=
 outside the section
    2    ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset i=
s outside the section
    2    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefi=
ned!
    1    ld.lld: error: init/version.o:(__ksymtab_strings): offset is outsi=
de the section
    1    ld.lld: error: init/version.o:(.rodata.str1.1): offset is outside =
the section
    1    ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings): o=
ffset is outside the section
    1    ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): offs=
et is outside the section
    1    ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): offset=
 is outside the section
    1    ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offset i=
s outside the section
    1    ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset is o=
utside the section
    1    ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset is =
outside the section
    1    ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is out=
side the section
    1    ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offset i=
s outside the section
    1    ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): off=
set is outside the section
    1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): off=
set is outside the section
    1    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): offset=
 is outside the section
    1    ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offset i=
s outside the section
    1    ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offset =
is outside the section
    1    ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offset =
is outside the section
    1    ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): offs=
et is outside the section
    1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_str=
ings): offset is outside the section
    1    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.str1.=
1): offset is outside the section
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): reloca=
tion R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): reloca=
tion R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): reloca=
tion R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): reloca=
tion R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): reloca=
tion R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): reloca=
tion R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): reloca=
tion R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): reloca=
tion R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): reloca=
tion R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): reloca=
tion R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): reloca=
tion R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): reloca=
tion R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): reloca=
tion R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 10737418=
23]
    1    arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd/na=
nd_ecc.h: No such file or directory
    1    arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nand_e=
cc.h: No such file or directory
    1    ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.ko]=
 undefined!
    1    ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98;=
=E2=80=99 before =E2=80=98void=E2=80=99

Warnings summary:

    19   ld.lld: warning: lld uses blx instruction, no object with architec=
ture supporting feature detected
    18   1 warning generated.
    12   drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98=
ctx=E2=80=99 [-Wunused-variable]
    9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge)=
: /soc/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    9    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge)=
: /soc/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    9    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Fa=
iled prerequisite 'spi_bus_bridge'
    8    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-W=
unused-variable]
    6    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked'=
 is used uninitialized whenever 'if' condition is false [-Wsometimes-uninit=
ialized]
    6    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the vari=
able 'acked' to silence this warning
    5    lib/cpumask.c:222:17: warning: cast from pointer to integer of dif=
ferent size [-Wpointer-to-int-cast]
    2    fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitial=
ized whenever 'if' condition is false [-Wsometimes-uninitialized]
    2    drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is uni=
nitialized when used here [-Wuninitialized]
    2    drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable =
'dev' to silence this warning
    2    drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_=
type_count=E2=80=99 defined but not used [-Wunused-function]
    2    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/mod=
ules/5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' to s=
ilence this warning
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+=
0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+=
0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    clang: warning: argument unused during compilation: '-no-pie' [-Wu=
nused-command-line-argument]
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    12: note: initialize the variable 'err' to silence this warning
    1    .config:1181:warning: override: UNWINDER_GUESS changes choice stat=
e

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
allmodconfig (arm, clang-11) =E2=80=94 FAIL, 21 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    ld.lld: error: unknown argument '--be8'
    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(.rodata.str1.1): o=
ffset is outside the section
    ld.lld: error: init/version.o:(.rodata.str1.1): offset is outside the s=
ection
    ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is out=
side the section
    ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is out=
side the section
    ld.lld: error: arch/arm/kernel/opcodes.o:(.rodata.str1.1): offset is ou=
tside the section
    ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside the=
 section
    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(.rodata.str1.1): offset is o=
utside the section
    ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is outs=
ide the section
    ld.lld: error: arch/arm/kernel/reboot.o:(.rodata.str1.1): offset is out=
side the section
    ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outside t=
he section
    ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the sect=
ion
    ld.lld: error: arch/arm/kernel/process.o:(.rodata.str1.1): offset is ou=
tside the section
    ld.lld: error: arch/arm/mm/iomap.o:(.rodata.str1.1): offset is outside =
the section
    ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside the=
 section
    ld.lld: error: arch/arm/probes/decode-arm.o:(.rodata.str1.1): offset is=
 outside the section
    ld.lld: error: arch/arm/mm/ioremap.o:(.rodata.str1.1): offset is outsid=
e the section
    ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outside =
the section
    ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset is ou=
tside the section
    ld.lld: error: arch/arm/mm/proc-syms.o:(__ksymtab_strings): offset is o=
utside the section
    ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outside th=
e section

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    ./arch/arm/include/asm/kasan.h:26:11: error: expected =E2=80=98;=E2=80=
=99 before =E2=80=98void=E2=80=99

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] unde=
fined!

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    ERROR: modpost: "crypto_aegis128_update_simd" [crypto/aegis128.ko] unde=
fined!

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 FAIL, 20 errors, 19 warnings, 0 sect=
ion mismatches

Errors:
    ld.lld: error: arch/arm/common/krait-l2-accessors.o:(__ksymtab_strings)=
: offset is outside the section
    ld.lld: error: unknown argument '--be8'
    ld.lld: error: init/version.o:(__ksymtab_strings): offset is outside th=
e section
    ld.lld: error: arch/arm/kernel/elf.o:(__ksymtab_strings): offset is out=
side the section
    ld.lld: error: arch/arm/vfp/vfpmodule.o:(.rodata.str1.1): offset is out=
side the section
    ld.lld: error: arch/arm/probes/decode-arm.o:(__ksymtab_strings): offset=
 is outside the section
    ld.lld: error: init/init_task.o:(.rodata.str1.1): offset is outside the=
 section
    ld.lld: error: arch/arm/common/mcpm_entry.o:(.rodata.str1.1): offset is=
 outside the section
    ld.lld: error: arch/arm/mach-cns3xxx/pm.o:(__ksymtab_strings): offset i=
s outside the section
    ld.lld: error: init/main.o:(.rodata.str1.1): offset is outside the sect=
ion
    ld.lld: error: arch/arm/mach-at91/pm.o:(.rodata.str1.1): offset is outs=
ide the section
    ld.lld: error: arch/arm/mm/iomap.o:(__ksymtab_strings): offset is outsi=
de the section
    ld.lld: error: arch/arm/mm/init.o:(.rodata.str1.1): offset is outside t=
he section
    ld.lld: error: arch/arm/mach-mmp/common.o:(__ksymtab_strings): offset i=
s outside the section
    ld.lld: error: init/do_mounts.o:(.rodata.str1.1): offset is outside the=
 section
    ld.lld: error: arch/arm/mm/ioremap.o:(__ksymtab_strings): offset is out=
side the section
    ld.lld: error: arch/arm/mm/dma-mapping.o:(.rodata.str1.1): offset is ou=
tside the section
    ld.lld: error: arch/arm/mm/flush.o:(.rodata.str1.1): offset is outside =
the section
    ld.lld: error: arch/arm/mach-mmp/sram.o:(.rodata.str1.1): offset is out=
side the section
    ld.lld: error: arch/arm/mm/mmu.o:(.rodata.str1.1): offset is outside th=
e section

Warnings:
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected
    ld.lld: warning: lld uses blx instruction, no object with architecture =
supporting feature detected

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 11 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] unde=
fined!

Warnings:
    fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitialized =
whenever 'if' condition is false [-Wsometimes-uninitialized]
    12: note: initialize the variable 'err' to silence this warning
    1 warning generated.
    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is u=
sed uninitialized whenever 'if' condition is false [-Wsometimes-uninitializ=
ed]
    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variable =
'acked' to silence this warning
    1 warning generated.
    drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is uninitia=
lized when used here [-Wuninitialized]
    drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable 'dev'=
 to silence this warning
    1 warning generated.
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-11) =E2=80=94 FAIL, 1 error, 11 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "device_is_bound" [drivers/clk/imx/clk-imx-scu.ko] unde=
fined!

Warnings:
    fs/nfsd/nfs3xdr.c:299:6: warning: variable 'err' is used uninitialized =
whenever 'if' condition is false [-Wsometimes-uninitialized]
    fs/nfsd/nfs3xdr.c:293:12: note: initialize the variable 'err' to silenc=
e this warning
    1 warning generated.
    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is u=
sed uninitialized whenever 'if' condition is false [-Wsometimes-uninitializ=
ed]
    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variable =
'acked' to silence this warning
    1 warning generated.
    drivers/mtd/nand/raw/r852.c:874:24: warning: variable 'dev' is uninitia=
lized when used here [-Wuninitialized]
    drivers/mtd/nand/raw/r852.c:847:25: note: initialize the variable 'dev'=
 to silence this warning
    1 warning generated.
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
aspeed_g5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 13 errors, 0 warnings, =
0 section mismatches

Errors:
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34C28): relocation =
R_ARM_PREL31 out of range: 2135543056 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37214): relocation =
R_ARM_PREL31 out of range: 2135598884 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3722C): relocation =
R_ARM_PREL31 out of range: 2135598860 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): relocation =
R_ARM_PREL31 out of range: 2135598796 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37274): relocation =
R_ARM_PREL31 out of range: 2135598788 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372A4): relocation =
R_ARM_PREL31 out of range: 2135598740 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372D4): relocation =
R_ARM_PREL31 out of range: 2135598692 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372EC): relocation =
R_ARM_PREL31 out of range: 2135598668 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37304): relocation =
R_ARM_PREL31 out of range: 2135598644 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37314): relocation =
R_ARM_PREL31 out of range: 2135598628 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37364): relocation =
R_ARM_PREL31 out of range: 2135598548 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37374): relocation =
R_ARM_PREL31 out of range: 2135598532 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37414): relocation =
R_ARM_PREL31 out of range: 2135598372 is not in [-1073741824, 1073741823]

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
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]

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
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

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
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 5 warnings, 0 section =
mismatches

Errors:
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.
    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is u=
sed uninitialized whenever 'if' condition is false [-Wsometimes-uninitializ=
ed]
    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variable =
'acked' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 6 warnings, 0 section=
 mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.
    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is u=
sed uninitialized whenever 'if' condition is false [-Wsometimes-uninitializ=
ed]
    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variable =
'acked' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 FAIL, 1 er=
ror, 5 warnings, 0 section mismatches

Errors:
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.
    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is u=
sed uninitialized whenever 'if' condition is false [-Wsometimes-uninitializ=
ed]
    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variable =
'acked' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 1 warning, 0 section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, 0 er=
rors, 6 warnings, 0 section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.
    drivers/remoteproc/qcom_sysmon.c:551:11: warning: variable 'acked' is u=
sed uninitialized whenever 'if' condition is false [-Wsometimes-uninitializ=
ed]
    drivers/remoteproc/qcom_sysmon.c:536:12: note: initialize the variable =
'acked' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.10.0-rc5-next-20201130/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-11) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    clang: warning: argument unused during compilation: '-no-pie' [-Wunused=
-command-line-argument]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

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
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

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
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_type_=
count=E2=80=99 defined but not used [-Wunused-function]

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
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    arch/arm/mach-s3c/mach-mini2440.c:47:10: fatal error: linux/mtd/nand_ec=
c.h: No such file or directory

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
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
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable 'ctx' [-Wunuse=
d-variable]
    1 warning generated.
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 4 warnings, 0 section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 5 warnings, 0 section mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 =
warnings, 0 section mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

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
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/hwmon/pwm-fan.c:167:22: warning: unused variable =E2=80=98ctx=
=E2=80=99 [-Wunused-variable]

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
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpiod_=
table=E2=80=99 defined but not used [-Wunused-variable]
    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_del=
ta_camera_power=E2=80=99 defined but not used [-Wunused-function]

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
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
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
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #address-cells for SPI bus
    arch/arm/boot/dts/mmp2.dtsi:472.23-480.6: Warning (spi_bus_bridge): /so=
c/apb@d4000000/spi@d4037000: incorrect #size-cells for SPI bus
    arch/arm/boot/dts/mmp2-olpc-xo-1-75.dtb: Warning (spi_bus_reg): Failed =
prerequisite 'spi_bus_bridge'

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
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

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
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 secti=
on mismatches

Errors:
    arch/arm/mach-s3c/mach-bast.c:27:10: fatal error: linux/mtd/nand_ecc.h:=
 No such file or directory

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
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/gpu/drm/ttm/ttm_pool.c:243:21: warning: =E2=80=98ttm_pool_type_=
count=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1181:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xc6: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x249: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0

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
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]
    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]

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
clang-built-linux/5fc5476c.1c69fb81.43fd4.49d0%40mx.google.com.
