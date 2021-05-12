Return-Path: <clang-built-linux+bncBDT6TV45WMPRBIXI52CAMGQES2NWPUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE5937BB57
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 12:55:32 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id a142-20020a627f940000b02902ae03d812e7sf8868370pfd.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 03:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620816930; cv=pass;
        d=google.com; s=arc-20160816;
        b=fwPpkZQ+7+nYetPqHRNsbNWd+f5D/FSczyaYAy5yOO6d1qbuaeJd+JeOFMOyJan3Iu
         rA07Pw6TlwC1cK5L8Z6BI5NgwtjcHqSOuPTEu5gr2ITbLBBe6NTVrOUjAhEXt637Ywus
         WC6t+cIPQRruQ/TQLzH7KcYqOAqlj0dzqTV//FihGhMCbBMxnaR9ippMIYKfFLvcxy5C
         WpEIL3KCQESoIORnqiZNOGynOlNcdTv4uNoeKaRb7Eih6P5YeBpYhzVpXpJK2y9wKxhM
         OoQtJUuaTHxl4sjEIO20qPHpM0f279814KQvaKCW1AHFydGql2wNzWAvXcooJNB1v/h5
         ZaKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=3UkNF6Lfal3L4c6IPgTIJjs5TMsgbwbVmtPi7bRRz0s=;
        b=rWhR+FB0OmAkVvMtapehhS6NLBJUuN7zJ/xPA3nZTOer11Lj5FqgIpvktVSUoeBr+p
         rvLAzPdIuP9V9Xc8rVV1XQP2D9SncxMHh1LyXjAaBlWW0PwYIymlBW+YVeBp+oVwDXvE
         t0cFvaWpIO71iakJJuR9b9tg1iZCCBWajaQBWSs3h3COePAOMf8LobEgvhEWb5A2/sCv
         0JAmJjAByMLpxOY3YtqCVtZrS33Is4FH6MkEh71X5rh3Lcy8LTPDSRYy0S3Pk2UIqFoS
         Sa6zdPbr1y/PW29lNDX2DNKdtHww17GMZzjs4Thbq3jRaKdu7oub71Ae+BiSWcoqZs5y
         XQvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=YzP9seBi;
       spf=neutral (google.com: 2607:f8b0:4864:20::52c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3UkNF6Lfal3L4c6IPgTIJjs5TMsgbwbVmtPi7bRRz0s=;
        b=Fd7ZC6AH3O8t1Yg8uCibvIleBM/rTCd3u+aJeG1i88+f/p5dIyS9xQwjDDsZBiTj9i
         UaaoX2EHrHno3W6KOYgo6cNnDUEN6tUBL2XdXtr0FtBgL8PDt6tA+Yn/A0eczy+nOc9f
         8jKD75UTi8K4ly3amO8Qcx44dFoQJqLX9lK4pcwoczKtzOry5c1eQP/IvGgrq5s7N57O
         V/T+gFTzVRXbInE7tdtPi9SOWdsZCZHgJgmZT7KknzctdAW70JiM8bSqxvCYBbrssvcx
         UHR9zrap4zKFhZHLZFC0/CSgJI+Kl1OvMVQ4X/sqNOSXdd3QH3yzNtFLWHwLoJr1/jVX
         YywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3UkNF6Lfal3L4c6IPgTIJjs5TMsgbwbVmtPi7bRRz0s=;
        b=CyPvqAHIidtiIxO9LNSybjyPRpDhfOHqEHrg/fda4tkSgD5rFzwhToujmN0WLRqy+e
         JUO6rHKhy98FPdHhi/2oYyi/uudMUEODSZdyNCwVEGwVBcYHKpLnMo25CtjO1FPIzOtz
         +82VLw36Fm6J+2K1IgH5DXtvlmquBhWGlH/1nm/KGEJ5KeYRR6RzfGupUtPpa4FiKdNK
         fnKdijGTd/qyLwUYe/4q0HWIMKaNs3EqnKifrpflljS1oygBTZ9SLF/HNgLsB4xuaLuB
         cuflgs17JVYIyuzg4tFUId451OR1wyMhALks5eIeLXB4tu1w18QHUoaRAb5VARc0YSAP
         k+Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YRYLgKovx6hS3xlMcLsKSREgSnrqUVR9u0VWeRxm4NoKfBpMn
	bXtsQkhKsohBcPZllhqiNyU=
X-Google-Smtp-Source: ABdhPJw8LsoBZGrElAMJ/MGa4sLJC2w7EPzzRZNzMJFri3c1Yxz/Rx3P9Q9NKSSg1yzS5UNqMBAUtg==
X-Received: by 2002:a17:902:b485:b029:ee:d5c0:841c with SMTP id y5-20020a170902b485b02900eed5c0841cmr33782704plr.57.1620816930243;
        Wed, 12 May 2021 03:55:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls1174150plj.0.gmail; Wed, 12
 May 2021 03:55:29 -0700 (PDT)
X-Received: by 2002:a17:90b:3905:: with SMTP id ob5mr10104773pjb.94.1620816929637;
        Wed, 12 May 2021 03:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620816929; cv=none;
        d=google.com; s=arc-20160816;
        b=LdOPiHs/f///VZ4rSSO7av1C7yV2w/ImwxkpCpOeO4dI7g7IE5ayPs48dGnMpx3IvT
         EZkAuHe6SDIBfTQ2KSer5eOuEysuW4mXBTlYGvIQ5YajK9Uuf+8T5DEmtJ+RsVHJLw7r
         oTfafnaNy6Np4Dd347GISQAonKMO6rNrjzGBunTk7WFOU41+bYysel4Fc8ePaiI47ETL
         PFNcEuUNfRl7Obb8Ou3nmWVNGTJn7JO9AlyDS2iGtOzDx59RV/qTUwaBIQvw3GSRbiQJ
         sfRHzVzraMRouzW5QP/SM1bsy6uh3crxESBNvS3p8wxQYYlWLCrZRjPkH8loIJFNuwsq
         R1Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=InKRUvwbW+lDgM9GYg2+5WekPicgHA4kGMy/Qg2niWU=;
        b=PHPm6AOQ2db/GEY6vAu2OWXHQW045Fr7sHggRe8/cwC8A3F6j9wQAfkL8168qPIb0c
         cVW29dSt9sORcbXDoYAhtyqYUmUITh7+BeDBOSP4jCH2y3lPPCTZFZBdoVU3IHRUdtqK
         LwLSwzsfVXxJLuGFRQd2C53U4lzgznZhYcApafNlppgiXuS4wry56EoKtG2PROBv1Qsy
         0uhLZ3Gae3A//JUdsaq4qo3MhvDxWo3gmCY2QWge45ES796S0SzQ9SeQpZKI8vhZIRYX
         ZqUAXthZcUxWCclHv8OEdzYDvERbnew8wiIU7q1M5JRPBuDB+WQeeOTo58yX2MeP0Dse
         TCOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=YzP9seBi;
       spf=neutral (google.com: 2607:f8b0:4864:20::52c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id s24si330317pfw.4.2021.05.12.03.55.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 03:55:29 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::52c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id c21so17921156pgg.3
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 03:55:29 -0700 (PDT)
X-Received: by 2002:a63:210b:: with SMTP id h11mr34608732pgh.196.1620816927824;
        Wed, 12 May 2021 03:55:27 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id g16sm4291031pju.17.2021.05.12.03.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 03:55:27 -0700 (PDT)
Message-ID: <609bb41f.1c69fb81.fcf8.db17@mx.google.com>
Date: Wed, 12 May 2021 03:55:27 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20210512
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
Subject: next/master build: 206 builds: 8 failed, 198 passed, 42 errors,
 98 warnings (next-20210512)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=YzP9seBi;       spf=neutral (google.com: 2607:f8b0:4864:20::52c is
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

next/master build: 206 builds: 8 failed, 198 passed, 42 errors, 98 warnings=
 (next-20210512)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210512/

Tree: next
Branch: master
Git Describe: next-20210512
Git Commit: ec85c95b0c90a17413901b018e8ade7b9eae7cad
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arc:
    haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL

mips:
    32r2el_defconfig: (gcc-8) FAIL
    32r2el_defconfig+kselftest: (gcc-8) FAIL
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

riscv:
    defconfig+kselftest: (gcc-8) FAIL
    nommu_k210_defconfig: (gcc-8) FAIL
    nommu_k210_sdcard_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    haps_hs_smp_defconfig+kselftest (gcc-8): 10 errors, 5 warnings

arm64:
    allmodconfig (clang-10): 21 warnings
    allmodconfig (clang-12): 16 warnings
    defconfig (clang-12): 3 warnings
    defconfig (clang-10): 4 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 3 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 4 warnings

arm:
    exynos_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (clang-12): 4 warnings
    multi_v7_defconfig (clang-10): 4 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 1 warnin=
g
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 2 warnings

i386:

mips:
    32r2el_defconfig (gcc-8): 6 errors, 3 warnings
    32r2el_defconfig+kselftest (gcc-8): 16 errors, 8 warnings
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning

riscv:
    defconfig+kselftest (gcc-8): 8 errors, 4 warnings
    nommu_k210_defconfig (gcc-8): 1 error, 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 error, 1 warning
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    20   include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=
=E2=80=99) has incomplete type
    20   include/linux/hugetlb.h:335:19: error: function declaration isn=E2=
=80=99t a prototype [-Werror=3Dstrict-prototypes]
    2    mm/gup.c:2698:3: error: implicit declaration of function =E2=80=98=
mm_set_has_pinned_flag=E2=80=99; did you mean =E2=80=98set_tsk_thread_flag=
=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings summary:

    20   cc1: some warnings being treated as errors
    18   1 warning generated.
    6    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' =
is uninitialized when used here [-Wuninitialized]
    6    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variabl=
e 'port_id' to silence this warning
    5    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unu=
sed variable =E2=80=98ret=E2=80=99 [-Wunused-variable]
    4    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unu=
sed variable 'ret' [-Wunused-variable]
    3    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210512/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialize=
d when used here [-Wuninitialized]
    2    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to =
silence this warning
    2    kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialize=
d when used here [-Wuninitialized]
    2    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to =
silence this warning
    2    drivers/platform/surface/surface_aggregator_registry.c:478:25: war=
ning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') change=
s value from 65535 to 255 [-Wconstant-conversion]
    2    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit co=
nversion from 'int' to '__u8' (aka 'unsigned char') changes value from 6553=
5 to 255 [-Wconstant-conversion]
    2    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implici=
t conversion from 'unsigned long long' to 'unsigned long' changes value fro=
m 5000000000 to 705032704 [-Wconstant-conversion]
    2    cc1: all warnings being treated as errors
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    2 warnings generated.
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-=
1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210512/kernel/sound/soc/intel/boards/snd-soc-i=
ntel-hda-dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210512/kernel/drivers/clk/keystone/pll.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210512/kernel/drivers/clk/keystone/gate.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210512/kernel/crypto/cast_common.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 6 errors, 3 warnings, 0 sect=
ion mismatches

Errors:
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]

Warnings:
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 16 errors, 8 warni=
ngs, 0 section mismatches

Errors:
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]

Warnings:
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 21 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to silen=
ce this warning
    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to silen=
ce this warning
    2 warnings generated.
    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is un=
initialized when used here [-Wuninitialized]
    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'po=
rt_id' to silence this warning
    1 warning generated.
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/crypto/cast_common.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/drivers/clk/keystone/gate.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/drivers/clk/keystone/pll.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/sound/soc/intel/boards/snd-soc-intel-=
hda-dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 16 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to silen=
ce this warning
    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to silen=
ce this warning
    2 warnings generated.
    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is un=
initialized when used here [-Wuninitialized]
    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'po=
rt_id' to silence this warning
    1 warning generated.
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings,=
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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is un=
initialized when used here [-Wuninitialized]
    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'po=
rt_id' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is un=
initialized when used here [-Wuninitialized]
    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'po=
rt_id' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 3 warnings, 0 section mismatches

Warnings:
    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is un=
initialized when used here [-Wuninitialized]
    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'po=
rt_id' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 4 warnings, 0 section mismatches

Warnings:
    sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is un=
initialized when used here [-Wuninitialized]
    sound/soc/qcom/qdsp6/q6afe.c:1186:13: note: initialize the variable 'po=
rt_id' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210512/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 FAIL, 8 errors, 4 warnings, 0 =
section mismatches

Errors:
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]

Warnings:
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

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
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 10 errors, 5 w=
arnings, 0 section mismatches

Errors:
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]
    include/linux/hugetlb.h:340:30: error: parameter 6 (=E2=80=98mode=E2=80=
=99) has incomplete type
    include/linux/hugetlb.h:335:19: error: function declaration isn=E2=80=
=99t a prototype [-Werror=3Dstrict-prototypes]

Warnings:
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors

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
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, 0 se=
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
loongson2k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches

Errors:
    mm/gup.c:2698:3: error: implicit declaration of function =E2=80=98mm_se=
t_has_pinned_flag=E2=80=99; did you mean =E2=80=98set_tsk_thread_flag=E2=80=
=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches

Errors:
    mm/gup.c:2698:3: error: implicit declaration of function =E2=80=98mm_se=
t_has_pinned_flag=E2=80=99; did you mean =E2=80=98set_tsk_thread_flag=E2=80=
=99? [-Werror=3Dimplicit-function-declaration]

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
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_re=
locate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86_chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86_kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/609bb41f.1c69fb81.fcf8.db17%40mx.google.com.
