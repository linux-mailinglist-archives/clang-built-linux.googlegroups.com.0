Return-Path: <clang-built-linux+bncBDT6TV45WMPRBYGXVKAQMGQEVBNP37Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E45E331C02D
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 18:14:09 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id u17sf10510978ybi.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 09:14:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613409249; cv=pass;
        d=google.com; s=arc-20160816;
        b=DDkxuGsWgQyBCOme5zC+boXliDhbyMKBCv86VCzlK2NdsNQctw1cMC9TR0LbqsYvXz
         UipaNiMn/DykEvR2uubrwnFVvsLSDM1aAGmYqF3JVOQ+UlnLP6etRoVNCPwWCpekzFnD
         fgCMZg8H5ZXQF2Zuz6cwbZDMqzPEAYnVGtZ3++8s171DMVVXpVWKTffDUudja6wjp977
         t/os7YRMx0MjUfP70KYyfhi7liW904asxCadDsgGjSBlKP0N16upAKjhVeBUowDEZ9nM
         NVZGyiG+bA2SaSZQJkHIWcnMMAcVZi7EmIK+log3cpIA00vBsEfoxYJWoGH9vcZvzRej
         85Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=3lLxFXkoh4m00coDdfGrka2ICho1iird9JtXwDxb+Pk=;
        b=ub9aB0m9GvPd1zaFxiILaJNblVd3emS3U1nwkXFz83ZM46phew9XGukfDPg83jFg1Y
         AqaXL9eVoPT/uh9u8zTHEaz8XXmCPaBT57/uxyCYxumhf7xJ/UoYMDN0ZNLxhK1gX0eu
         +zd4nXcc1pSAkbJ1tTjm2yw2L0MsLGViITF0ccUp/4tV3OLyyOixLhtOG/+EECmzXExl
         1pTx389pbncURwZSL55+r4wLV+Yv+FaeSs9LVVEIJGrUrK16Q/8W3JkNhONT/jzqF2og
         1268PzRwkrv5ZcqQY76AOhNbQSz4eC4H47qUWoBfjjCzr12CXQrqTO/NXbJYUpzRwLtm
         Cjjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=UGGtpzvU;
       spf=neutral (google.com: 2607:f8b0:4864:20::630 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3lLxFXkoh4m00coDdfGrka2ICho1iird9JtXwDxb+Pk=;
        b=Ayus8DKl+8vWYNJZ5mCex6e0K8P7ZbAjyf0xNkZutsY19Odozpy9ITuFBD+Xkzb5Ri
         60B3F5M5ge/nS5RMHg1rx2tH0MkFu8QZ9l2vP1Y3a916cvtHs7qPioiwBNr5YSDzcaPa
         XuS6FCJiYaQBlctoSRC5AM0OJP3ytV5kL/D+so2VtIJbLCMv+Giq/ti14Ux6gdMvJLqY
         CDGEt3SHoRrqLbmh1qUjWh6QyC2YHXJpFmRlsz15pvZ78o+jHktTPRVs3+csa6b+tNIe
         1i5FrY5WS4s8vaw1HsICdkRgsjEi0x6OooLghwWnF4QrjazJp8op7Fr7GUQQ0Ii3wivK
         MIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3lLxFXkoh4m00coDdfGrka2ICho1iird9JtXwDxb+Pk=;
        b=pBAIJ7vBeNEtSZrFZygx7qAY6hTuCfUsIEQcx+++eizkN2emS2W9wWIJLjfCy8F+VW
         VpHqcaBnWS10DZrqKT0AaLsJDAXPuIl/psrK/6fK4ULsMWmOMI6z+9ALGEExObgM+MxO
         3BhENuTZA6gqAxrkgnDMSjFWOW7GPGzjEaZb3qNF84pFElyGS644RKkALQaM/stL8VFv
         Fmzs20uHXT8CUwdYtCeyywi7afe4EzbbF6omWrkG92uRqbdBj/ZQ3H9ugUUhF8Crfce8
         Q4yl4+iD6wToWLYx/9V997XpKL3X/rXxPRVM5plo2LTrmtdFySKLXJDga6POK7N1myGy
         7BzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iY4DmuMJcyVKq8StAINSqJ7lu9d3DZerA7anfng5lguHUD0kG
	1zluzR5u+cnVBQqbUDb0BHs=
X-Google-Smtp-Source: ABdhPJxzgHr1QZVyzE07AW1k5O8ZNaNVKFjGLM2x74fULe8N2s/EkQir/cS7ERxeoDQB7/CN8Thhgg==
X-Received: by 2002:a5b:751:: with SMTP id s17mr23887231ybq.111.1613409248762;
        Mon, 15 Feb 2021 09:14:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls3630071ybg.3.gmail; Mon, 15 Feb
 2021 09:14:08 -0800 (PST)
X-Received: by 2002:a25:23c6:: with SMTP id j189mr24104396ybj.211.1613409248152;
        Mon, 15 Feb 2021 09:14:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613409248; cv=none;
        d=google.com; s=arc-20160816;
        b=BCuvTq8lPpvx3lXMZOkSO92W4NfQSg74sYGZpksBJ119NbpB7QtPkctbGiQ36WA5C2
         /AaZp+/C/SlrSLZ+OEgAPGaNHxEoiNOweLPkdjEWwxXqOOevf2p7RYStIETebFtgbo6X
         TJTNxnS4h6TyZwd2nfSjazZvoYjK/+LJ9NF/+otlzIuM8+sdVfF/E0UJuCtztorIuu3m
         aN3dGVNnuUEWcqAjKjUjd8fAms+WrvZnB/jHYAhWn279UGBhqP+9LQ4fvfL3+HdwohM+
         Y3xQMFOfyPo+qYVMmQsYyC9LhnyGQ+rMUUmrrac4f2s5AZsCUI8cdGwXdbNiBeFo9V4T
         Xp0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=zM+hCixeDQvEmklr+R6mKCToBdkDXfMZWxM98/IUx+Y=;
        b=ku6N07dDuxKAaFQ0y+DVi+tTu72ZKJls8afLbkcrjLAb0BOKB+khP/tHipcoGrS+Ya
         cDT03a0PrpPcRdzvrQTYag8R2GCqmRryH/205uVJt4ruPKcwZeYqXV2SAF1zUNQLKFgL
         RpkuJ4AYG2rlo5gdJJ0GaOp5F3FESavm9lqUFoX6IMATa1yJUPnhYuA/cE+vcnwLHrIl
         4NL9ZVaS1ZxlDyAQHMQXX8e8oZn+to89NCb0K2s7Tooijqc8ZUqc613kz+KSlcEBRsFE
         IYf6bwvMgrTW0KSzfLjlcqXhke061PmEJYgnRB8qooXS7SwEMSLH8aHoehI3r9X+EROj
         pgZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=UGGtpzvU;
       spf=neutral (google.com: 2607:f8b0:4864:20::630 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id e143si1272789ybb.5.2021.02.15.09.14.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 09:14:07 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::630 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id a9so1942870plh.8
        for <clang-built-linux@googlegroups.com>; Mon, 15 Feb 2021 09:14:07 -0800 (PST)
X-Received: by 2002:a17:902:e80b:b029:e3:3df1:5e93 with SMTP id u11-20020a170902e80bb02900e33df15e93mr10473668plg.80.1613409244815;
        Mon, 15 Feb 2021 09:14:04 -0800 (PST)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id c12sm18290193pjq.48.2021.02.15.09.14.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 09:14:03 -0800 (PST)
Message-ID: <602aabdb.1c69fb81.ac4be.68fe@mx.google.com>
Date: Mon, 15 Feb 2021 09:14:03 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20210215
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 228 builds: 9 failed, 219 passed, 34 errors,
 728 warnings (next-20210215)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=UGGtpzvU;       spf=neutral (google.com: 2607:f8b0:4864:20::630 is
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

next/master build: 228 builds: 9 failed, 219 passed, 34 errors, 728 warning=
s (next-20210215)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210215/

Tree: next
Branch: master
Git Describe: next-20210215
Git Commit: 52a0bcb60e40f30211cb5cbbb0f582ec4e91d896
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-10) FAIL

arm:
    allmodconfig: (clang-10) FAIL
    aspeed_g5_defconfig: (clang-10) FAIL
    allmodconfig: (clang-11) FAIL
    allmodconfig: (gcc-8) FAIL

i386:
    allmodconfig: (clang-10) FAIL
    allmodconfig: (clang-11) FAIL

mips:
    ip27_defconfig: (gcc-8) FAIL

x86_64:
    allmodconfig: (clang-10) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (clang-10): 1 error, 16 warnings
    allmodconfig (gcc-8): 56 warnings
    defconfig (clang-10): 1 warning
    defconfig (clang-11): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 warning

arm:
    allmodconfig (gcc-8): 4 errors, 124 warnings
    allmodconfig (clang-10): 4 errors, 103 warnings
    allmodconfig (clang-11): 4 errors, 101 warnings
    aspeed_g5_defconfig (clang-10): 11 errors
    bcm2835_defconfig (gcc-8): 2 warnings
    gemini_defconfig (gcc-8): 2 warnings
    keystone_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 4 warnings

i386:
    allmodconfig (clang-10): 4 errors, 101 warnings
    allmodconfig (clang-11): 4 errors, 99 warnings

mips:
    bigsur_defconfig (gcc-8): 2 warnings
    ip22_defconfig (gcc-8): 2 warnings
    ip27_defconfig (gcc-8): 1 error, 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    sb1250_swarm_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 2 warnings

riscv:
    defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (clang-10): 1 error, 28 warnings
    allmodconfig (gcc-8): 62 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-11): 2 warnings
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    4    drivers/cxl/mem.c:844:14: error: implicit declaration of function =
'readq' [-Werror,-Wimplicit-function-declaration]
    4    drivers/cxl/mem.c:414:14: error: implicit declaration of function =
'readq' [-Werror,-Wimplicit-function-declaration]
    4    drivers/cxl/mem.c:350:15: error: implicit declaration of function =
'readq' [-Werror,-Wimplicit-function-declaration]
    4    drivers/cxl/mem.c:335:2: error: implicit declaration of function '=
writeq' [-Werror,-Wimplicit-function-declaration]
    2    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefi=
ned!
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x375C4): reloca=
tion R_ARM_PREL31 out of range: 2135593844 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37524): reloca=
tion R_ARM_PREL31 out of range: 2135594004 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37514): reloca=
tion R_ARM_PREL31 out of range: 2135594020 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x374C4): reloca=
tion R_ARM_PREL31 out of range: 2135594100 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x374B4): reloca=
tion R_ARM_PREL31 out of range: 2135594116 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3749C): reloca=
tion R_ARM_PREL31 out of range: 2135594140 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37484): reloca=
tion R_ARM_PREL31 out of range: 2135594164 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37454): reloca=
tion R_ARM_PREL31 out of range: 2135594212 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37424): reloca=
tion R_ARM_PREL31 out of range: 2135594260 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x373DC): reloca=
tion R_ARM_PREL31 out of range: 2135594332 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34DD8): reloca=
tion R_ARM_PREL31 out of range: 2135538528 is not in [-1073741824, 10737418=
23]
    1    drivers/cxl/mem.c:350:15: error: implicit declaration of function =
=E2=80=98readq=E2=80=99; did you mean =E2=80=98readl=E2=80=99? [-Werror=3Di=
mplicit-function-declaration]
    1    drivers/cxl/mem.c:335:2: error: implicit declaration of function =
=E2=80=98writeq=E2=80=99; did you mean =E2=80=98writel=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
    1    ERROR: modpost: "iwl_so_trans_cfg" [drivers/net/wireless/intel/iwl=
wifi/iwlwifi.ko] undefined!
    1    ././include/linux/compiler_types.h:320:38: error: call to =E2=80=
=98__compiletime_assert_298=E2=80=99 declared with attribute error: FIELD_G=
ET: mask is zero
    1    ././include/linux/compiler_types.h:320:38: error: call to =E2=80=
=98__compiletime_assert_266=E2=80=99 declared with attribute error: FIELD_G=
ET: mask is zero

Warnings summary:

    52   1 warning generated.
    44   drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshif=
t-count-negative]
    44   drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type =
[-Wshift-count-overflow]
    44   drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshif=
t-count-negative]
    44   drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshif=
t-count-negative]
    44   drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type =
[-Wshift-count-overflow]
    44   ./include/linux/bits.h:36:11: warning: right shift count is negati=
ve [-Wshift-count-negative]
    43   drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshif=
t-count-negative]
    22   ./include/linux/bits.h:35:22: warning: left shift count >=3D width=
 of type [-Wshift-count-overflow]
    12   2 warnings generated.
    8    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_ph=
y_resume=E2=80=99 defined but not used [-Wunused-function]
    8    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_ph=
y_suspend=E2=80=99 defined but not used [-Wunused-function]
    6    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: va=
riable 'stats' is uninitialized when used here [-Wuninitialized]
    6    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: init=
ialize the variable 'stats' to silence this warning
    6    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warnin=
g: variable 'mode' is used uninitialized whenever switch default is taken [=
-Wsometimes-uninitialized]
    6    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note:=
 initialize the variable 'mode' to silence this warning
    6    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: v=
ariable 'structure_size' is used uninitialized whenever switch default is t=
aken [-Wsometimes-uninitialized]
    6    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: ini=
tialize the variable 'structure_size' to silence this warning
    4    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the fra=
me size of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    4    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/mod=
ules/5.11.0-rc7-next-20210215/kernel/drivers/media/tuners/tuner-types.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    66 warnings and 4 errors generated.
    4    ./include/linux/bitfield.h:55:18: warning: left shift count is neg=
ative [-Wshift-count-negative]
    2    net/wireless/nl80211.c:7350:1: warning: the frame size of 2256 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:7350:1: warning: the frame size of 2240 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:5963:1: warning: the frame size of 2912 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:5963:1: warning: the frame size of 2904 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:2788:1: warning: the frame size of 5360 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:2788:1: warning: the frame size of 5296 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:1970:1: warning: the frame size of 2216 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    net/wireless/nl80211.c:1970:1: warning: the frame size of 2208 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    lib/bitfield_kunit.c:93:1: warning: the frame size of 11296 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    2    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame si=
ze of 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    2    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the =
frame size of 2656 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    2    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2088 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2080 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/net/macsec.c:3252:1: warning: the frame size of 4176 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/net/macsec.c:3252:1: warning: the frame size of 4040 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:137:6: warni=
ng: stack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-l=
arger-than=3D]
    2    drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:554:12: warning: s=
tack frame size of 1208 bytes in function 'mlx5e_hairpin_rss_init' [-Wframe=
-larger-than=3D]
    2    drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:554:12: warning: s=
tack frame size of 1148 bytes in function 'mlx5e_hairpin_rss_init' [-Wframe=
-larger-than=3D]
    2    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:734:8: warning=
: variable 'lmac_id' is uninitialized when used here [-Wuninitialized]
    2    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:731:38: warnin=
g: variable 'cgx_id' is uninitialized when used here [-Wuninitialized]
    2    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:726:20: note: =
initialize the variable 'lmac_id' to silence this warning
    2    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:726:11: note: =
initialize the variable 'cgx_id' to silence this warning
    2    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 28=
32 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame s=
ize of 5280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame s=
ize of 5888 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame s=
ize of 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame s=
ize of 3280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame s=
ize of 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/cxd2841er.c:3640:1: warning: the frame=
 size of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/tiny/ili9225.c:281:1: warning: the frame size of 2=
720 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5704 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3005:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    2    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    2    arch/x86/kvm/x86.c:5044:1: warning: the frame size of 2352 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    2    arch/x86/kernel/cpu/mshyperv.o: warning: objtool: sysvec_hyperv_st=
imer0()+0x88: sibling call from callable instruction with modified stack fr=
ame
    2    arch/x86/kernel/cpu/mshyperv.o: warning: objtool: sysvec_hyperv_ca=
llback()+0x88: sibling call from callable instruction with modified stack f=
rame
    2    arch/x86/kernel/cpu/mshyperv.c:443:1: warning: the frame size of 3=
880 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    arch/x86/kernel/cpu/mce/amd.o: warning: objtool: sysvec_deferred_e=
rror()+0x88: sibling call from callable instruction with modified stack fra=
me
    2    arch/x86/kernel/cpu/acrn.o: warning: objtool: sysvec_acrn_hv_callb=
ack()+0x88: sibling call from callable instruction with modified stack fram=
e
    2    arch/x86/hyperv/hv_init.o: warning: objtool: sysvec_hyperv_reenlig=
htenment()+0x88: sibling call from callable instruction with modified stack=
 frame
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    ./include/linux/bitfield.h:50:16: warning: right shift count is ne=
gative [-Wshift-count-negative]
    2    ./include/linux/bitfield.h:109:38: warning: right shift count is n=
egative [-Wshift-count-negative]
    2    #warning This code requires at least version 4.6 of GCC
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    net/wireless/nl80211.c:7350:1: warning: the frame size of 2272 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:5963:1: warning: the frame size of 2872 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:2788:1: warning: the frame size of 5248 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:1970:1: warning: the frame size of 2248 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/ipv4/tcp.c:3886:1: warning: the frame size of 2056 bytes is la=
rger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/ieee802154/nl802154.c:541:1: warning: the frame size of 2256 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/ieee802154/nl802154.c:541:1: warning: the frame size of 2224 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/ieee802154/nl802154.c:541:1: warning: the frame size of 2216 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/caif/cfctrl.c:549:1: warning: the frame size of 2624 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/caif/cfctrl.c:549:1: warning: the frame size of 2592 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/caif/cfctrl.c:549:1: warning: the frame size of 2576 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:306:1: warning: the frame size of 2200 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:306:1: warning: the frame size of 2152 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:306:1: warning: the frame size of 2144 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:1625:1: warning: the frame size of 2744 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:1625:1: warning: the frame size of 2696 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:1625:1: warning: the frame size of 2672 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/test_kasan.c:892:1: warning: the frame size of 2432 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/test_kasan.c:892:1: warning: the frame size of 2384 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/test_kasan.c:892:1: warning: the frame size of 2160 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/test_kasan.c:875:1: warning: the frame size of 2160 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/test_kasan.c:875:1: warning: the frame size of 2128 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/crypto/curve25519-hacl64.c:601:1: warning: the frame size of 2=
384 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/crypto/curve25519-hacl64.c:601:1: warning: the frame size of 2=
112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/bitfield_kunit.c:93:1: warning: the frame size of 11216 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2368 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2336 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2192 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/super.c:1197:1: warning: the frame size of 3184 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/super.c:1197:1: warning: the frame size of 3176 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/super.c:1197:1: warning: the frame size of 2688 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:2072:1: warning: the frame size of 2064 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:1694:1: warning: the frame size of 2616 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:1694:1: warning: the frame size of 2592 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:1694:1: warning: the frame size of 2480 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2112 =
bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2072 =
bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/aops.c:1884:1: warning: the frame size of 2128 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/aops.c:1884:1: warning: the frame size of 2112 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame si=
ze of 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1    drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c:2756:1: warning: t=
he frame size of 2504 bytes is larger than 2048 bytes [-Wframe-larger-than=
=3D]
    1    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: s=
tack frame size of 1068 bytes in function 'atomisp_set_fmt' [-Wframe-larger=
-than=3D]
    1    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: s=
tack frame size of 1048 bytes in function 'atomisp_set_fmt' [-Wframe-larger=
-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1856 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1848 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1756 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1752 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:386:1: wa=
rning: the frame size of 4240 bytes is larger than 2048 bytes [-Wframe-larg=
er-than=3D]
    1    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:386:1: wa=
rning: the frame size of 4224 bytes is larger than 2048 bytes [-Wframe-larg=
er-than=3D]
    1    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:386:1: wa=
rning: the frame size of 4216 bytes is larger than 2048 bytes [-Wframe-larg=
er-than=3D]
    1    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the =
frame size of 2688 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the=
 frame size of 2568 bytes is larger than 2048 bytes [-Wframe-larger-than=3D=
]
    1    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the=
 frame size of 2472 bytes is larger than 2048 bytes [-Wframe-larger-than=3D=
]
    1    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the=
 frame size of 2464 bytes is larger than 2048 bytes [-Wframe-larger-than=3D=
]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:25992=
:1: warning: the frame size of 2544 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:25992=
:1: warning: the frame size of 2480 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:25992=
:1: warning: the frame size of 2448 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894=
:1: warning: the frame size of 3184 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894=
:1: warning: the frame size of 3136 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894=
:1: warning: the frame size of 3128 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552=
:1: warning: the frame size of 3256 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552=
:1: warning: the frame size of 3168 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552=
:1: warning: the frame size of 3152 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/ath/ath11k/qmi.c:1690:8: warning: format =E2=
=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long unsigned in=
t=E2=80=99, but argument 5 has type =E2=80=98dma_addr_t=E2=80=99 {aka =E2=
=80=98unsigned int=E2=80=99} [-Wformat=3D]
    1    drivers/net/wireguard/selftest/allowedips.c:675:1: warning: the fr=
ame size of 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/wireguard/selftest/allowedips.c:675:1: warning: the fr=
ame size of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2120 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/macsec.c:3252:1: warning: the frame size of 4080 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the fra=
me size of 2400 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the fra=
me size of 2368 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the fra=
me size of 2360 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/bonding/bond_netlink.c:685:1: warning: the frame size =
of 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/bonding/bond_netlink.c:685:1: warning: the frame size =
of 2104 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/bonding/bond_netlink.c:685:1: warning: the frame size =
of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 28=
16 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the fra=
me size of 2144 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/i2c/tvp5150.c:273:1: warning: the frame size of 3992=
 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/i2c/tvp5150.c:273:1: warning: the frame size of 3968=
 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/i2c/tvp5150.c:273:1: warning: the frame size of 3952=
 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame s=
ize of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame s=
ize of 2104 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame s=
ize of 4880 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame s=
ize of 2808 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame s=
ize of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame s=
ize of 5248 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame s=
ize of 5872 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame s=
ize of 2336 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame s=
ize of 2328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame s=
ize of 2296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame s=
ize of 2136 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame s=
ize of 2576 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame s=
ize of 2568 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame s=
ize of 2544 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame s=
ize of 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame s=
ize of 3016 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame s=
ize of 3008 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame s=
ize of 3000 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame s=
ize of 5328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame s=
ize of 5320 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame s=
ize of 5312 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame s=
ize of 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame s=
ize of 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame s=
ize of 3328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/cxd2841er.c:3640:1: warning: the frame=
 size of 2816 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/cxd2841er.c:3124:1: warning: the frame=
 size of 2768 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/cxd2841er.c:3124:1: warning: the frame=
 size of 2736 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/cxd2841er.c:3124:1: warning: the frame=
 size of 2720 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/tiny/ili9225.c:281:1: warning: the frame size of 2=
768 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/panel/panel-sitronix-st7701.c:195:1: warning: the =
frame size of 2152 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/panel/panel-sitronix-st7701.c:195:1: warning: the =
frame size of 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/panel/panel-sitronix-st7701.c:195:1: warning: the =
frame size of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
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
    1    drivers/gpu/drm/bridge/tc358768.c:843:1: warning: the frame size o=
f 2064 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/bridge/tc358768.c:843:1: warning: the frame size o=
f 2056 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:979:6: warning: stack frame size of 1228 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:979:6: warning: stack frame size of 1180 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_=
calc_30.c:963:13: warning: stack frame size of 1068 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_=
calc_30.c:963:13: warning: stack frame size of 1036 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_rq_dlg_=
calc_21.c:811:13: warning: stack frame size of 1036 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1548 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1532 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1212 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1164 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1452 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1212 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1196 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1436 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1228 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1196 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13:=
 warning: stack frame size of 1580 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13:=
 warning: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
    1    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshif=
t-count-negative]  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw=
_factory.o
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    crypto/wp512.c:782:13: warning: stack frame size of 1272 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    crypto/wp512.c:782:13: warning: stack frame size of 1256 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    clang: warning: argument unused during compilation: '-no-pie' [-Wu=
nused-command-line-argument]
    1    cc1: some warnings being treated as errors
    1    arch/x86/xen/enlighten_hvm.o: warning: objtool: sysvec_xen_hvm_cal=
lback()+0x88: sibling call from callable instruction with modified stack fr=
ame
    1    arch/x86/kernel/cpu/mce/threshold.o: warning: objtool: sysvec_thre=
shold()+0x88: sibling call from callable instruction with modified stack fr=
ame
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    /tmp/test-arm-fad052.s:18792: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-fad052.s:18717: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-511d24.s:18794: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-511d24.s:18719: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/ccqyl6gB.s:18195: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccqyl6gB.s:18123: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1184:warning: override: UNWINDER_GUESS changes choice stat=
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
allmodconfig (i386, clang-10) =E2=80=94 FAIL, 4 errors, 101 warnings, 0 sec=
tion mismatches

Errors:
    drivers/cxl/mem.c:335:2: error: implicit declaration of function 'write=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:350:15: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:414:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:844:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]

Warnings:
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
756 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: variab=
le 'structure_size' is used uninitialized whenever switch default is taken =
[-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: initiali=
ze the variable 'structure_size' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variabl=
e 'stats' is uninitialized when used here [-Wuninitialized]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initializ=
e the variable 'stats' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: va=
riable 'mode' is used uninitialized whenever switch default is taken [-Wsom=
etimes-uninitialized]
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: init=
ialize the variable 'mode' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1580 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack =
frame size of 1068 bytes in function 'atomisp_set_fmt' [-Wframe-larger-than=
=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:979:6: warning: stack frame size of 1180 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1196 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1196 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_rq_dlg_calc_=
21.c:811:13: warning: stack frame size of 1036 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1164 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1548 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_=
30.c:963:13: warning: stack frame size of 1036 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    66 warnings and 4 errors generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:554:12: warning: stack =
frame size of 1148 bytes in function 'mlx5e_hairpin_rss_init' [-Wframe-larg=
er-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 4 errors, 124 warnings, 0 section=
 mismatches

Errors:
    drivers/cxl/mem.c:335:2: error: implicit declaration of function =E2=80=
=98writeq=E2=80=99; did you mean =E2=80=98writel=E2=80=99? [-Werror=3Dimpli=
cit-function-declaration]
    drivers/cxl/mem.c:350:15: error: implicit declaration of function =E2=
=80=98readq=E2=80=99; did you mean =E2=80=98readl=E2=80=99? [-Werror=3Dimpl=
icit-function-declaration]
    ././include/linux/compiler_types.h:320:38: error: call to =E2=80=98__co=
mpiletime_assert_266=E2=80=99 declared with attribute error: FIELD_GET: mas=
k is zero
    ././include/linux/compiler_types.h:320:38: error: call to =E2=80=98__co=
mpiletime_assert_298=E2=80=99 declared with attribute error: FIELD_GET: mas=
k is zero

Warnings:
    /tmp/ccqyl6gB.s:18123: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccqyl6gB.s:18195: Warning: using r15 results in unpredictable beha=
viour
    net/ipv4/tcp.c:3886:1: warning: the frame size of 2056 bytes is larger =
than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1970:1: warning: the frame size of 2248 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2788:1: warning: the frame size of 5248 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:7350:1: warning: the frame size of 2272 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5963:1: warning: the frame size of 2872 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    lib/test_kasan.c:892:1: warning: the frame size of 2160 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    lib/bitfield_kunit.c:93:1: warning: the frame size of 11296 bytes is la=
rger than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:1625:1: warning: the frame size of 2744 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:306:1: warning: the frame size of 2200 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/tiny/ili9225.c:281:1: warning: the frame size of 2768 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/panel/panel-sitronix-st7701.c:195:1: warning: the frame=
 size of 2152 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/bridge/tc358768.c:843:1: warning: the frame size of 205=
6 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 2816 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/i2c/tvp5150.c:273:1: warning: the frame size of 3992 byte=
s is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/bonding/bond_netlink.c:685:1: warning: the frame size of 21=
04 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:1694:1: warning: the frame size of 2480 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552:1: w=
arning: the frame size of 3256 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894:1: w=
arning: the frame size of 3184 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    net/caif/cfctrl.c:549:1: warning: the frame size of 2576 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:25992:1: w=
arning: the frame size of 2480 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    fs/ocfs2/super.c:1197:1: warning: the frame size of 2688 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2144 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/ieee802154/nl802154.c:541:1: warning: the frame size of 2216 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2192 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/ath/ath11k/qmi.c:1690:8: warning: format =E2=80=98=
%llx=E2=80=99 expects argument of type =E2=80=98long long unsigned int=E2=
=80=99, but argument 5 has type =E2=80=98dma_addr_t=E2=80=99 {aka =E2=80=98=
unsigned int=E2=80=99} [-Wformat=3D]
    drivers/net/wireguard/selftest/allowedips.c:675:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame size o=
f 3000 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame size o=
f 2136 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame size o=
f 2296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame size o=
f 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame size o=
f 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame size o=
f 5328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame size o=
f 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame size o=
f 4880 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame size o=
f 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame size o=
f 2544 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame size o=
f 5872 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame size o=
f 5248 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame size o=
f 3328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3640:1: warning: the frame size=
 of 2816 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3124:1: warning: the frame size=
 of 2768 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2120 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:386:1: warning=
: the frame size of 4240 bytes is larger than 2048 bytes [-Wframe-larger-th=
an=3D]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:50:16: warning: right shift count is negativ=
e [-Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:55:18: warning: left shift count is negative=
 [-Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:55:18: warning: left shift count is negative=
 [-Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:109:38: warning: right shift count is negati=
ve [-Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:50:16: warning: right shift count is negativ=
e [-Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:55:18: warning: left shift count is negative=
 [-Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:55:18: warning: left shift count is negative=
 [-Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bits.h:35:22: warning: left shift count >=3D width of t=
ype [-Wshift-count-overflow]
    ./include/linux/bits.h:36:11: warning: right shift count is negative [-=
Wshift-count-negative]
    ./include/linux/bitfield.h:109:38: warning: right shift count is negati=
ve [-Wshift-count-negative]
    cc1: some warnings being treated as errors
    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the fram=
e size of 2568 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the frame=
 size of 2688 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/macsec.c:3252:1: warning: the frame size of 4080 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the frame si=
ze of 2400 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 FAIL, 4 errors, 103 warnings, 0 sect=
ion mismatches

Errors:
    drivers/cxl/mem.c:335:2: error: implicit declaration of function 'write=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:350:15: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:414:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:844:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]

Warnings:
    /tmp/test-arm-511d24.s:18719: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-511d24.s:18794: Warning: using r15 results in unpredictab=
le behaviour
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1272 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
848 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: variab=
le 'structure_size' is used uninitialized whenever switch default is taken =
[-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: initiali=
ze the variable 'structure_size' to silence this warning
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3005:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5704 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variabl=
e 'stats' is uninitialized when used here [-Wuninitialized]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initializ=
e the variable 'stats' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: va=
riable 'mode' is used uninitialized whenever switch default is taken [-Wsom=
etimes-uninitialized]
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: init=
ialize the variable 'mode' to silence this warning
    1 warning generated.
    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame size of=
 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:554:12: warning: stack =
frame size of 1208 bytes in function 'mlx5e_hairpin_rss_init' [-Wframe-larg=
er-than=3D]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:137:6: warning: s=
tack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-larger=
-than=3D]
    1 warning generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    66 warnings and 4 errors generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-10) =E2=80=94 FAIL, 1 error, 28 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    arch/x86/hyperv/hv_init.o: warning: objtool: sysvec_hyperv_reenlightenm=
ent()+0x88: sibling call from callable instruction with modified stack fram=
e
    arch/x86/xen/enlighten_hvm.o: warning: objtool: sysvec_xen_hvm_callback=
()+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/mce/amd.o: warning: objtool: sysvec_deferred_error(=
)+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/mce/threshold.o: warning: objtool: sysvec_threshold=
()+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/mshyperv.o: warning: objtool: sysvec_hyperv_callbac=
k()+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/mshyperv.o: warning: objtool: sysvec_hyperv_stimer0=
()+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/acrn.o: warning: objtool: sysvec_acrn_hv_callback()=
+0x88: sibling call from callable instruction with modified stack frame
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: variab=
le 'structure_size' is used uninitialized whenever switch default is taken =
[-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: initiali=
ze the variable 'structure_size' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variabl=
e 'stats' is uninitialized when used here [-Wuninitialized]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initializ=
e the variable 'stats' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: va=
riable 'mode' is used uninitialized whenever switch default is taken [-Wsom=
etimes-uninitialized]
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: init=
ialize the variable 'mode' to silence this warning
    1 warning generated.
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:731:38: warning: va=
riable 'cgx_id' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:726:11: note: initi=
alize the variable 'cgx_id' to silence this warning
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:734:8: warning: var=
iable 'lmac_id' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:726:20: note: initi=
alize the variable 'lmac_id' to silence this warning
    2 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    arch/x86/hyperv/hv_init.o: warning: objtool: sysvec_hyperv_reenlightenm=
ent()+0x88: sibling call from callable instruction with modified stack fram=
e
    arch/x86/kernel/cpu/mce/amd.o: warning: objtool: sysvec_deferred_error(=
)+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/mshyperv.o: warning: objtool: sysvec_hyperv_callbac=
k()+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/mshyperv.o: warning: objtool: sysvec_hyperv_stimer0=
()+0x88: sibling call from callable instruction with modified stack frame
    arch/x86/kernel/cpu/acrn.o: warning: objtool: sysvec_acrn_hv_callback()=
+0x88: sibling call from callable instruction with modified stack frame

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-11) =E2=80=94 FAIL, 4 errors, 101 warnings, 0 sect=
ion mismatches

Errors:
    drivers/cxl/mem.c:335:2: error: implicit declaration of function 'write=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:350:15: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:414:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:844:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]

Warnings:
    /tmp/test-arm-fad052.s:18717: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-fad052.s:18792: Warning: using r15 results in unpredictab=
le behaviour
    crypto/wp512.c:782:13: warning: stack frame size of 1256 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
856 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variabl=
e 'stats' is uninitialized when used here [-Wuninitialized]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initializ=
e the variable 'stats' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: va=
riable 'mode' is used uninitialized whenever switch default is taken [-Wsom=
etimes-uninitialized]
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: init=
ialize the variable 'mode' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: variab=
le 'structure_size' is used uninitialized whenever switch default is taken =
[-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: initiali=
ze the variable 'structure_size' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3005:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5704 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:554:12: warning: stack =
frame size of 1208 bytes in function 'mlx5e_hairpin_rss_init' [-Wframe-larg=
er-than=3D]
    1 warning generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    66 warnings and 4 errors generated.
    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:137:6: warning: s=
tack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-larger=
-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 16 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: va=
riable 'mode' is used uninitialized whenever switch default is taken [-Wsom=
etimes-uninitialized]
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: init=
ialize the variable 'mode' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variabl=
e 'stats' is uninitialized when used here [-Wuninitialized]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initializ=
e the variable 'stats' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: variab=
le 'structure_size' is used uninitialized whenever switch default is taken =
[-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: initiali=
ze the variable 'structure_size' to silence this warning
    1 warning generated.
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:731:38: warning: va=
riable 'cgx_id' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:726:11: note: initi=
alize the variable 'cgx_id' to silence this warning
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:734:8: warning: var=
iable 'lmac_id' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/marvell/octeontx2/af/rvu_cgx.c:726:20: note: initi=
alize the variable 'lmac_id' to silence this warning
    2 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 62 warnings, 0 secti=
on mismatches

Warnings:
    arch/x86/kvm/x86.c:5044:1: warning: the frame size of 2352 bytes is lar=
ger than 2048 bytes [-Wframe-larger-than=3D]
    arch/x86/kernel/cpu/mshyperv.c:443:1: warning: the frame size of 3880 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    lib/crypto/curve25519-hacl64.c:601:1: warning: the frame size of 2384 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/tiny/ili9225.c:281:1: warning: the frame size of 2720 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/bridge/tc358768.c:843:1: warning: the frame size of 206=
4 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/panel/panel-sitronix-st7701.c:195:1: warning: the frame=
 size of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    lib/test_kasan.c:875:1: warning: the frame size of 2128 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    lib/test_kasan.c:892:1: warning: the frame size of 2384 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1970:1: warning: the frame size of 2216 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:7350:1: warning: the frame size of 2240 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2788:1: warning: the frame size of 5296 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5963:1: warning: the frame size of 2904 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    lib/bitfield_kunit.c:93:1: warning: the frame size of 11216 bytes is la=
rger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/aops.c:1884:1: warning: the frame size of 2112 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2072 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:1625:1: warning: the frame size of 2696 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:306:1: warning: the frame size of 2152 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:1694:1: warning: the frame size of 2616 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/bonding/bond_netlink.c:685:1: warning: the frame size of 20=
80 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireguard/selftest/allowedips.c:675:1: warning: the frame s=
ize of 2112 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/super.c:1197:1: warning: the frame size of 3176 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2336 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552:1: w=
arning: the frame size of 3152 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894:1: w=
arning: the frame size of 3128 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:25992:1: w=
arning: the frame size of 2448 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:386:1: warning=
: the frame size of 4216 bytes is larger than 2048 bytes [-Wframe-larger-th=
an=3D]
    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 2832 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the fram=
e size of 2472 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the frame=
 size of 2656 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/i2c/tvp5150.c:273:1: warning: the frame size of 3952 byte=
s is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/caif/cfctrl.c:549:1: warning: the frame size of 2592 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame size o=
f 2328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame size o=
f 3016 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the frame si=
ze of 2360 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame size o=
f 2104 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame size o=
f 3280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame size o=
f 5320 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame size o=
f 2568 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame size o=
f 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame size o=
f 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame size o=
f 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame size o=
f 2808 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame size o=
f 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame size o=
f 5888 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame size o=
f 5280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/ieee802154/nl802154.c:541:1: warning: the frame size of 2224 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame size o=
f 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3124:1: warning: the frame size=
 of 2720 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3640:1: warning: the frame size=
 of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2088 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/macsec.c:3252:1: warning: the frame size of 4040 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c:2756:1: warning: the fr=
ame size of 2504 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    arch/x86/kvm/x86.c:5044:1: warning: the frame size of 2352 bytes is lar=
ger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1970:1: warning: the frame size of 2216 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    arch/x86/kernel/cpu/mshyperv.c:443:1: warning: the frame size of 3880 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:7350:1: warning: the frame size of 2240 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2788:1: warning: the frame size of 5296 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5963:1: warning: the frame size of 2904 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/macsec.c:3252:1: warning: the frame size of 4040 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2088 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-11) =E2=80=94 FAIL, 4 errors, 99 warnings, 0 sect=
ion mismatches

Errors:
    drivers/cxl/mem.c:335:2: error: implicit declaration of function 'write=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:350:15: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:414:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]
    drivers/cxl/mem.c:844:14: error: implicit declaration of function 'read=
q' [-Werror,-Wimplicit-function-declaration]

Warnings:
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
752 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning: variab=
le 'structure_size' is used uninitialized whenever switch default is taken =
[-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note: initiali=
ze the variable 'structure_size' to silence this warning
    1 warning generated.
    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack =
frame size of 1048 bytes in function 'atomisp_set_fmt' [-Wframe-larger-than=
=3D]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: va=
riable 'mode' is used uninitialized whenever switch default is taken [-Wsom=
etimes-uninitialized]
    drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: init=
ialize the variable 'mode' to silence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variabl=
e 'stats' is uninitialized when used here [-Wuninitialized]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initializ=
e the variable 'stats' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_fact=
ory.o
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:329:25: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:352:13: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:352:13: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:361:22: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    drivers/cxl/mem.c:849:24: warning: shift count >=3D width of type [-Wsh=
ift-count-overflow]
    drivers/cxl/mem.c:849:24: warning: shift count is negative [-Wshift-cou=
nt-negative]
    66 warnings and 4 errors generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:979:6: warning: stack frame size of 1228 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1228 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1436 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1212 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1452 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_=
30.c:963:13: warning: stack frame size of 1068 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1212 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1532 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:554:12: warning: stack =
frame size of 1148 bytes in function 'mlx5e_hairpin_rss_init' [-Wframe-larg=
er-than=3D]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 56 warnings, 0 sectio=
n mismatches

Warnings:
    lib/crypto/curve25519-hacl64.c:601:1: warning: the frame size of 2112 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    lib/test_kasan.c:875:1: warning: the frame size of 2160 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    lib/test_kasan.c:892:1: warning: the frame size of 2432 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1970:1: warning: the frame size of 2208 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:7350:1: warning: the frame size of 2256 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2788:1: warning: the frame size of 5360 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/panel/panel-sitronix-st7701.c:195:1: warning: the frame=
 size of 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5963:1: warning: the frame size of 2912 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/tiny/ili9225.c:281:1: warning: the frame size of 2720 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    lib/bitfield_kunit.c:93:1: warning: the frame size of 11296 bytes is la=
rger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 2832 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/i2c/tvp5150.c:273:1: warning: the frame size of 3968 byte=
s is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/bonding/bond_netlink.c:685:1: warning: the frame size of 21=
12 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:1625:1: warning: the frame size of 2672 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:306:1: warning: the frame size of 2144 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2112 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/aops.c:1884:1: warning: the frame size of 2128 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:2072:1: warning: the frame size of 2064 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:1694:1: warning: the frame size of 2592 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552:1: w=
arning: the frame size of 3168 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894:1: w=
arning: the frame size of 3136 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:25992:1: w=
arning: the frame size of 2544 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    fs/ocfs2/super.c:1197:1: warning: the frame size of 3184 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2368 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2080 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:386:1: warning=
: the frame size of 4224 bytes is larger than 2048 bytes [-Wframe-larger-th=
an=3D]
    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the fram=
e size of 2464 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the frame=
 size of 2656 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame size o=
f 2336 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame size o=
f 3008 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame size o=
f 3280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame size o=
f 5312 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame size o=
f 2576 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame size o=
f 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame size o=
f 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame size o=
f 5888 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame size o=
f 5280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame size o=
f 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3124:1: warning: the frame size=
 of 2736 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3640:1: warning: the frame size=
 of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/macsec.c:3252:1: warning: the frame size of 4176 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the frame si=
ze of 2368 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/caif/cfctrl.c:549:1: warning: the frame size of 2624 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    net/ieee802154/nl802154.c:541:1: warning: the frame size of 2256 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1970:1: warning: the frame size of 2208 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:7350:1: warning: the frame size of 2256 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2788:1: warning: the frame size of 5360 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5963:1: warning: the frame size of 2912 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/macsec.c:3252:1: warning: the frame size of 4176 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/usb/r8152.c:5524:1: warning: the frame size of 2080 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 11 errors, 0 warnings, =
0 section mismatches

Errors:
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34DD8): relocation =
R_ARM_PREL31 out of range: 2135538528 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x373DC): relocation =
R_ARM_PREL31 out of range: 2135594332 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37424): relocation =
R_ARM_PREL31 out of range: 2135594260 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37454): relocation =
R_ARM_PREL31 out of range: 2135594212 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37484): relocation =
R_ARM_PREL31 out of range: 2135594164 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3749C): relocation =
R_ARM_PREL31 out of range: 2135594140 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x374B4): relocation =
R_ARM_PREL31 out of range: 2135594116 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x374C4): relocation =
R_ARM_PREL31 out of range: 2135594100 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37514): relocation =
R_ARM_PREL31 out of range: 2135594020 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37524): relocation =
R_ARM_PREL31 out of range: 2135594004 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x375C4): relocation =
R_ARM_PREL31 out of range: 2135593844 is not in [-1073741824, 1073741823]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
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
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc7-next-20210215/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc7-next-20210215/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc7-next-20210215/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc7-next-20210215/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-11) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    clang: warning: argument unused during compilation: '-no-pie' [-Wunused=
-command-line-argument]

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
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
i386_defconfig (i386, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
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
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section=
 mismatches

Errors:
    ERROR: modpost: "iwl_so_trans_cfg" [drivers/net/wireless/intel/iwlwifi/=
iwlwifi.ko] undefined!

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches

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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpiod_=
table=E2=80=99 defined but not used [-Wunused-variable]
    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_del=
ta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    drivers/net/phy/phy_device.c:293:12: warning: =E2=80=98mdio_bus_phy_res=
ume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/phy/phy_device.c:273:12: warning: =E2=80=98mdio_bus_phy_sus=
pend=E2=80=99 defined but not used [-Wunused-function]

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
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1184:warning: override: UNWINDER_GUESS changes choice state

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
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0

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
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches

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

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/602aabdb.1c69fb81.ac4be.68fe%40mx.google.com.
