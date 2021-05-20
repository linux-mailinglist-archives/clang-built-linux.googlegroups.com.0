Return-Path: <clang-built-linux+bncBDT6TV45WMPRBQ4YTCCQMGQEUUFW4WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id F3975389EB9
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 09:14:12 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id w15-20020ac857cf0000b02901e11cd2e82fsf11654717qta.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 00:14:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621494851; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mmjvlm+LgqGgJZM8EraBNqZq3ZO5ob2K7gv+7kwpXyIxsTptOc2Xh4smjewwKqskYV
         e5LFwZB8dBCzsci65MSX7Q97aeULeLENrhhDkFX7f4SAWeF/Fqf1aTWUbb9x/pAqSjCi
         othSZWRMD+wkOAVONZSGz7QKhZyjLe7FkCKrqbbCUxJn/7+Ewr7nSzloL0jKIQ8xa+uf
         A/sLameo8diLWen8WVHW0iXCFmR5zWTD4Gk36tGo3QCl5nKBRihjeN5tv2yf6IG9BE3h
         YvJmkdb6yCT1RMbUIejV8yNDuvEtoD2a6xqoaSiUnFKoRAMQfBkTNSK5dHE9GZHLsqw8
         wtFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=RV98XBsFB2W6PnmuxJRsKy4K1kDXbk8xGoGGB0mf4Fc=;
        b=0L8iaJjw7PCdKNfWH7EMlOG8XTvuB78zrdGAZbvODqcwy/eyx4+2NrWPpwDvchCyWB
         +V2/Q/uvmeIIUVBg1m+ey7hjSrcMI6ayUqOZr2RalPFU6xg4Fs+bCFv2jZKf4aD435JU
         r+ohd39tRvJovXDTzQjh7IrqAvSFIsDxbUqu5hKev2kEHd0DnfY2b08kxbc1C8GGTMFR
         OgBqlCXH6dRKUSGM7bpxNQyqCRj1vWEO3NiXJlJPHt6WZ6qjV/Ge9FoJs5druiclNOa5
         dCuUJKioRWwL9U+ZkAR+d+K9YbzwrfAxm7TL8BTzTgwPv1R/IVOjsOPHz134e/90dXu0
         eRHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=YGKwuxu+;
       spf=neutral (google.com: 2607:f8b0:4864:20::431 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RV98XBsFB2W6PnmuxJRsKy4K1kDXbk8xGoGGB0mf4Fc=;
        b=CfWBlcPZ6j9YxXrUeI9p1yD/TyL9yOqrJDsobxwQ4ffxzhniOpC5AAWiYxUA+ycpt/
         ZvFhOCkh2/Rgjlzj1k/sLJte1UMN7lHJbM0vCBs9KVxyGE6EHOLxOE76oMHAynC6zzKI
         nSSduI2JHOwdoE3K7xExuMj9Ws3SQ2udP6AYOxoFqF6rLZMjrhxNFIJpIWLdaxrayGvN
         VoZVDKaxZXQxDFdHWUtCKIk0BV1a/DpMhgBoEVtefqEjC1mbzXZTag2AO7V4Ce1FmJK6
         0KkfpLkSFuxxJHvCQP2j6HVmgXzBv36OuWs8nxtXS5yNgedfCJUMM+C4QQ8jvbDZ0aax
         0UHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RV98XBsFB2W6PnmuxJRsKy4K1kDXbk8xGoGGB0mf4Fc=;
        b=iycqSTzqaJscM7vLLmRLfhwG3KRvxDWxSdRSqo5LKE5P5I0vSzZNGvg4OHq5YHO52k
         tXObGB78aH4BVSi9dWlnalxI+mzl4zU2ya0lHptA7Kc5sVNNENskwrZWp12aaJEafheI
         ENBGt7ZfrN5+JJJE5e2IexrknYVUAAlIF3eUaS5qGnRD5iUtyBfZGimTtwhay6CW9ZZd
         t7oHTv3N4I3jdJa2GHBHOURf+rjFjHk0RibOtWCxu3ssAndxlvgP8LiTWQGA4rte6Jii
         T6fem2y3qWYYtjOxnzGsmraYw7xLZEQr0CNf/t4cBWAGu29a2hlzg+Rv63GsPSLJUPTi
         uVYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TMp+1KY9UkuNnh7vk/cfeCQNKHwUnzb8zSYwtg/Se3C4OuPnX
	dPmpdbIlJXD/8sdzEScWLhk=
X-Google-Smtp-Source: ABdhPJzQApW0rR2dHic8cWebk+SlcAiz8fKdSRxPIQfHUQdgenXKaC/3JyjZZtCPJXjKH3lyb3pt3Q==
X-Received: by 2002:ad4:57c4:: with SMTP id y4mr3858220qvx.33.1621494851681;
        Thu, 20 May 2021 00:14:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7e87:: with SMTP id z129ls1171585qkc.4.gmail; Thu, 20
 May 2021 00:14:11 -0700 (PDT)
X-Received: by 2002:a37:ae04:: with SMTP id x4mr3298096qke.315.1621494850846;
        Thu, 20 May 2021 00:14:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621494850; cv=none;
        d=google.com; s=arc-20160816;
        b=e4pXflwZO0NjOvIP3qm+qYOjP/WLLv67lT+WvhXVqSoQGPIZTxUeeMzJ0IYHLTjF6/
         GqyRtxDjMK/jQq7ZgVj1XF2b0PV6dg92Ewk7qMl69JVryiYVWSXLWQaKtV3Ck1pkpcQo
         Q5SrntOfSbYZAw+4DYPUBQLY0tSMfuHKw3Gk2BCTj8TgLStFYU/wJc3at34ZvbjKtBCD
         r136GkPvsViObh2yTbH0pqkNcWzN5ojaCBKFV9xYc9fLBm7ZaeHhfHONu/1oMoXYyuJG
         X2+gmmCpFBOA9vGKTJ5DiNI1dukx+QHHZYwodX/uBgcKm3zrSY63wzh6lxJVGjVCqEt1
         GC+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=WIGI7d9aBGBq/HeO03DG1xNYQZrVr0ZFTpDz0/msVkM=;
        b=QcyE7qHVXz6/W3yCBxtfzTpxINCXvd3+9o3zft5d5atQCn3DKXRP7xpRYLZLKiyf7d
         OA7q/3zAMmB1KmxxzB3AbziFVRDWDhmDOoW815dsGF1SBo5GDGxak//YoOOlaGWJ4/Tt
         RU9ObooGJabF5MMnUYUZ6IyB1lZDjLeceST2DWREnYfRD8mBcj7K3oFQoBHFWfNAM5Yq
         flPLsoTVRsbyEWwMSmsp8pECLpKu5l7cvhezbsN/4QoIpjuK+9QYxOSlrLIfwL5P1cAU
         7QcVmMH67ReeSAiTYTUtf5K9c+PBkr+ixTUMKeXSRBfL90RO/mmtywWI1yJCA2GBOLzY
         BSaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=YGKwuxu+;
       spf=neutral (google.com: 2607:f8b0:4864:20::431 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id v64si161657qkc.1.2021.05.20.00.14.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 00:14:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::431 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id g18so10026477pfr.2
        for <clang-built-linux@googlegroups.com>; Thu, 20 May 2021 00:14:10 -0700 (PDT)
X-Received: by 2002:a63:770b:: with SMTP id s11mr3234825pgc.5.1621494847190;
        Thu, 20 May 2021 00:14:07 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id w11sm1198138pfc.79.2021.05.20.00.14.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 00:14:06 -0700 (PDT)
Message-ID: <60a60c3e.1c69fb81.95778.4f8b@mx.google.com>
Date: Thu, 20 May 2021 00:14:06 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20210520
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
Subject: next/master build: 208 builds: 13 failed, 195 passed, 33 errors,
 1492 warnings (next-20210520)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=YGKwuxu+;       spf=neutral (google.com: 2607:f8b0:4864:20::431 is
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

next/master build: 208 builds: 13 failed, 195 passed, 33 errors, 1492 warni=
ngs (next-20210520)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210520/

Tree: next
Branch: master
Git Describe: next-20210520
Git Commit: 7a42b92b6d30c3f09629c7d5ada9e3de2aba01af
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arc:
    allnoconfig: (gcc-8) FAIL
    haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL
    nsimosci_hs_smp_defconfig: (gcc-8) FAIL

arm:
    allmodconfig: (clang-10) FAIL
    allmodconfig: (clang-12) FAIL
    allmodconfig: (gcc-8) FAIL
    multi_v7_defconfig+kselftest: (gcc-8) FAIL

i386:
    allmodconfig: (clang-12) FAIL
    i386_defconfig+kselftest: (gcc-8) FAIL

mips:
    32r2el_defconfig+kselftest: (gcc-8) FAIL
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL
    nlm_xlr_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 8 errors
    haps_hs_smp_defconfig+kselftest (gcc-8): 1 error, 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 8 errors

arm64:
    defconfig (clang-10): 1 warning

arm:
    allmodconfig (gcc-8): 2 errors
    allmodconfig (clang-10): 2 errors, 34 warnings
    allmodconfig (clang-12): 2 errors, 34 warnings
    multi_v7_defconfig (clang-12): 2 warnings
    multi_v7_defconfig (clang-10): 2 warnings
    multi_v7_defconfig+kselftest (gcc-8): 2 errors
    omap1_defconfig (gcc-8): 2 warnings

i386:
    allmodconfig (clang-12): 2 errors, 27 warnings
    i386_defconfig+kselftest (gcc-8): 2 errors

mips:
    32r2el_defconfig+kselftest (gcc-8): 2 errors
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 2 errors
    rm200_defconfig (gcc-8): 1 warning

riscv:
    nommu_k210_defconfig (gcc-8): 630 warnings
    nommu_k210_sdcard_defconfig (gcc-8): 750 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:

Errors summary:

    5    ERROR: modpost: "__divdi3" [fs/btrfs/btrfs.ko] undefined!
    4    ERROR: modpost: "__udivdi3" [fs/btrfs/btrfs.ko] undefined!
    4    ERROR: modpost: "__aeabi_uldivmod" [fs/btrfs/btrfs.ko] undefined!
    4    ERROR: modpost: "__aeabi_ldivmod" [fs/btrfs/btrfs.ko] undefined!
    2    arc-elf32-ld: stackdepot.c:(.text+0x4e0): undefined reference to `=
__softirqentry_text_end'
    2    arc-elf32-ld: stackdepot.c:(.text+0x4d8): undefined reference to `=
__softirqentry_text_start'
    2    arc-elf32-ld: stackdepot.c:(.text+0x4cc): undefined reference to `=
__irqentry_text_end'
    2    arc-elf32-ld: stackdepot.c:(.text+0x38): undefined reference to `_=
_softirqentry_text_end'
    2    arc-elf32-ld: stackdepot.c:(.text+0x30): undefined reference to `_=
_softirqentry_text_start'
    2    arc-elf32-ld: stackdepot.c:(.text+0x24): undefined reference to `_=
_irqentry_text_end'
    1    stackdepot.c:(.text+0x4ac): undefined reference to `__irqentry_tex=
t_start'
    1    stackdepot.c:(.text+0x4): undefined reference to `__irqentry_text_=
start'
    1    arc-elf32-ld: stackdepot.c:(.text+0x4ac): undefined reference to `=
__irqentry_text_start'
    1    arc-elf32-ld: stackdepot.c:(.text+0x4): undefined reference to `__=
irqentry_text_start'

Warnings summary:

    690  include/asm-generic/uaccess.h:48:3: warning: statement with no eff=
ect [-Wunused-value]
    690  include/asm-generic/uaccess.h:48:16: warning: left-hand operand of=
 comma expression has no effect [-Wunused-value]
    28   1 warning generated.
    7    2 warnings generated.
    4    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implici=
t conversion from 'unsigned long long' to 'unsigned long' changes value fro=
m 5000000000 to 705032704 [-Wconstant-conversion]
    4    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    4    #warning This code requires at least version 4.6 of GCC
    3    sound/firewire/amdtp-stream.c:657:7: warning: variable 'err' is us=
ed uninitialized whenever 'if' condition is false [-Wsometimes-uninitialize=
d]
    3    sound/firewire/amdtp-stream.c:640:9: note: initialize the variable=
 'err' to silence this warning
    3    4 warnings generated.
    2    drivers/staging/rtl8723bs/core/rtw_security.c:93:6: warning: stack=
 frame size of 1096 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-tha=
n=3D]
    2    drivers/staging/rtl8723bs/core/rtw_security.c:535:5: warning: stac=
k frame size of 1144 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-t=
han=3D]
    2    drivers/staging/rtl8723bs/core/rtw_security.c:37:6: warning: stack=
 frame size of 1144 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-tha=
n=3D]
    2    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame si=
ze of 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    2    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    2    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1392 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1384 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1332 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:93:6: warning: stack=
 frame size of 1080 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-tha=
n=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:535:5: warning: stac=
k frame size of 1100 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-t=
han=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:462:5: warning: stac=
k frame size of 1168 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-t=
han=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:462:5: warning: stac=
k frame size of 1160 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-t=
han=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:462:5: warning: stac=
k frame size of 1112 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-t=
han=3D]
    1    drivers/staging/rtl8723bs/core/rtw_security.c:37:6: warning: stack=
 frame size of 1092 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-tha=
n=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 1804 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
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
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:997:6: warning: stack frame size of 1196 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_=
calc_30.c:981:13: warning: stack frame size of 1036 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1468 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1132 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1420 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1164 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1180 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13:=
 warning: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
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
ib/modules/5.13.0-rc2-next-20210520/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnin=
gs, 0 section mismatches

Errors:
    ERROR: modpost: "__udivdi3" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__divdi3" [fs/btrfs/btrfs.ko] undefined!

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 section m=
ismatches

Errors:
    ERROR: modpost: "__aeabi_ldivmod" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__aeabi_uldivmod" [fs/btrfs/btrfs.ko] undefined!

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 FAIL, 2 errors, 34 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "__aeabi_ldivmod" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__aeabi_uldivmod" [fs/btrfs/btrfs.ko] undefined!

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
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    sound/firewire/amdtp-stream.c:657:7: warning: variable 'err' is used un=
initialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    sound/firewire/amdtp-stream.c:640:9: note: initialize the variable 'err=
' to silence this warning
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/rtl8723bs/core/rtw_security.c:37:6: warning: stack fram=
e size of 1144 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:93:6: warning: stack fram=
e size of 1096 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:462:5: warning: stack fra=
me size of 1160 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-than=
=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:535:5: warning: stack fra=
me size of 1144 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-than=
=3D]
    4 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame size =
of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3041:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5536 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame size of =
1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame size of=
 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-12) =E2=80=94 FAIL, 2 errors, 27 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "__divdi3" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__udivdi3" [fs/btrfs/btrfs.ko] undefined!

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1332 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    sound/firewire/amdtp-stream.c:657:7: warning: variable 'err' is used un=
initialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    sound/firewire/amdtp-stream.c:640:9: note: initialize the variable 'err=
' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/rtl8723bs/core/rtw_security.c:37:6: warning: stack fram=
e size of 1092 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:93:6: warning: stack fram=
e size of 1080 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:462:5: warning: stack fra=
me size of 1112 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-than=
=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:535:5: warning: stack fra=
me size of 1100 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-than=
=3D]
    4 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1804 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:997:6: warning: stack frame size of 1196 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_=
30.c:981:13: warning: stack frame size of 1036 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1180 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1132 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1164 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1468 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1420 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-12) =E2=80=94 FAIL, 2 errors, 34 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "__aeabi_ldivmod" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__aeabi_uldivmod" [fs/btrfs/btrfs.ko] undefined!

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
    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    sound/firewire/amdtp-stream.c:657:7: warning: variable 'err' is used un=
initialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    sound/firewire/amdtp-stream.c:640:9: note: initialize the variable 'err=
' to silence this warning
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
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
    drivers/staging/rtl8723bs/core/rtw_security.c:37:6: warning: stack fram=
e size of 1144 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:93:6: warning: stack fram=
e size of 1096 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:462:5: warning: stack fra=
me size of 1168 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-than=
=3D]
    drivers/staging/rtl8723bs/core/rtw_security.c:535:5: warning: stack fra=
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

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 8 errors, 0 warnings, 0 section mi=
smatches

Errors:
    stackdepot.c:(.text+0x4ac): undefined reference to `__irqentry_text_sta=
rt'
    arc-elf32-ld: stackdepot.c:(.text+0x4ac): undefined reference to `__irq=
entry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x4cc): undefined reference to `__irq=
entry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x4cc): undefined reference to `__irq=
entry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x4d8): undefined reference to `__sof=
tirqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x4d8): undefined reference to `__sof=
tirqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x4e0): undefined reference to `__sof=
tirqentry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x4e0): undefined reference to `__sof=
tirqentry_text_end'

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc2-next-20210520/kernel/drivers/media/tuners/tuner-types.ko: =
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
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 1 error, 2 war=
nings, 0 section mismatches

Errors:
    ERROR: modpost: "__divdi3" [fs/btrfs/btrfs.ko] undefined!

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
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings=
, 0 section mismatches

Errors:
    ERROR: modpost: "__udivdi3" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__divdi3" [fs/btrfs/btrfs.ko] undefined!

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
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warni=
ngs, 0 section mismatches

Errors:
    ERROR: modpost: "__aeabi_ldivmod" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__aeabi_uldivmod" [fs/btrfs/btrfs.ko] undefined!

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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "__udivdi3" [fs/btrfs/btrfs.ko] undefined!
    ERROR: modpost: "__divdi3" [fs/btrfs/btrfs.ko] undefined!

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 630 warnings,=
 0 section mismatches

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
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
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
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 750 wa=
rnings, 0 section mismatches

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
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
-Wunused-value]
    include/asm-generic/uaccess.h:48:16: warning: left-hand operand of comm=
a expression has no effect [-Wunused-value]
    include/asm-generic/uaccess.h:48:3: warning: statement with no effect [=
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
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 8 errors, 0 warnings=
, 0 section mismatches

Errors:
    stackdepot.c:(.text+0x4): undefined reference to `__irqentry_text_start=
'
    arc-elf32-ld: stackdepot.c:(.text+0x4): undefined reference to `__irqen=
try_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x24): undefined reference to `__irqe=
ntry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x24): undefined reference to `__irqe=
ntry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x30): undefined reference to `__soft=
irqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x30): undefined reference to `__soft=
irqentry_text_start'
    arc-elf32-ld: stackdepot.c:(.text+0x38): undefined reference to `__soft=
irqentry_text_end'
    arc-elf32-ld: stackdepot.c:(.text+0x38): undefined reference to `__soft=
irqentry_text_end'

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
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
clang-built-linux/60a60c3e.1c69fb81.95778.4f8b%40mx.google.com.
