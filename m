Return-Path: <clang-built-linux+bncBDT6TV45WMPRB3GV6OCAMGQEV3WRMTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C46D37F49F
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 11:01:34 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id o4-20020ab02a040000b02901f6d77e1faasf4223053uar.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 02:01:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620896493; cv=pass;
        d=google.com; s=arc-20160816;
        b=YZ0P02GDTmRtevDyRz+PW6lHi02T5qRISr1Sq1qvmS0Wo+4BFok1aog4CD5W05oyK6
         NfdSLywLvI7gpzMnmklrjU82QK7ro1bgZGwOqHNO3EvcQ1MNmBwYYDRmYGeZuGRMXT5Y
         j2s+2SLGkSXfZypdeMBhCyGKI20mOnOyWYzXePQqtgn7B0514AWwTvIrazWSs5LBx13r
         O7FCkIEhLijP25nmzhsNW8qHnDp6PjdEvPfT14WjLVHtKc1fJFcGWWf1+gPRYGdI+2iA
         CbCn2rLQ+MRQfj2VxzKDxiagpzmPWxRsRBisABveTENfHhNG2N2xdJci0eKsXqEfE0Ou
         MEoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=krP2WQyDiPHqU2ofLMMaVOlAA8JO+twR12C3H9BecJ4=;
        b=i+oCjujKr+oSa9GsJ+IgqFZxVo0fKvVVWcRs9JDUTmZ2uNw5SRlhNgqq0cIwg5TP+E
         tTSsz6+oPbH34MW/QQQV2AKKot7TpOlUYaQ20kUJqkkgkWdW4KBKdxhAHVmKQyPCEFI9
         ZwO9MJMO+EkxzzB4GTGjPU6mMVB8og4UL52VmhI4v9T7MQGxJj4e7crssW/NPY4D8F8m
         kYypEGsPCrw2WNOymMqWBvfRSxuaWYIu+5QK5j8HqN79EF37cckiHJw2WXRumlHsnxps
         Eab+PE1Dyqq1KFM+dJ1sT+BxPHL66FfxXgoWGrDoQEmVnx+UfN7qd9pEVzybsqDlGEvy
         v7rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=U5xdkbz8;
       spf=neutral (google.com: 2607:f8b0:4864:20::430 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krP2WQyDiPHqU2ofLMMaVOlAA8JO+twR12C3H9BecJ4=;
        b=eCDJeJAbrYCPNxgud8M++Q9KF9hrbOQK5PSdGL6ZZmcO3xKJdOGANHoXYuU6l2pRnD
         V8/5ahTXkKb2IIQXEjUXpzl1MpbNNSVa8Y8l/687aFgSEg3jzXHjVCC78NcYFozy9PCv
         n4PAsUy9jDiRcQ4zREWJuwx0rwV/El6VqR8M3VN5WxztOfZU7VAzJdZH/ieh+x+vYzD3
         A3QFtlyoBl0VKcgoYgR3TxHcbknpz/MX4wx2Q7Jqv1F++c3kpDH+pGkoB/gkd5tuoVpv
         pPsEpWjkBQpir/Dwa3jFkS48uMqTTgxm/QKj7I50j1PE+QBMUTS4LitQnrDC8euJQGm6
         PsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krP2WQyDiPHqU2ofLMMaVOlAA8JO+twR12C3H9BecJ4=;
        b=ZDhA7J/pntyuKKuHU73m+Ae+T38/zSNT8e6URzACgCzLkO+3jW31DmE0cf2BwYeqZ7
         O2wvaoetN4hgFSosn1dRL6xM+yYbPHruIN8sV/KAB2lDSk1QhRDOQrAEJBObXu04nMdb
         QqbZj5gWo4OK7EYV7KhxL3IcL2VvCK3IKLvxPnuAigIjJD8cvKDg1PXC9OQhdJg+pJSW
         2Bmd4jH+Go230h4I0uYpto+ewXo9eosaVx5lJ9UuJGoOXyGG0ZaO8gbYUjMtwrFp4ikf
         upAdl52ypRlOpsANqq5WWHTd325XztMRL0Hz/2fPe4DI2Q/zKtCrxRDYfjXP5t8hifhw
         G/EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UtwrfW+QB/gy2vqHWJy/aexI44XYaWRq/N+I6tq50Dji8ZB1I
	GBPihHthkXo0G+Y+JPxySCk=
X-Google-Smtp-Source: ABdhPJw0Mnqxe/TYS0M78zsaK9fcqo5RLwepNJ3z3DUF6C3353Moy++buE8PwvEqF6iFIi0awWLxvA==
X-Received: by 2002:a67:8008:: with SMTP id b8mr35841987vsd.13.1620896492996;
        Thu, 13 May 2021 02:01:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:b13:: with SMTP id b19ls638594uak.10.gmail; Thu, 13 May
 2021 02:01:32 -0700 (PDT)
X-Received: by 2002:ab0:2792:: with SMTP id t18mr36333840uap.1.1620896492310;
        Thu, 13 May 2021 02:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620896492; cv=none;
        d=google.com; s=arc-20160816;
        b=Kki7xw2arz/z/A1FZTTPD5tzZgcNg3NkUrjT/v1BZZy08OXCbwx3OsMss1p3xXnivn
         AR8Sc5CV9lTPDQhvXVl3EQA6BNcgdX7Udrc3gikf4lEbkmRdSauhF+MhpKBQoRbexq4b
         FEUCV/TvpRvaNcWIGROK39PNamgjKvMTT5vB/H+D9MmYU1lbUdShbZKwSCP62d582q4l
         B5HNA/iLvgZHqlcXKT3MpmHuBZrjx5BGVZcap2Zx3EPYm8jVvjDVwNBHBeoidhN0+Jfh
         sT3aNhPlC4J0zLfejoy1lYIQozRM5xwrvo41mgH3LYj2CdR2L4F6K1CjHW5bRjGkPhaM
         fVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=HW+96p10mFAktDnN5Hq2/3wFp7nRNWdcPbw7zfgFE1o=;
        b=buMSI0/aLT9IyuW/8pYh3l1Nx5oKHcNUjoeKU28UCMR9zG56XKyIY7dBwasrV5kSd0
         LgO0YJvvU6ao5itl0tP5IqnJTo2odzqe+F/h+a/U9CW2e5ssbDCUQlVX0O1PP7PqUoQy
         pyXww9PaV/Pl8jh8VynLNbhnm+aaqySHhHSGUqz37GQbH5emzxJgjUCXsPADq2obDsBa
         /JAgVfRvThdZ+ERtJXWpXy9Vq64mnXhLZXh8j6MnhzTWR3vfOqdAEGe7cN+9Za1Z0IIR
         1JQM24Cx6X8s6tAHK1YD8gEb8iJKlf73lNsxeAyXMpAv9jMZ8TikpLlbet6qPo/yMLLE
         vwnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=U5xdkbz8;
       spf=neutral (google.com: 2607:f8b0:4864:20::430 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id u15si155125vsi.0.2021.05.13.02.01.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 02:01:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::430 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id 10so21258604pfl.1
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 02:01:31 -0700 (PDT)
X-Received: by 2002:aa7:96c9:0:b029:28e:dcf7:7b41 with SMTP id h9-20020aa796c90000b029028edcf77b41mr39451151pfq.60.1620896487740;
        Thu, 13 May 2021 02:01:27 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id b23sm1838439pjo.26.2021.05.13.02.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 02:01:27 -0700 (PDT)
Message-ID: <609ceae7.1c69fb81.f9c6a.6f12@mx.google.com>
Date: Thu, 13 May 2021 02:01:27 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20210513
Subject: next/master build: 211 builds: 4 failed, 207 passed, 2 errors,
 1017 warnings (next-20210513)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=U5xdkbz8;       spf=neutral (google.com: 2607:f8b0:4864:20::430 is
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

next/master build: 211 builds: 4 failed, 207 passed, 2 errors, 1017 warning=
s (next-20210513)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210513/

Tree: next
Branch: master
Git Describe: next-20210513
Git Commit: ec2618180c3450d06a6a4ba951d4c9a2c689b517
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

riscv:
    nommu_k210_defconfig: (gcc-8) FAIL
    nommu_k210_sdcard_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    haps_hs_smp_defconfig+kselftest (gcc-8): 2 warnings

arm64:
    allmodconfig (clang-12): 13 warnings
    allmodconfig (gcc-8): 1 warning
    allmodconfig (clang-10): 18 warnings
    defconfig (clang-10): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 warning

arm:
    allmodconfig (gcc-8): 3 warnings
    allmodconfig (clang-12): 38 warnings
    allmodconfig (clang-10): 38 warnings
    exynos_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (clang-10): 4 warnings
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (clang-12): 4 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 1 warnin=
g
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 1 warning
    multi_v7_defconfig+kselftest (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 2 warnings

i386:

mips:
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning

riscv:
    nommu_k210_defconfig (gcc-8): 1 error, 427 warnings
    nommu_k210_sdcard_defconfig (gcc-8): 1 error, 449 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    2    mm/gup.c:2698:3: error: implicit declaration of function =E2=80=98=
mm_set_has_pinned_flag=E2=80=99; did you mean =E2=80=98set_tsk_thread_flag=
=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings summary:

    437  include/asm-generic/uaccess.h:48:3: warning: statement with no eff=
ect [-Wunused-value]
    437  include/asm-generic/uaccess.h:48:16: warning: left-hand operand of=
 comma expression has no effect [-Wunused-value]
    32   1 warning generated.
    8    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unu=
sed variable =E2=80=98ret=E2=80=99 [-Wunused-variable]
    8    2 warnings generated.
    6    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unu=
sed variable 'ret' [-Wunused-variable]
    4    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialize=
d when used here [-Wuninitialized]
    4    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to =
silence this warning
    4    kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialize=
d when used here [-Wuninitialized]
    4    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to =
silence this warning
    4    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implici=
t conversion from 'unsigned long long' to 'unsigned long' changes value fro=
m 5000000000 to 705032704 [-Wconstant-conversion]
    4    #warning This code requires at least version 4.6 of GCC
    3    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack=
 frame size of 1144 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-tha=
n=3D]
    2    drivers/staging/rtl8723bs/core/rtw_security.c:586:5: warning: stac=
k frame size of 1144 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-t=
han=3D]
    2    drivers/staging/rtl8723bs/core/rtw_security.c:145:6: warning: stac=
k frame size of 1096 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-th=
an=3D]
    2    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame si=
ze of 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    2    drivers/platform/surface/surface_aggregator_registry.c:478:25: war=
ning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') change=
s value from 65535 to 255 [-Wconstant-conversion]
    2    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    2    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit co=
nversion from 'int' to '__u8' (aka 'unsigned char') changes value from 6553=
5 to 255 [-Wconstant-conversion]
    2    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    2    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    2    cc1: some warnings being treated as errors
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210513/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    4 warnings generated.
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    warning: This code requires at least version 4.6 of GCC [-W#warnin=
gs]
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.13.0-rc1-nex=
t-20210513/kernel/drivers/media/tuners/tuner-types.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1392 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1384 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    include/drm/drm_print.h:412:32: warning: format =E2=80=98%llx=E2=
=80=99 expects argument of type =E2=80=98long long unsigned int=E2=80=99, b=
ut argument 4 has type =E2=80=98resource_size_t=E2=80=99 {aka =E2=80=98unsi=
gned int=E2=80=99} [-Wformat=3D]
    1    include/drm/drm_print.h:412:32: warning: format =E2=80=98%llx=E2=
=80=99 expects argument of type =E2=80=98long long unsigned int=E2=80=99, b=
ut argument 3 has type =E2=80=98resource_size_t=E2=80=99 {aka =E2=80=98unsi=
gned int=E2=80=99} [-Wformat=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:514:5: warning: stac=
k frame size of 1168 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-t=
han=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:514:5: warning: stac=
k frame size of 1160 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-t=
han=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame siz=
e of 1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame siz=
e of 1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame =
size of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame =
size of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-=
1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5560 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5536 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu=
_ev_hw_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    arch/arc/include/asm/perf_event.h:126:23: warning: =E2=80=98arc_pm=
u_cache_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210513/kernel/sound/soc/intel/boards/snd-soc-i=
ntel-hda-dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210513/kernel/drivers/clk/keystone/pll.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210513/kernel/drivers/clk/keystone/gate.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc1-next-20210513/kernel/crypto/cast_common.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section m=
ismatches

Warnings:
    include/drm/drm_print.h:412:32: warning: format =E2=80=98%llx=E2=80=99 =
expects argument of type =E2=80=98long long unsigned int=E2=80=99, but argu=
ment 3 has type =E2=80=98resource_size_t=E2=80=99 {aka =E2=80=98unsigned in=
t=E2=80=99} [-Wformat=3D]
    include/drm/drm_print.h:412:32: warning: format =E2=80=98%llx=E2=80=99 =
expects argument of type =E2=80=98long long unsigned int=E2=80=99, but argu=
ment 4 has type =E2=80=98resource_size_t=E2=80=99 {aka =E2=80=98unsigned in=
t=E2=80=99} [-Wformat=3D]
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 38 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1384 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to silen=
ce this warning
    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to silen=
ce this warning
    2 warnings generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack fram=
e size of 1144 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:145:6: warning: stack fra=
me size of 1096 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-than=3D=
]
    drivers/staging/rtl8723bs/core/rtw_security.c:514:5: warning: stack fra=
me size of 1168 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-than=
=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:586:5: warning: stack fra=
me size of 1144 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-than=
=3D]
    4 warnings generated.
    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame size of =
1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame size of=
 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame size =
of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5560 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 38 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1392 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    warning: This code requires at least version 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to silen=
ce this warning
    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialized whe=
n used here [-Wuninitialized]
    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to silen=
ce this warning
    2 warnings generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5536 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack fram=
e size of 1144 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:145:6: warning: stack fra=
me size of 1096 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-than=3D=
]
    drivers/staging/rtl8723bs/core/rtw_security.c:514:5: warning: stack fra=
me size of 1160 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-than=
=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:586:5: warning: stack fra=
me size of 1144 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-than=
=3D]
    4 warnings generated.
    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame size of =
1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame size of=
 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame size =
of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 13 warnings, 0 sec=
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
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable 'ret' [-Wunused-variable]
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/media/platform/exynos4-is/media-dev.c:1287:6: warning: unused v=
ariable =E2=80=98ret=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sec=
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
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210513/kernel/crypto/cast_common.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210513/kernel/drivers/clk/keystone/gate.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210513/kernel/drivers/clk/keystone/pll.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210513/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210513/kernel/sound/soc/intel/boards/snd-soc-intel-=
hda-dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

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
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.13.0-rc1-next-202=
10513/kernel/drivers/media/tuners/tuner-types.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc1-next-20210513/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 0 warnings, 0 section mismatches

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
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
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
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 wa=
rnings, 0 section mismatches

Warnings:
    arch/arc/include/asm/perf_event.h:126:23: warning: =E2=80=98arc_pmu_cac=
he_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu_ev_h=
w_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]

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
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

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
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 427 warnings, =
0 section mismatches

Errors:
    mm/gup.c:2698:3: error: implicit declaration of function =E2=80=98mm_se=
t_has_pinned_flag=E2=80=99; did you mean =E2=80=98set_tsk_thread_flag=E2=80=
=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    cc1: some warnings being treated as errors
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 449 war=
nings, 0 section mismatches

Errors:
    mm/gup.c:2698:3: error: implicit declaration of function =E2=80=98mm_se=
t_has_pinned_flag=E2=80=99; did you mean =E2=80=98set_tsk_thread_flag=E2=80=
=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    cc1: some warnings being treated as errors
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]

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
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_re=
locate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
clang-built-linux/609ceae7.1c69fb81.f9c6a.6f12%40mx.google.com.
