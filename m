Return-Path: <clang-built-linux+bncBDT6TV45WMPRBJ56QGEAMGQEWIOM4BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B85AA3D7E82
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:31:52 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id p71-20020a25424a0000b029056092741626sf19717776yba.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:31:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627414311; cv=pass;
        d=google.com; s=arc-20160816;
        b=YfqzcOOYyudUEHqgt3cZvWUtZ+E3A37JKcs5vWbkMgqtZj3CfG7fPFldpPVztNhZH5
         lO2UauZ4QcmHyWLru+72XQWoqkGTlnsm4BKYTUyeYLPpfciBLTgNZWZBFHsha/0pkmhk
         4ntMtbKHIGQGlYQrQIoGI3CP4sRRFTZXjB8TmseiRYTFuPVX9yTsl0ZUt1Dn4J1MCJxK
         ogHLu2bXfAAe6K+o8uIPjBS3dzRFkQAXwsLKPPTFgbrY7Cvd7d/PMr5QJBql1ut9Y7dy
         qbSzhnKktwJMF31r/kHeTWCgbuGNUZI6DU7oF8/kNnQKV6yG0lMGLjAt+3ft/LMyBRh7
         svcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=XTpsDLBRikbQQu6rUjvtgHaYNbwfTooLKVBw0YoxxvE=;
        b=A+AI5eTiZ1SqZebTp41ni3PhpZ1Tn4X9YHuShcBb2hxoGp8fowZ5dPrB6WlnNZhZl5
         dVxLcE1uQRb7aX7aRmZtTNZRoc2Cj9rBe3pZ9AT7/k+Nff3yIE1hrJIrmsIaJnYGxbRj
         zWBKNtnoFI+vxFTTClZP22VbFZv+ZGee1fTy/sH/5V7y1pryAnkbva8f8aBSAWkiZO41
         u/XLKErtMrlz/vRqnvsPw/kxvIJAmHsiRuvEhXkSQpo3Y6RqOuf7Usg8tvSD4SVwZe7Z
         dFyPythlKZ1TA5BDHhvACZcZZIN+XDmi3GR6O6IzUqSrN0NZl9uuGczYQXMTL4ZE0p2p
         vx2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="NXA/Nw7o";
       spf=neutral (google.com: 2607:f8b0:4864:20::102a is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTpsDLBRikbQQu6rUjvtgHaYNbwfTooLKVBw0YoxxvE=;
        b=q/WBvLvufmPw8pgTx9/3KAOIsIN86rprpv+ZN47mYto44LFgU+X41ssrtRlgb12nwL
         Dzim7up5kgDVduNSjERDVgQy3zPftuZaNMXzZU0EqhieednHIssyF0nn/El2efE9MNM2
         OBVeDiH+v2mrCi36zGQvDtktgmA8Mg64yk4YO91aK5MNCEc6AafVLZOvs+xCbtSzhtsf
         8cbQpsK3j7vX5ZH+6U8DgRMRDxzzeBrQK+r7oToVwRQtMsMqzGJdEfGPMXbYxH9homiZ
         wkFwD7BYlcbaD/n+yQvtdUAVTpBOLJA0nfsiykHI04B7T3oxTqH9m7IBGceec846LiHx
         kj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTpsDLBRikbQQu6rUjvtgHaYNbwfTooLKVBw0YoxxvE=;
        b=WiyRUWUE58jVuJuw0Neg3mJ7BkT+2/vqMlD6pOB/WK/Yrz7RoIjid1wwv5zkCca2+H
         /ZgCNOQjkjs1j03F774f1KYh/4szp29avslqo+c0Kh/D9ysgm5/Wqy6uHnP9YG57WECd
         mSH2Cs+Xyg+3n4+7MwE3nazaoGTIAVQba1yuYnG3nmk1UeE+RhNZTCGdGv8BNpR5BSxu
         HegfINrHkZBZxve5wWjlPFw+SNiXgZRmfnAdRWwtR/AG7eFzWZCyeJGIg2Xqn/ATeI/6
         eryd/jfewip62gE4Ci3A/WFuMg9Hyv+jPMFHEGxEOoZMryuPH5iFN7shGkhlLXgPLSIy
         6EVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Uo9jq1Im0Cdy680Ubb3tCbpnsBICsGKoVb5hi/Soblt6LWNPL
	vIbWrYEoN6zKdVH03Q2+xsE=
X-Google-Smtp-Source: ABdhPJxbl8mPVQlqyesID+lC08L5AVIlYkK5qShmOWuB0ohhzO8zAPhWMsgnVHonYNkvUUHP9xYpBQ==
X-Received: by 2002:a25:3046:: with SMTP id w67mr5965045ybw.134.1627414311778;
        Tue, 27 Jul 2021 12:31:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8748:: with SMTP id e8ls3647213ybn.3.gmail; Tue, 27 Jul
 2021 12:31:51 -0700 (PDT)
X-Received: by 2002:a25:30c2:: with SMTP id w185mr33201826ybw.321.1627414311275;
        Tue, 27 Jul 2021 12:31:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627414311; cv=none;
        d=google.com; s=arc-20160816;
        b=V0+8T3x2RMuEVa/qQQdWAF6wjl2qOYEJlx2Ng7gvVpEKCaHTw5a/wSdz86oNYmqH7Y
         Ar/F/Ltl54infBOoj8QVpKAFEvjsipa7LjSQKA3MkUiSEPB/uDTOVlBo7AM9tkwGWonL
         A1GcYf661cBKrP9EOBS46/1+m97repC6R2ygUSFhDnC7uBEAhkRX0E+GlMKYDEK7O3r/
         yBxBHdpNA2gFLD4bzcYICOw5eWiaSxgQ8i98rI7oPMrWn6bT6RI+VVioFga9CCMLTo1O
         MTOUGiJtzi4FDWDK3uujGNE2vhn/Sv9eYc49wv4qYXqkCLw78H3T+pS6M2nMQz/oZtAY
         /7dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=T8jNd0bVzCxI49W8TQc0pgIUWX95rl1s8N0yNFspk3M=;
        b=Y1ECsDR2IVjaUtFrHOex9z+CJd2VDZTXQ3ZyJcjPSZO0aWp4qbfN6h53VIU064667O
         NKmf2eHcgpQ0jjU6oa1DV7VKELWNUqmu3YIfT6RHH1riaR+hFM+T+msIEnveVDCHVHtB
         0GqAB/dNNcD56B/Qme07wNg/jDFSkE2y7qve1Xu3fgi3xaR6SVU/uGSL0tOHVLSyvHIU
         OqqX/1dY6YXb9gT/QYImAIoOPJ9pF/Q9o5lUwhEdjzU/IXF4n0BR1XwtIXdP514yr8WB
         BsLRNjiV/6Cu6l12is973Va5kct3XJg37aGX+xFKnujiSIgxYCLM8raNY+9nFNWgv1Nj
         ttvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="NXA/Nw7o";
       spf=neutral (google.com: 2607:f8b0:4864:20::102a is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id r3si495726ybc.1.2021.07.27.12.31.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 12:31:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::102a is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id o44-20020a17090a0a2fb0290176ca3e5a2fso615623pjo.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 12:31:51 -0700 (PDT)
X-Received: by 2002:a17:90a:28a6:: with SMTP id f35mr5676377pjd.223.1627414310168;
        Tue, 27 Jul 2021 12:31:50 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id g19sm3420808pji.42.2021.07.27.12.31.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 12:31:49 -0700 (PDT)
Message-ID: <61005f25.1c69fb81.5a812.acd3@mx.google.com>
Date: Tue, 27 Jul 2021 12:31:49 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20210727
Subject: next/master build: 175 builds: 12 failed, 163 passed, 17 errors,
 49 warnings (next-20210727)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b="NXA/Nw7o";       spf=neutral (google.com: 2607:f8b0:4864:20::102a
 is neither permitted nor denied by best guess record for domain of
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

next/master build: 175 builds: 12 failed, 163 passed, 17 errors, 49 warning=
s (next-20210727)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210727/

Tree: next
Branch: master
Git Describe: next-20210727
Git Commit: 42d0b5f52c9b633a10626da27786049c76d4ea75
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arc:
    haps_hs_defconfig: (gcc-8) FAIL
    haps_hs_smp_defconfig: (gcc-8) FAIL
    nsimosci_hs_defconfig: (gcc-8) FAIL
    nsimosci_hs_smp_defconfig: (gcc-8) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL
    mpc30x_defconfig: (gcc-8) FAIL
    rb532_defconfig: (gcc-8) FAIL
    sb1250_swarm_defconfig: (gcc-8) FAIL
    tb0226_defconfig: (gcc-8) FAIL

riscv:
    nommu_k210_defconfig: (gcc-8) FAIL
    nommu_k210_sdcard_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    haps_hs_defconfig (gcc-8): 2 errors
    haps_hs_smp_defconfig (gcc-8): 2 errors
    haps_hs_smp_defconfig+kselftest (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 errors
    nsimosci_hs_smp_defconfig (gcc-8): 2 errors

arm64:
    allmodconfig (clang-12): 11 warnings
    allmodconfig (gcc-8): 1 warning
    defconfig (clang-12): 5 warnings
    defconfig (gcc-8): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 6 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 5 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
    defconfig+ima (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 warning
    multi_v7_defconfig (clang-12): 3 warnings
    multi_v7_defconfig (clang-10): 3 warnings

i386:

mips:
    mpc30x_defconfig (gcc-8): 1 error
    rb532_defconfig (gcc-8): 1 error
    rm200_defconfig (gcc-8): 1 warning
    sb1250_swarm_defconfig (gcc-8): 1 error
    tb0226_defconfig (gcc-8): 1 error

riscv:
    nommu_k210_defconfig (gcc-8): 2 errors
    nommu_k210_sdcard_defconfig (gcc-8): 3 errors
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    2    sysfb.c:(.init.text+0x8): undefined reference to `screen_info'
    2    sysfb.c:(.init.text+0x48): undefined reference to `screen_info'
    2    inode.c:(.text+0x2688): undefined reference to `iomap_fiemap'
    2    inode.c:(.text+0x1b3a): undefined reference to `iomap_fiemap'
    2    arc-elf32-ld: inode.c:(.text+0x1b3a): undefined reference to `ioma=
p_fiemap'
    1    inode.c:(.text+0x26f0): undefined reference to `iomap_fiemap'
    1    inode.c:(.text+0x2510): undefined reference to `iomap_fiemap'
    1    inode.c:(.text+0x1bb2): undefined reference to `iomap_fiemap'
    1    inode.c:(.text+0x1aa6): undefined reference to `iomap_fiemap'
    1    inode.c:(.text+0x125e): undefined reference to `iomap_fiemap'
    1    arc-elf32-ld: inode.c:(.text+0x1bb2): undefined reference to `ioma=
p_fiemap'
    1    arc-elf32-ld: inode.c:(.text+0x1aa6): undefined reference to `ioma=
p_fiemap'

Warnings summary:

    13   1 warning generated.
    6    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is =
uninitialized when used here [-Wuninitialized]
    6    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variabl=
e 'ret' to silence this warning
    4    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: u=
nused variable 'priv' [-Wunused-variable]
    3    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: u=
nused variable =E2=80=98priv=E2=80=99 [-Wunused-variable]
    2    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=
=99 is usually a function [-Wmain]
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: i=
mplicit conversion from enumeration type 'enum mt76_cipher_type' to differe=
nt enumeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: i=
mplicit conversion from enumeration type 'enum mt76_cipher_type' to differe=
nt enumeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-=
1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu=
_ev_hw_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    arch/arc/include/asm/perf_event.h:126:27: warning: =E2=80=98arc_pm=
u_cache_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc3-next-20210727/kernel/drivers/media/tuners/tuner-types=
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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 11 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is unini=
tialized when used here [-Wuninitialized]
    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variable 're=
t' to silence this warning
    1 warning generated.
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable 'priv' [-Wunused-variable]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section=
 mismatches

Warnings:
    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is unini=
tialized when used here [-Wuninitialized]
    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variable 're=
t' to silence this warning
    1 warning generated.
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable 'priv' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable =E2=80=98priv=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 6 warnings, 0 section mismatches

Warnings:
    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is unini=
tialized when used here [-Wuninitialized]
    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variable 're=
t' to silence this warning
    1 warning generated.
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable 'priv' [-Wunused-variable]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc3-next-20210727/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 5 warnings, 0 section mismatches

Warnings:
    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is unini=
tialized when used here [-Wuninitialized]
    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variable 're=
t' to silence this warning
    1 warning generated.
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable 'priv' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 1 warning, 0 section mismatches

Warnings:
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable =E2=80=98priv=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+ima (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c:252:28: warning: unused=
 variable =E2=80=98priv=E2=80=99 [-Wunused-variable]

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
haps_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    inode.c:(.text+0x1bb2): undefined reference to `iomap_fiemap'
    arc-elf32-ld: inode.c:(.text+0x1bb2): undefined reference to `iomap_fie=
map'

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    inode.c:(.text+0x1b3a): undefined reference to `iomap_fiemap'
    arc-elf32-ld: inode.c:(.text+0x1b3a): undefined reference to `iomap_fie=
map'

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 wa=
rnings, 0 section mismatches

Warnings:
    arch/arc/include/asm/perf_event.h:126:27: warning: =E2=80=98arc_pmu_cac=
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
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

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
mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 secti=
on mismatches

Errors:
    inode.c:(.text+0x2688): undefined reference to `iomap_fiemap'

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is unini=
tialized when used here [-Wuninitialized]
    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variable 're=
t' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    drivers/nfc/s3fwrn5/firmware.c:425:41: warning: variable 'ret' is unini=
tialized when used here [-Wuninitialized]
    drivers/nfc/s3fwrn5/firmware.c:416:9: note: initialize the variable 're=
t' to silence this warning
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
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0=
 section mismatches

Errors:
    sysfb.c:(.init.text+0x8): undefined reference to `screen_info'
    sysfb.c:(.init.text+0x48): undefined reference to `screen_info'

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warn=
ings, 0 section mismatches

Errors:
    inode.c:(.text+0x125e): undefined reference to `iomap_fiemap'
    sysfb.c:(.init.text+0x8): undefined reference to `screen_info'
    sysfb.c:(.init.text+0x48): undefined reference to `screen_info'

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    inode.c:(.text+0x1aa6): undefined reference to `iomap_fiemap'
    arc-elf32-ld: inode.c:(.text+0x1aa6): undefined reference to `iomap_fie=
map'

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings=
, 0 section mismatches

Errors:
    inode.c:(.text+0x1b3a): undefined reference to `iomap_fiemap'
    arc-elf32-ld: inode.c:(.text+0x1b3a): undefined reference to `iomap_fie=
map'

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    inode.c:(.text+0x2510): undefined reference to `iomap_fiemap'

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
sama7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0=
 section mismatches

Errors:
    inode.c:(.text+0x26f0): undefined reference to `iomap_fiemap'

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
tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 secti=
on mismatches

Errors:
    inode.c:(.text+0x2688): undefined reference to `iomap_fiemap'

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_re=
locate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig+crypto (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+ima (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
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
clang-built-linux/61005f25.1c69fb81.5a812.acd3%40mx.google.com.
