Return-Path: <clang-built-linux+bncBDT6TV45WMPRBW5KSCDQMGQENCPXQ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CCE3BC7E5
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 10:33:33 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x9-20020a6541490000b0290222fe6234d6sf15554479pgp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 01:33:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625560412; cv=pass;
        d=google.com; s=arc-20160816;
        b=tq2c1iWvuESCPmBizO+tmOU9wmluGQRC8u70vTSyTa+8oAfaxaJGJN1bgOwcTJOdB2
         +q9t1d9kJC9IZJPCgdrysWy/nws5W9m9yQsuEMuAkSNlLdWzRP+dxwviZOrx33HBpyhW
         P35krHxBkU95HQqqVatxHkzbInQWcc7goM/Jr2sq4x/yAbjqrH98n70Gw/ocuiaSqHLs
         YkexY7/uHfDYeDUy7JEHNSqMNk1Tp5+jAapx3IKhC+DvFs/B042UU5G26VJ4KZCm0qU3
         /i6hS/JmBl1g9TKqD7YRW7GNC3yVTyHe12dd1LNOdE7hVlQY3aVu+2jzAyq+Rk/gXTqV
         KtkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=Dc6cmRrMnrR4m8QL/rcU76JkzkKEV3H+PS9wLTM8nZg=;
        b=zFIG6GeXUDyoUEstOJ9LDnSLEH02kDZn4W7GNSRG3tkoRC24Vso3+TQzH1PaMFC4wD
         h51KR1UV0P57IK5rR2qbNEJK12xA5HMV7WsEV/8M4Sm76Fo5Cl3V5q8eTfaBYSt3PXlU
         KpVM0+sw5WxhHpyPm4xTNAVufZiPK+SUkH7n8Jezzzr7dGLaaA3jIWCHgMb5jYx+sCjO
         jj20V0MZuhxHwuB+RT8eBwOYgNrR5VLgIVq+eRTfZu9L4TVw0wn3Og9QDcBLvTb/oIA3
         xJGt/tHPCDBkOLIu1PnndQfXLbGtE3Yry0lBLJOSiZj++AI7v6cupQNkkA6PTAiSsRfR
         dG1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=00IG1jLe;
       spf=neutral (google.com: 2607:f8b0:4864:20::1034 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dc6cmRrMnrR4m8QL/rcU76JkzkKEV3H+PS9wLTM8nZg=;
        b=JCzVdyE6dZj/8pOwq9VcAe0aO4FdgFCi3JKPNhHSt79udWmrcLJkvsDt8U7yloHwti
         JUhiKqjyHbzkDBwIEtFS1/9nYvxtHEPR6KwPVqT2GJy33eGEylE4lukXiRmDw8ns9fA5
         xkkwDFF+bzV9dX/3aJ2P3dxdvaJMt3NquY2QoNUYlS39YXb9uts6ZzKtlyUiVbu0DDjp
         5W2wYK+O+iekae0clk8kUaRXsxJciI3G09290ZuW4wCBUARJ2MhiqFjn8lsny84+xxfS
         C/IhX57iIBYiUiturLBDNXHCOFKNUdiV/oiws8+zCC8I5LgMj09Ut0whnxqnNDJLjRXP
         j2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dc6cmRrMnrR4m8QL/rcU76JkzkKEV3H+PS9wLTM8nZg=;
        b=gU9nmIFlgtfBOM/Ns4NKVHroEphHIF5vMrSlwh4q+FFIMW33UJgU3S6LPgrrNcIfYu
         6MCMPiMbwUilAJtzA1PjheAiN9yJQEmXGtUIP/gmyOhCe858pvAbn8lkW5xUPSZv+F27
         2LDtZjm+Hw52kjtdBvY3+htuX7jAHj4AqbT1D2w7ZWfnIgcIVylO8KpYLCuLi4fxq3F+
         ZUKoWA/kJMbhgA6dawPgLSwLwApiRmmFFLvzjszOmhoZxFJkaS7flP545eRqD/sGzkfF
         lVe8K/JMpzs9lq9Fah1GqcWb8vjZV0zP1bBblgwprSEmt9TZqDsnOKkzlQbeSKnUoHjN
         dccQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Wh7ucgFdTK3e95KPcxjgWqYYixCR66BdbXJ9WNnRIBRuZwhVd
	EVyPlWBLBcPayOBe36Nd2C0=
X-Google-Smtp-Source: ABdhPJzqeQJstBABAdrpgC1ntzBh+ynafPWAI6kpU0yh1wPIbuS19SoCpV6jbyuHm2bcNCJsx/nifA==
X-Received: by 2002:a63:df0f:: with SMTP id u15mr19953314pgg.57.1625560411967;
        Tue, 06 Jul 2021 01:33:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c90:: with SMTP id t16ls10502514plo.1.gmail; Tue,
 06 Jul 2021 01:33:31 -0700 (PDT)
X-Received: by 2002:a17:90a:650b:: with SMTP id i11mr19561788pjj.39.1625560411436;
        Tue, 06 Jul 2021 01:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625560411; cv=none;
        d=google.com; s=arc-20160816;
        b=soSgJ3Z4NJJd7M7Oiod12azqJSp5gALgucMa0Kmcb99jeunobYQ9+MWe2dLv2hauH7
         /f4ZgTnJ6M+5UOaAuehG1Rp4tMyehgfenyho5OfpQoixj90o5HiOmeooytwSy2M1jwoF
         Kpx7M8xzoVDvNRJE8EFwPBq97OZdxSJQ2fZwd4zp1vBbc23SdZNe6C9BwqKj5sZ+tK3r
         Jq2WqOmerFFk9LgWM5xDEmjfg0pzyKjVPFZoXpiUcvL6AaGBbzkcSbIb1y2s9uH6iMnV
         ehiBpcNEai5PwStHytDB0CYZjnMkV3qVN2EDikvcdjwYbhpS70uK+qO4C9j2OMFafVNj
         ElUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=gkKqN8Hr5YpeBsAsxafBmEg2mDWFAb2ZIMXVOLsMv7k=;
        b=gUOq/iGLoApC2rCUhBHlDilNJbO7ZWq1cGvqJL3BvdK4uc66UEjosNxzn5YT2luj8D
         6g/fPpE6D0H9LhsS3v+qj5+c7sz+7uPjb6XfiKWJ/fOMZYR8BWsxvyUNSuBAJE8Tkpue
         6bH4cRXRppjRqeWvGM48hGHtGRqX6Eu7DT9XbghETX8c8RqwQ9uiAH1csVeuvhTywRKX
         Hyq7PWfX8XG3TaoM0Tl25y+dibQzD6THzKMNs2eOZSd3tcJ6DudL1tPj5pnsrGrsX+g3
         xqh2UuCWAMYwe5HlIxC89HKSXJdDmo+Ib0totUFHloVysX42kBjaYgCQ4M0es7ADMrdd
         BmDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=00IG1jLe;
       spf=neutral (google.com: 2607:f8b0:4864:20::1034 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id p190si1150702pfp.2.2021.07.06.01.33.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 01:33:31 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1034 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id p9so491147pjl.3
        for <clang-built-linux@googlegroups.com>; Tue, 06 Jul 2021 01:33:31 -0700 (PDT)
X-Received: by 2002:a17:90b:1203:: with SMTP id gl3mr5388197pjb.153.1625560410358;
        Tue, 06 Jul 2021 01:33:30 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id j6sm14002097pji.23.2021.07.06.01.33.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 01:33:29 -0700 (PDT)
Message-ID: <60e41559.1c69fb81.1535d.9bb7@mx.google.com>
Date: Tue, 06 Jul 2021 01:33:29 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20210706
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 212 builds: 6 failed, 206 passed, 30 errors,
 261 warnings (next-20210706)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=00IG1jLe;       spf=neutral (google.com: 2607:f8b0:4864:20::1034 is
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

next/master build: 212 builds: 6 failed, 206 passed, 30 errors, 261 warning=
s (next-20210706)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210706/

Tree: next
Branch: master
Git Describe: next-20210706
Git Commit: d72e63193059258a81e12af070b859ef6e0c76fb
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arc:
    allnoconfig: (gcc-8) FAIL
    nsimosci_hs_smp_defconfig: (gcc-8) FAIL

arm64:
    allmodconfig: (gcc-8) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

riscv:
    rv32_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 8 errors
    axs103_defconfig (gcc-8): 1 warning
    axs103_smp_defconfig (gcc-8): 1 warning
    haps_hs_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig+kselftest (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 1 warning
    nsimosci_hs_smp_defconfig (gcc-8): 8 errors
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (gcc-8): 2 errors, 3 warnings
    allmodconfig (clang-12): 10 warnings
    defconfig (gcc-8): 2 warnings
    defconfig (clang-12): 4 warnings
    defconfig (clang-10): 5 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 4 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 2 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 5 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 2 warnings
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 2 warnings
    defconfig+kselftest (gcc-8): 2 warnings

arm:
    allmodconfig (gcc-8): 3 warnings
    allmodconfig (clang-12): 32 warnings
    aspeed_g5_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (clang-10): 2 warnings
    aspeed_g5_defconfig (clang-12): 2 warnings
    at91_dt_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 2 warnings
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (clang-10): 2 warnings
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (clang-12): 2 warnings
    multi_v7_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (clang-10): 4 warnings
    multi_v7_defconfig (clang-12): 4 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 2 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 2 warnin=
gs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 2 warnings
    multi_v7_defconfig+kselftest (gcc-8): 2 warnings
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 2 warnings
    sunxi_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 2 warnings
    vf610m4_defconfig (gcc-8): 2 warnings
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (clang-10): 2 warnings
    i386_defconfig (clang-12): 2 warnings
    i386_defconfig+kselftest (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 2 warnings
    32r2el_defconfig+kselftest (gcc-8): 2 warnings
    bigsur_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    cavium_octeon_defconfig (gcc-8): 1 warning
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 1 warning
    cu1000-neo_defconfig (gcc-8): 1 warning
    cu1830-neo_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    decstation_64_defconfig (gcc-8): 1 warning
    decstation_defconfig (gcc-8): 1 warning
    decstation_r4k_defconfig (gcc-8): 1 warning
    e55_defconfig (gcc-8): 1 warning
    fuloong2e_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 1 warning
    ip22_defconfig (gcc-8): 1 warning
    ip32_defconfig (gcc-8): 1 warning
    jazz_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 1 warning
    loongson1b_defconfig (gcc-8): 1 warning
    loongson1c_defconfig (gcc-8): 1 warning
    loongson2k_defconfig (gcc-8): 1 warning
    loongson3_defconfig (gcc-8): 2 warnings
    malta_defconfig (gcc-8): 1 warning
    malta_kvm_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 1 warning
    pistachio_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 2 warnings
    rs90_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 warning

riscv:
    defconfig (gcc-8): 2 warnings
    defconfig+CONFIG_EFI=3Dn (clang-12): 4 warnings
    defconfig+kselftest (gcc-8): 2 warnings
    nommu_k210_defconfig (gcc-8): 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 12 errors, 9 warnings

x86_64:
    x86_64_defconfig (clang-12): 2 warnings
    x86_64_defconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-10): 4 warnings
    x86_64_defconfig+kselftest (gcc-8): 1 warning
    x86_64_defconfig+x86-chromebook (gcc-8): 1 warning
    x86_64_defconfig+x86-chromebook+kselftest (gcc-8): 1 warning
    x86_64_defconfig+x86_kvm_guest (gcc-8): 2 warnings

Errors summary:

    6    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types =
when returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =
=E2=80=98struct <anonymous>=E2=80=99} was expected
    6    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaratio=
n of function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]
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
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1864=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1857=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field

Warnings summary:

    131  fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 =
defined but not used [-Wunused-label]
    27   1 warning generated.
    21   drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=
=98bytes=E2=80=99 [-Wunused-variable]
    16   fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused=
-label]
    8    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes'=
 [-Wunused-variable]
    6    include/linux/rmap.h:294:34: warning: statement with no effect [-W=
unused-value]
    6    cc1: some warnings being treated as errors
    2    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=
=99 is usually a function [-Wmain]
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-next-20210706/kernel/drivers/media/tuners/tuner-types.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
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
    1    arch/arc/include/asm/perf_event.h:126:23: warning: =E2=80=98arc_pm=
u_cache_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    1    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    1    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnin=
gs, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 2 errors, 3 warnings, 0 section=
 mismatches

Errors:
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1857=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1864=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section m=
ismatches

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 10 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 32 warnings, 0 secti=
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
    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.
    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame size of =
1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame size of=
 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame size =
of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3043:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5560 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.

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
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210706/kernel/drivers/media/tuners/tuner-types.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 4 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 2 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 5 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-next-20210706/kernel/drivers/media/tuners/tuner-types.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 2 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 4 warn=
ings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 2 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
loongson2k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/net/virtio_net.c:1695:15: warning: unused variable 'bytes' [-Wu=
nused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 2 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 2 warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 =
warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warni=
ngs, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 12 errors, 9 warnings, 0 sect=
ion mismatches

Errors:
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:520:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:520:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected

Warnings:
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

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
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/rmap.h:294:34: warning: statement with no effect [-Wunuse=
d-value]
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: unused label 'exit_thread' [-Wunused-labe=
l]
    1 warning generated.
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_re=
locate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1=
 warning, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86_kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 =
warnings, 0 section mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]
    drivers/net/virtio_net.c:1695:15: warning: unused variable =E2=80=98byt=
es=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/mmp.c:247:1: warning: label =E2=80=98exit_thread=E2=80=99 defin=
ed but not used [-Wunused-label]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/60e41559.1c69fb81.1535d.9bb7%40mx.google.com.
