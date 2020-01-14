Return-Path: <clang-built-linux+bncBDT6TV45WMPRBMXH6XYAKGQEXLQTWVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B0A13A24D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 08:54:27 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id f11sf8049056edy.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 23:54:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578988466; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6qof0PSG/GOlQCbuw//9XFrDBMB7HYXIm5KAHqYpoecbo5sZorFBZNdgmwY2ySFRX
         RgMszqKsO2/hhnD5xjd5DpK3KPfLEDkemwTWBiM0iGmin9N65Qu/N9BTBgFWL7hm2vvN
         yQ93cgjb/JeWe3SoLLOddwv8+fMMJuWboPj3tHNr0YfI5x31EjIPi9r9zHSGuJHimSuq
         d04qUZcLKBq62mgpeFq1AwYTu0/ykXT+zOkkDQCSdAVE0RKIFRx47SeBRBjyBNoh6A71
         UnghykxM2A2bcqd8Fbz5rU10+YuLkQKiDcbTV62D8VXbILRvAE0Yh+fq60zRk1mFeH8P
         ml9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=YWSduzirTkipABC9n0OP8mAn7159hhRz8jsPcbuVM2I=;
        b=eHKtUlQHqsehzomfaXEGY79r1caJS2nmvzXhWwHz+caAqIIvwv94N6N/wzTV0+ODI2
         vXepp7mJb2VmNNfFOqjHUa6zKnCsuS7bB+h5O8banQ3rIZIVIhLteJPZBMBh+DdM643r
         Ro1nTahybND26pIueDREWhbxcVOoIb6qD1XM9d7cr8Xx9QzAHk53JtdBoQmZHlINatyp
         BHUpXjQ9OYnLLZAjm2+Z9NjU3djz5fvD9a2NBVdzWcHfZ5Y5ycdFXJAuBlIuFgMl74WU
         I5KcJ3lLfAT6NMMuK7pmb5BSqqFkkQkfbEvW08HRyQ1H+haUMFkXpWG1xY7jC01YlMRC
         Qe7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=kEOMe8R3;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWSduzirTkipABC9n0OP8mAn7159hhRz8jsPcbuVM2I=;
        b=qXq1S6sN23fStWPJwgJqI+mZwB1jJqt5SA30qEA/dUDhF9heGDdICjdOgo6NF02ZfI
         LroYbKU3zS2qbZM7W9qEqLB6uOfHK4Qza+IXv7gNakPuJSUiOOFggvohBbgmiQSswgdT
         8C3HhqQ4WXCf9KZ40p1+4W1yARQaEVkbX7ILSbPddgzb+aVn975T/Gb9WBLOz0VRHD5T
         yqTzlGTAgymqALIRw1i327M3QIP9C5UGj1qCpysQ3wZHQwGTlTDy7fnOHNNDrgQZYTOm
         jKRqX5zc/PsPlRGkGI2lrtsyx2wnqBytLh/YFwtofr8X3OoedTxbQKKtWU+lwoQ7ogDO
         Z/9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWSduzirTkipABC9n0OP8mAn7159hhRz8jsPcbuVM2I=;
        b=FVepHUQpTf0/Rl8zuWv0MupUm0wU8/8wUtMwNR2yxR5DwtBZUds5V0UO4AST/Cve48
         qNEroQzd6oHf2IOJUBWPNGan45aTMgg3BYdDDJXexsOtCszPb4B44qRToYDkP6x/Lm9E
         7UFJBglt8AsXRB48n9yDFjEIbes3+axm40l6xS4Qb0ULg6vw/9FUfxPkA9fln22Guet7
         r11w/mUcHXvyefReVooesNxzzmNOXZKwIHonPGyhIiubaObMQbVSLy9IXQCc7rtKQOIi
         qezI14tdUN0sBMXEWAJBHeSG/mzbALX0PZJ7eJzAdwLegPEdynAZJpbEAI0k1YHAx5F2
         V4GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpWG4VUoBT9nduGg/inD5HPRtcvzunAWGo5LCsPtDZlbZ4TkrR
	WOm4G0nuweqtJGjkafw/JR8=
X-Google-Smtp-Source: APXvYqx4FLHQinWQq7pqEXXBFrB5u4IZp7cWo6bIcns8dCEv5DYLLYgiAwUO1OYw4f79nWpA6idZXQ==
X-Received: by 2002:a17:906:3288:: with SMTP id 8mr21469458ejw.182.1578988466548;
        Mon, 13 Jan 2020 23:54:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:4120:: with SMTP id nw24ls4033052ejb.16.gmail; Mon,
 13 Jan 2020 23:54:26 -0800 (PST)
X-Received: by 2002:a17:906:2892:: with SMTP id o18mr21355074ejd.312.1578988465896;
        Mon, 13 Jan 2020 23:54:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578988465; cv=none;
        d=google.com; s=arc-20160816;
        b=QRyPXuyLOIA0Rb5lP8T0oTh+PRp+Sl05GEe41kt1qHNJidYDpL3kLS4IDc2SDTWRXZ
         vo0YQ80P08Okrfh9IhlcHiBfkxZbFKQObakushOvFczxjmJC2iy+V171EIV53sEPLCSJ
         FWbg34KeGIhn7/9Kqk1e9wTKymyQ7Qts0KlO7D7IhdAE9dtOz/bqcDhH8LpmU8PExcd8
         FJttSeLUGK6ZSEjQsZ82QXjkI54fhVCnmp2HtIAjhR8Xq/guKI6DJgmsqp+8HXra+Jbc
         +KWFEv6KdDLGK+fGSl8xy2rLOjo7Bvl2wqBRNVs+KHCOlSP4F5Xd1cKQQBKyjVEfUzKp
         ruWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=tJJG8vCTwi9cQgihpAfggfOfdMhZvoXuf/Ra0o/MULI=;
        b=Wlt1Cz6WrtLt6JTYwrFW/rFBAOQEPg9+b8cFA+kehQRA+Conq9Ml7tDNSJkmNq4Tzs
         KvzIedjlCNAf4sSuRuCc2xLvqvk6I9TfhxrP6Qpv0rdU/pp8ZUIp+XUsp+4eD01rrq4C
         0U4wHiK+fIEIpuKHnyrb9ObIUjlXBoR5H+RwJKPfuUn7S/SZznmR9pSJbu5XV02Dxln8
         VJUuC9eeI7tTTpDARaQG9BlBkrehaIJIQzg1s86zzzOfNR9dNlHbdeFGo3jP6F5a134U
         hjaeWRNhFmmgdSKTs6P8u9rF4+Dv+JHH9Y+dvWubyN651VeyrqjqO1wo+Ci+XtUjUqBH
         6uCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=kEOMe8R3;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x18si620839eds.2.2020.01.13.23.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 23:54:25 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id u2so12494620wmc.3
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 23:54:25 -0800 (PST)
X-Received: by 2002:a1c:a584:: with SMTP id o126mr11010346wme.163.1578988464483;
        Mon, 13 Jan 2020 23:54:24 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id z4sm17742423wma.2.2020.01.13.23.54.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 23:54:23 -0800 (PST)
Message-ID: <5e1d73af.1c69fb81.1c012.a8e3@mx.google.com>
Date: Mon, 13 Jan 2020 23:54:23 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20200114
Subject: next/master build: 215 builds: 6 failed, 209 passed, 24 errors,
 74 warnings (next-20200114)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=kEOMe8R3;       spf=neutral (google.com: 2a00:1450:4864:20::341 is
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

next/master build: 215 builds: 6 failed, 209 passed, 24 errors, 74 warnings=
 (next-20200114)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200114/

Tree: next
Branch: master
Git Describe: next-20200114
Git Commit: 1b851f985f514a7a173e5c55b9fdbf5d18f9ea74
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
    allmodconfig (gcc-8): 7 warnings

arm:
    allmodconfig (gcc-8): 25 warnings
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning

riscv:
    allnoconfig (gcc-8): 4 errors
    defconfig (gcc-8): 4 errors
    defconfig (gcc-8): 4 errors
    nommu_virt_defconfig (gcc-8): 4 errors
    rv32_defconfig (gcc-8): 4 errors, 3 warnings
    tinyconfig (gcc-8): 4 errors

x86_64:
    allmodconfig (gcc-8): 8 warnings
    tinyconfig (gcc-8): 1 warning

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
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    8    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=
=E2=80=99 may be used uninitialized in this function [-Wmaybe-uninitialized=
]
    6    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: for=
mat =E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, bu=
t argument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    6    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: for=
mat =E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, bu=
t argument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
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
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=
=98rtd=E2=80=99 [-Wunused-variable]
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
    1    /tmp/cc8xCzLm.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc8xCzLm.s:18119: Warning: using r15 results in unpredictable=
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
    1    WARNING: vmlinux.o(.text.unlikely+0x3a98): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3740): Section mismatch in ref=
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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1184 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    drivers/gpio/gpio-grgpio.c:438:16: warning: unused variable =E2=80=98fl=
ags=E2=80=99 [-Wunused-variable]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 section =
mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    /tmp/cc8xCzLm.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc8xCzLm.s:18191: Warning: using r15 results in unpredictable beha=
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
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
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
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 section=
 mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    drivers/gpio/gpio-grgpio.c:438:16: warning: unused variable =E2=80=98fl=
ags=E2=80=99 [-Wunused-variable]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/base/test/propert=
y-entry-test.o

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
    WARNING: vmlinux.o(.text.unlikely+0x3a98): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3740): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

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
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]

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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warni=
ngs, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

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
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=98rtd=
=E2=80=99 [-Wunused-variable]

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
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

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
clang-built-linux/5e1d73af.1c69fb81.1c012.a8e3%40mx.google.com.
