Return-Path: <clang-built-linux+bncBDT6TV45WMPRBROJ3L7QKGQEMJPXIPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C052ECA50
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 07:05:59 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id x14sf5344689ilg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 22:05:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609999558; cv=pass;
        d=google.com; s=arc-20160816;
        b=fCirE/OeGnMG/8jFPRUYX7gmbb3ZwAkiC2afauUClKdWagZw5Y05dZbr4cqLj07GZt
         Yix2ytYg1Is6a+X4ktlZBEsjOZuCK68l5x9gZMAw0EFyNtthCgR5eCB/pZcvg64RaX23
         9a3jJj3AG4q+M17YUJgFoSJny7yePAdl9nEfm9u4kpKyKO3O9YCJIM484dCf+V6kWWZu
         m1bjJIawlqwLdhjMQLA/Zrsj8vGxoLpLEKbM0025cCQPu33mq1pXiUMRuNVwEt4KoTX+
         6f615VxyVLSSZlWTD6+vnSFVA55z+Umo/KRD6/meEZ7BumOOQ2+U818kSYL6d2kQ7o6c
         NoyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=ukcBgtnAG84Vdetyd+Dyld/I0jqwWTnp6Ngn7tQWBJ4=;
        b=hcUnHA8MYAqN1j+woIOffBqfpEPW8+tKuY+iTthLpDo5+eDTpb97n0IZNJQ4aj4r52
         yu1TxRD6VQgvXV/57OEM9rkSw6XYpw6B7QUMhkeGoNlww28u06E5BIBs7XN3uDho8Jnz
         UIf2VbYNxmgrmhAmCXiv3pHLQzo8NgMHZhSqZ6/5INdpOZlqxcwbIGAZ0gv/kFa6sPDw
         FxXfESCikyf7HkijNZ8AHmWhAl60YW3gVida5BHtzHAMUE559iXl4gRl5kN9RaG+UOCV
         6Jjr9ksocls8dN/7BWQXt5hKMwgo6eKfQn3XBiDaoYk7sd8PPVNMRcx1WNIkMWkSqm9Q
         R+2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="BuNhl/se";
       spf=neutral (google.com: 2607:f8b0:4864:20::529 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukcBgtnAG84Vdetyd+Dyld/I0jqwWTnp6Ngn7tQWBJ4=;
        b=epRg/37CFEjC3oL+uBy204fvOnrPyio5t9Je6ePvitmnj0bGficlZYS1cB/YPBajJp
         IRX8u2RpYZ0i/893b9X39CiRs3zu2Un1dG7BdRHgtZQ/dYHRki8P3GjcF+1UwV9Wqze5
         2YdZFakbNNsfpgJVXBemzcWNfna9zegOWnCQd9hFZUWMTR0EB/MyGO3jV4vLHViccAXu
         9oZTaFGiYyeGz0AqhD5ul0ABP3U0XJkNwDuR5sq2U4IjS7vJOQyqQuzpOq4PKTw+IiCW
         vi1HUvnC60u4TmRk8m/9c4mg854nnmLoVa/diNzwcf5nqBePrstHUU0DmlKSRWDINS5d
         CSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukcBgtnAG84Vdetyd+Dyld/I0jqwWTnp6Ngn7tQWBJ4=;
        b=sH6h+l3HYkc8ZzV2Sq7BGTz1+t5ma6dQd5LV3Nh3SITjPo4f/2+OB1gK4VanrRH0jT
         eztZ2R4f+5fcuI6ZJ9+3FFdJzmRlE2+/rVYN5HyN7jCgJpAF8cZgEYAPhqU90dasJVNT
         m0Li/tg33A6XPyl2PucI5dBA5kSZb5sy2wdOwGfrX+1IxVDQdmVMM+ZRi6EoCARrpVTT
         tQ+/3W8V4dxNbg2xs+ys81vTlBY++LjqYezjUQ9ih/sTTArFsfexMJLXFOWgpiSR0mm5
         zQpNFOf4qe+o1cipQw0hZykqOn0kI8RDUFckk6kUCiwucd6PN2E58l9FvvHE6BXBLk5m
         MkVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322beMr1s9OpH8991sDguqc+Ys5vi2m5Z2RScwYw+As4DxcxSU8
	AhiYlemGBDDFbYXp8RuKBK4=
X-Google-Smtp-Source: ABdhPJzj7RkInQJgrn9rfHaOeS8P8u6AkxO8dssOQeJw5zSjlqfoXBHoLrvxG+S7YUR96EssrayygQ==
X-Received: by 2002:a92:ad05:: with SMTP id w5mr7263199ilh.226.1609999558050;
        Wed, 06 Jan 2021 22:05:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:921:: with SMTP id o1ls1650195ilt.2.gmail; Wed, 06
 Jan 2021 22:05:57 -0800 (PST)
X-Received: by 2002:a05:6e02:1185:: with SMTP id y5mr7870503ili.119.1609999557535;
        Wed, 06 Jan 2021 22:05:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609999557; cv=none;
        d=google.com; s=arc-20160816;
        b=zLI+SeBtDNukghS4T44ddhN1q85pvkKrrLZP/UY6dOrrTbRZ1BgW8aoMWIT7V5fpTA
         LVPrvoROhwHJZ/NlXEmoiJn+El8yTYklmlPmEU5oPsAQ9e0313FhC3ciLkWoLFWqyWBL
         SbcrHZiG0X2tmQYt8nb57Pizrckxba4A+Shq3leyhWbPshZLPbYHRHUuuJDvGZns1hXO
         pylX1nRb0F4be14+heApS6oeDVRcEhF+6PWejdQS7XSbpvwZLQJTQjdcjm1aiDlHrH1G
         KZ0Jy0r41/CpFXW65HTrgfzXQvKUXUwMN4BdMgUqRFyFRvJJLjVgwoQExObVDHGQHPVn
         sppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=wi1EiaapLra7yx8qu0ecS19HPiktz4hWWJHkQZmULKQ=;
        b=bNWp7LhrdvkpaC5GLTlipHO+M+4fMq6JDpLqof0MXeqmPnAhj/6cyGPGqxGQAdwRGn
         e9LvaCs/141CYV/VuFklcR8+79bqh3MtJv3TwO9/Xdm0QfGU0s4qvv5LaYPcHi5lRYIM
         CwtIkEBsUCEoiaV9vknEGSZpN9/mXSHWucTQ1Vi1QKoLNSHLfvAJB+Pekoa9auCZmTSK
         a2G0sRwecHRhLvSKE72L9gP7/k8RiyeN/+5zk9YToQK2CrIdcgH+5nL7XufVutQOuSFG
         T35XOiVsZeh6CLCeaFG2CFbeCvAK7JsZ1KO2u5k7bqW7K2ahcQ9chg0xpioHejV5zFQx
         8C5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="BuNhl/se";
       spf=neutral (google.com: 2607:f8b0:4864:20::529 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id j4si617479ilr.2.2021.01.06.22.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 22:05:57 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::529 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id i5so4146670pgo.1
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 22:05:57 -0800 (PST)
X-Received: by 2002:a63:4c11:: with SMTP id z17mr250867pga.437.1609999554944;
        Wed, 06 Jan 2021 22:05:54 -0800 (PST)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id x1sm4230102pfc.112.2021.01.06.22.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 22:05:54 -0800 (PST)
Message-ID: <5ff6a4c2.1c69fb81.75a87.b191@mx.google.com>
Date: Wed, 06 Jan 2021 22:05:54 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20210107
X-Kernelci-Report-Type: build
Subject: next/master build: 230 builds: 6 failed, 224 passed, 26 errors,
 130 warnings (next-20210107)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b="BuNhl/se";       spf=neutral (google.com: 2607:f8b0:4864:20::529 is
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

next/master build: 230 builds: 6 failed, 224 passed, 26 errors, 130 warning=
s (next-20210107)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210107/

Tree: next
Branch: master
Git Describe: next-20210107
Git Commit: 2d3811a4fb231af9acb96fd0355ecb889d66ea41
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-10) FAIL
    allmodconfig: (clang-11) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    aspeed_g5_defconfig: (clang-10) FAIL
    efm32_defconfig: (gcc-8) FAIL

riscv:
    nommu_virt_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (clang-10): 2 errors, 9 warnings
    allmodconfig (gcc-8): 1 error, 1 warning
    allmodconfig (clang-11): 1 error, 9 warnings
    defconfig (clang-10): 1 warning
    defconfig (clang-11): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 1 warning

arm:
    allmodconfig (clang-10): 47 warnings
    allmodconfig (gcc-8): 8 warnings
    aspeed_g5_defconfig (clang-10): 13 errors
    axm55xx_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 6 errors
    keystone_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 1 warnin=
g
    omap1_defconfig (gcc-8): 2 warnings
    socfpga_defconfig (gcc-8): 1 warning

i386:

mips:
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 2 warnings

riscv:
    defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
    nommu_virt_defconfig (gcc-8): 3 errors, 3 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 1 warning
    allmodconfig (clang-11): 14 warnings
    allmodconfig (clang-10): 9 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-11): 2 warnings
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    3    ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.k=
o] undefined!
    2    arm-linux-gnueabihf-ld: /scratch/linux/drivers/net/ethernet/micrel=
/ks8851_common.c:1117: undefined reference to `mdiobus_unregister'
    1    mm/secretmem.c:83:33: error: =E2=80=98PMD_PAGE_ORDER=E2=80=99 unde=
clared (first use in this function); did you mean =E2=80=98MAX_ORDER=E2=80=
=99?
    1    mm/secretmem.c:353:34: error: =E2=80=98PMD_PAGE_ORDER=E2=80=99 und=
eclared (first use in this function); did you mean =E2=80=98MAX_ORDER=E2=80=
=99?
    1    mm/secretmem.c:202:6: error: implicit declaration of function =E2=
=80=98mlock_future_check=E2=80=99; did you mean =E2=80=98locks_free_lock=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3740C): reloca=
tion R_ARM_PREL31 out of range: 2135594284 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3736C): reloca=
tion R_ARM_PREL31 out of range: 2135594444 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3735C): reloca=
tion R_ARM_PREL31 out of range: 2135594460 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3730C): reloca=
tion R_ARM_PREL31 out of range: 2135594540 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372FC): reloca=
tion R_ARM_PREL31 out of range: 2135594556 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372E4): reloca=
tion R_ARM_PREL31 out of range: 2135594580 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372CC): reloca=
tion R_ARM_PREL31 out of range: 2135594604 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3729C): reloca=
tion R_ARM_PREL31 out of range: 2135594652 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): reloca=
tion R_ARM_PREL31 out of range: 2135594700 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37264): reloca=
tion R_ARM_PREL31 out of range: 2135594708 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37224): reloca=
tion R_ARM_PREL31 out of range: 2135594772 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3720C): reloca=
tion R_ARM_PREL31 out of range: 2135594796 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34BE8): reloca=
tion R_ARM_PREL31 out of range: 2135539024 is not in [-1073741824, 10737418=
23]
    1    arm-linux-gnueabihf-ld: /scratch/linux/drivers/net/ethernet/micrel=
/ks8851_common.c:1118: undefined reference to `mdiobus_free'
    1    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefi=
ned!
    1    /scratch/linux/drivers/net/ethernet/micrel/ks8851_common.c:1118: u=
ndefined reference to `mdiobus_free'
    1    /scratch/linux/drivers/net/ethernet/micrel/ks8851_common.c:1102: u=
ndefined reference to `__mdiobus_register'
    1    /scratch/linux/./include/linux/phy.h:383: undefined reference to `=
mdiobus_alloc_size'

Warnings summary:

    17   1 warning generated.
    8    2 warnings generated.
    5    lib/cpumask.c:222:17: warning: cast from pointer to integer of dif=
ferent size [-Wpointer-to-int-cast]
    5    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: im=
plicit conversion from enumeration type 'enum mt76_mcuq_id' to different en=
umeration type 'enum mt76_txq_id' [-Wenum-conversion]
    5    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: im=
plicit conversion from enumeration type 'enum mt76_mcuq_id' to different en=
umeration type 'enum mt76_txq_id' [-Wenum-conversion]
    5    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: im=
plicit conversion from enumeration type 'enum mt76_mcuq_id' to different en=
umeration type 'enum mt76_txq_id' [-Wenum-conversion]
    5    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: im=
plicit conversion from enumeration type 'enum mt76_mcuq_id' to different en=
umeration type 'enum mt76_txq_id' [-Wenum-conversion]
    5    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: im=
plicit conversion from enumeration type 'enum mt76_mcuq_id' to different en=
umeration type 'enum mt76_txq_id' [-Wenum-conversion]
    5    3 warnings generated.
    4    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/mod=
ules/5.11.0-rc2-next-20210107/kernel/drivers/media/tuners/tuner-types.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    3    fs/erofs/internal.h:23:21: warning: format =E2=80=98%s=E2=80=99 ex=
pects argument of type =E2=80=98char *=E2=80=99, but argument 4 has type =
=E2=80=98struct dentry *=E2=80=99 [-Wformat=3D]
    3    ./include/linux/minmax.h:18:28: warning: comparison of distinct po=
inter types lacks a cast
    2    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:57.21-61.5: Warning (interr=
upts_property): /paxi/dmac@50000: Missing interrupt-parent
    2    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:51.21-55.5: Warning (interr=
upts_property): /paxi/dmac@40000: Missing interrupt-parent
    2    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:45.19-49.5: Warning (interr=
upts_property): /paxi/gem@30000: Missing interrupt-parent
    2    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:233.21-237.5: Warning (inte=
rrupts_property): /rwid-axi/axi2pico@c0000000: Missing interrupt-parent
    2    WARNING: unmet direct dependencies detected for CMA
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    #warning This code requires at least version 4.6 of GCC
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    security/integrity/ima/ima_crypto.c:582:12: warning: stack frame s=
ize of 1152 bytes in function 'ima_calc_field_array_hash_tfm' [-Wframe-larg=
er-than=3D]
    1    net/rose/rose_subr.o: warning: objtool: rose_write_internal() fall=
s through to next function rose_decode()
    1    fs/reiserfs/do_balan.o: warning: objtool: balance_leaf_when_delete=
()+0x114d: stack state mismatch: cfa1=3D7+184 cfa2=3D7+176
    1    drivers/tee/optee/rpc.c:493:6: warning: stack frame size of 1072 b=
ytes in function 'optee_handle_rpc' [-Wframe-larger-than=3D]
    1    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame si=
ze of 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3344 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame si=
ze of 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    1    drivers/spi/spi-cadence-quadspi.c:1153:24: warning: comparison of =
distinct pointer types ('typeof (len) *' (aka 'unsigned int *') and 'typeof=
 (500UL) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1848 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:145:6: warni=
ng: stack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-l=
arger-than=3D]
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1871:12: warning: stack frame =
size of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
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
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5704 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3011:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    1    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    crypto/wp512.c:782:13: warning: stack frame size of 1272 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    clang: warning: argument unused during compilation: '-no-pie' [-Wu=
nused-command-line-argument]
    1    cc1: some warnings being treated as errors
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    /tmp/test-arm-761ce1.s:18794: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-761ce1.s:18719: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/ccjOhmbI.s:18195: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccjOhmbI.s:18123: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1181:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./usr/include/linux/bcache.h:355:2: warning: field '' with variabl=
e sized type 'union jset::(anonymous at ./usr/include/linux/bcache.h:355:2)=
' not at the end of a struct or class is a GNU extension [-Wgnu-variable-si=
zed-type-not-at-end]
    1    ./usr/include/linux/bcache.h:354:2: warning: field '' with variabl=
e sized type 'union jset::(anonymous at ./usr/include/linux/bcache.h:354:2)=
' not at the end of a struct or class is a GNU extension [-Wgnu-variable-si=
zed-type-not-at-end]

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text+0xff427c): Section mismatch in r=
eference from the function exynos_chipid_probe() to the function .init.text=
:product_id_to_soc_id()
    1    WARNING: modpost: vmlinux.o(.text+0xfdb01d): Section mismatch in r=
eference from the function exynos_chipid_probe() to the function .init.text=
:product_id_to_soc_id()
    1    WARNING: modpost: vmlinux.o(.text+0xfc56e1): Section mismatch in r=
eference from the function exynos_chipid_probe() to the function .init.text=
:product_id_to_soc_id()
    1    WARNING: modpost: vmlinux.o(.text+0x10a155c): Section mismatch in =
reference from the function exynos_chipid_probe() to the function .init.tex=
t:product_id_to_soc_id()

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
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/erofs/internal.h:23:21: warning: format =E2=80=98%s=E2=80=99 expects=
 argument of type =E2=80=98char *=E2=80=99, but argument 4 has type =E2=80=
=98struct dentry *=E2=80=99 [-Wformat=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 2 errors, 9 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.ko] un=
defined!
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    2 warnings generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    3 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

Section mismatches:
    WARNING: modpost: vmlinux.o(.text+0xff427c): Section mismatch in refere=
nce from the function exynos_chipid_probe() to the function .init.text:prod=
uct_id_to_soc_id()

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.ko] un=
defined!

Warnings:
    fs/erofs/internal.h:23:21: warning: format =E2=80=98%s=E2=80=99 expects=
 argument of type =E2=80=98char *=E2=80=99, but argument 4 has type =E2=80=
=98struct dentry *=E2=80=99 [-Wformat=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 47 warnings, 0 secti=
on mismatches

Warnings:
    security/integrity/ima/ima_crypto.c:582:12: warning: stack frame size o=
f 1152 bytes in function 'ima_calc_field_array_hash_tfm' [-Wframe-larger-th=
an=3D]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    /tmp/test-arm-761ce1.s:18719: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-761ce1.s:18794: Warning: using r15 results in unpredictab=
le behaviour
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1272 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/spi/spi-cadence-quadspi.c:1153:24: warning: comparison of disti=
nct pointer types ('typeof (len) *' (aka 'unsigned int *') and 'typeof (500=
UL) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
848 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    2 warnings generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    3 warnings generated.
    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame size of=
 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3011:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:145:6: warning: s=
tack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-larger=
-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5704 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1871:12: warning: stack frame size =
of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/tee/optee/rpc.c:493:6: warning: stack frame size of 1072 bytes =
in function 'optee_handle_rpc' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:45.19-49.5: Warning (interrupts_=
property): /paxi/gem@30000: Missing interrupt-parent
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:51.21-55.5: Warning (interrupts_=
property): /paxi/dmac@40000: Missing interrupt-parent
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:57.21-61.5: Warning (interrupts_=
property): /paxi/dmac@50000: Missing interrupt-parent
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:233.21-237.5: Warning (interrupt=
s_property): /rwid-axi/axi2pico@c0000000: Missing interrupt-parent

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 14 warnings, 0 se=
ction mismatches

Warnings:
    ./usr/include/linux/bcache.h:354:2: warning: field '' with variable siz=
ed type 'union jset::(anonymous at ./usr/include/linux/bcache.h:354:2)' not=
 at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-t=
ype-not-at-end]
    ./usr/include/linux/bcache.h:355:2: warning: field '' with variable siz=
ed type 'union jset::(anonymous at ./usr/include/linux/bcache.h:355:2)' not=
 at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-t=
ype-not-at-end]
    2 warnings generated.
    fs/reiserfs/do_balan.o: warning: objtool: balance_leaf_when_delete()+0x=
114d: stack state mismatch: cfa1=3D7+184 cfa2=3D7+176
    net/rose/rose_subr.o: warning: objtool: rose_write_internal() falls thr=
ough to next function rose_decode()
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    2 warnings generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    3 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

Section mismatches:
    WARNING: modpost: vmlinux.o(.text+0xfdb01d): Section mismatch in refere=
nce from the function exynos_chipid_probe() to the function .init.text:prod=
uct_id_to_soc_id()

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 section m=
ismatches

Warnings:
    /tmp/ccjOhmbI.s:18123: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccjOhmbI.s:18195: Warning: using r15 results in unpredictable beha=
viour
    ./include/linux/minmax.h:18:28: warning: comparison of distinct pointer=
 types lacks a cast
    fs/erofs/internal.h:23:21: warning: format =E2=80=98%s=E2=80=99 expects=
 argument of type =E2=80=98char *=E2=80=99, but argument 4 has type =E2=80=
=98struct dentry *=E2=80=99 [-Wformat=3D]
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:45.19-49.5: Warning (interrupts_=
property): /paxi/gem@30000: Missing interrupt-parent
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:51.21-55.5: Warning (interrupts_=
property): /paxi/dmac@40000: Missing interrupt-parent
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:57.21-61.5: Warning (interrupts_=
property): /paxi/dmac@50000: Missing interrupt-parent
    arch/arm/boot/dts/picoxcell-pc3x2.dtsi:233.21-237.5: Warning (interrupt=
s_property): /rwid-axi/axi2pico@c0000000: Missing interrupt-parent

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-11) =E2=80=94 FAIL, 1 error, 9 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.ko] un=
defined!

Warnings:
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    2 warnings generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    3 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3344 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

Section mismatches:
    WARNING: modpost: vmlinux.o(.text+0x10a155c): Section mismatch in refer=
ence from the function exynos_chipid_probe() to the function .init.text:pro=
duct_id_to_soc_id()

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    2 warnings generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implici=
t conversion from enumeration type 'enum mt76_mcuq_id' to different enumera=
tion type 'enum mt76_txq_id' [-Wenum-conversion]
    3 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

Section mismatches:
    WARNING: modpost: vmlinux.o(.text+0xfc56e1): Section mismatch in refere=
nce from the function exynos_chipid_probe() to the function .init.text:prod=
uct_id_to_soc_id()

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
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
allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 13 errors, 0 warnings, =
0 section mismatches

Errors:
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34BE8): relocation =
R_ARM_PREL31 out of range: 2135539024 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3720C): relocation =
R_ARM_PREL31 out of range: 2135594796 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37224): relocation =
R_ARM_PREL31 out of range: 2135594772 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37264): relocation =
R_ARM_PREL31 out of range: 2135594708 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3726C): relocation =
R_ARM_PREL31 out of range: 2135594700 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3729C): relocation =
R_ARM_PREL31 out of range: 2135594652 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372CC): relocation =
R_ARM_PREL31 out of range: 2135594604 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372E4): relocation =
R_ARM_PREL31 out of range: 2135594580 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x372FC): relocation =
R_ARM_PREL31 out of range: 2135594556 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3730C): relocation =
R_ARM_PREL31 out of range: 2135594540 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3735C): relocation =
R_ARM_PREL31 out of range: 2135594460 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3736C): relocation =
R_ARM_PREL31 out of range: 2135594444 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3740C): relocation =
R_ARM_PREL31 out of range: 2135594284 is not in [-1073741824, 1073741823]

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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc2-next-20210107/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc2-next-20210107/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc2-next-20210107/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /scratch/linux/_modules_/lib/modules/=
5.11.0-rc2-next-20210107/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

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
efm32_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    /scratch/linux/./include/linux/phy.h:383: undefined reference to `mdiob=
us_alloc_size'
    /scratch/linux/drivers/net/ethernet/micrel/ks8851_common.c:1102: undefi=
ned reference to `__mdiobus_register'
    /scratch/linux/drivers/net/ethernet/micrel/ks8851_common.c:1118: undefi=
ned reference to `mdiobus_free'
    arm-linux-gnueabihf-ld: /scratch/linux/drivers/net/ethernet/micrel/ks88=
51_common.c:1117: undefined reference to `mdiobus_unregister'
    arm-linux-gnueabihf-ld: /scratch/linux/drivers/net/ethernet/micrel/ks88=
51_common.c:1117: undefined reference to `mdiobus_unregister'
    arm-linux-gnueabihf-ld: /scratch/linux/drivers/net/ethernet/micrel/ks88=
51_common.c:1118: undefined reference to `mdiobus_free'

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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]
    ./include/linux/minmax.h:18:28: warning: comparison of distinct pointer=
 types lacks a cast

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
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]

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
multi_v5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
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
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    lib/cpumask.c:222:17: warning: cast from pointer to integer of differen=
t size [-Wpointer-to-int-cast]

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
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 3 errors, 3 warnings, 0=
 section mismatches

Errors:
    mm/secretmem.c:83:33: error: =E2=80=98PMD_PAGE_ORDER=E2=80=99 undeclare=
d (first use in this function); did you mean =E2=80=98MAX_ORDER=E2=80=99?
    mm/secretmem.c:202:6: error: implicit declaration of function =E2=80=98=
mlock_future_check=E2=80=99; did you mean =E2=80=98locks_free_lock=E2=80=99=
? [-Werror=3Dimplicit-function-declaration]
    mm/secretmem.c:353:34: error: =E2=80=98PMD_PAGE_ORDER=E2=80=99 undeclar=
ed (first use in this function); did you mean =E2=80=98MAX_ORDER=E2=80=99?

Warnings:
    WARNING: unmet direct dependencies detected for CMA
    WARNING: unmet direct dependencies detected for CMA
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
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/minmax.h:18:28: warning: comparison of distinct pointer=
 types lacks a cast

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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1181:warning: override: UNWINDER_GUESS changes choice state

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
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xb8: stack state mismatch: cfa1=3D7+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x259: stack state mismatch: cfa1=3D7+104 cfa2=3D-1+0

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
clang-built-linux/5ff6a4c2.1c69fb81.75a87.b191%40mx.google.com.
