Return-Path: <clang-built-linux+bncBDT6TV45WMPRBMHO7CEAMGQE24QDK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9BB3F1781
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 12:49:21 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id d4-20020a6336040000b029023ad3e0b062sf3250079pga.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 03:49:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629370160; cv=pass;
        d=google.com; s=arc-20160816;
        b=c6km+J9TOtP1SFNQrdVsEOP+/txz5JrHKodOTtCW6lkUgqZnB5++Ib5ukwoeyRSejT
         Zsvvz/O1mE9HkHlP8puC5vyu7JHbT6nKQmuNVHXjOc1Ie/63GeXBnSFhWQDLjIP/8G8f
         bJrZrkz8VTrA3CZ7bPX/WF8JfL1xi5RguF9yJFsaMjEjU49lvfX02ci/m6qejHVehbe7
         rfh6nMOCJbBTgAGUGgTy4iYu9UhqG7DAXV01e4WnDM4M5RFYAyZqeYx/bAEbX6pHmBtR
         PrWwmL3H2aty0l4bOZpK7bBO5qMir+WwQ3SW7jEyXO913Ac9+z8mFp4EZCyzaYMUGDA7
         zRIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=wPrhEOrTf80b6rqtlkiQXrqAeDbr4i10qhjYJ7f9EW4=;
        b=LPty8mgDi8Du9glpCSRGGUd0LNZSnLkdWxvGBB7IB/ehSdg6LNF3AaqJs+7Hnh7xuH
         D+HleBAB8l5ZSVO4Q2YmgEzluoEhAzSn9gfux+IF47/7wl7ho5pivJ1Jvt6HWIa6URp6
         aeuE+Z862PG8Z2Zr4nQIMSPm2d8wmfsIWayrPSfktkH4PZf9LIhRuYELO8TWYW6M3Az+
         H7SNMRc4sJCafmXBzCfFoub+5pjaU5L1qnaVZLomifnI7SJY08S4crh9tfUp/jYzLUIk
         UNNFrpVtlLo7ZN4oJBeKqy5WMkverXoj9ALsMvvhIBjOFztJZ6Oc1XxOdP1+4NglOiVa
         Tw0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=JJ1dRHDn;
       spf=neutral (google.com: 2607:f8b0:4864:20::52c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPrhEOrTf80b6rqtlkiQXrqAeDbr4i10qhjYJ7f9EW4=;
        b=BZtJkQ2kRmbKm0PuqvdheXqAxRYt2mmk4GPw4cj5V2uC+a13WhzwqgvD80k1eugwNf
         DTWCPOUMOidQQseTXYsL574bghtLKNPmeNBB87aLAr7rUxOyTcmED37oJivodvEUJ8SC
         uwone96bdV2TNzQyNL1O7785ctManW0vJpb/UaTfW/w5D1mJo9/VoAySX+DG0b5apymd
         NYrfVSi/2signJkHW0vmeBnk19fs0L6P07UeMot7PpVCJ7dUODjbah+sO82BetiimTRU
         I0azW3sCMRYTr0IUUFz7ahU9cGGs2XuFwFs2px6LDPa6qjAJaDvyJGZqBIPpXTvWO91d
         73Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPrhEOrTf80b6rqtlkiQXrqAeDbr4i10qhjYJ7f9EW4=;
        b=Ng+tVChV7rHZFsV4PpdDKsKLgDlMkoXdBpy9f3lKHC0VkOOywzcHYUUJ6Frlfzz3OZ
         JTERCZ22ZffwZtHiNF4KWy2ajGYvuvS+jLZc7tvnD4T/W8S17VgYnFGIPCsmZs1XqDUm
         O5o5yC1lOHV4gCQjQyXa2HlcxFOgrF/mtxjgninuPFXmVOH9nShh8MpCu+y8vCj2opOq
         kSf+BYUykTGu5J43pTYqKkg3rqbNj8jMO0Dw8iPsbs/DW3uaiPuh7HmKfT3lsz6DXgSE
         kULVSG+/f4NRrvhZ/UOrV/PmlsiskUY0/PeghNi8nv78udI9+tAJLQd41AFlokkFH4ty
         IrhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eSntgyxBneeiEiy3c6c3JvB525x2PB76Eq7E/XWwQ9eFnAOVO
	1tcm5KQXYGFaUCTfroxBzKw=
X-Google-Smtp-Source: ABdhPJzGWJyJ2+uQnlJ2uwOzOs2jcDE6OrmayXAu1gYl9VLl1do0vO50thoW2xa6cMAss3GAM09BJQ==
X-Received: by 2002:a17:90a:4681:: with SMTP id z1mr13988249pjf.131.1629370160359;
        Thu, 19 Aug 2021 03:49:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc2:: with SMTP id c185ls2110428pfc.2.gmail; Thu, 19
 Aug 2021 03:49:19 -0700 (PDT)
X-Received: by 2002:a63:385:: with SMTP id 127mr13330474pgd.58.1629370159446;
        Thu, 19 Aug 2021 03:49:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629370159; cv=none;
        d=google.com; s=arc-20160816;
        b=GTJdx2YbGgN1JMeaCfoQ10qprIk5lX7Tnwi/nQl7NaZnIEwUh/ubJKBjxL4ykZ5+R9
         +9oj3Cx2Re7QXnO4E63lUuQervh6m40RDjnxd+lA5eVOs2+Kmh163XK499IyzWZs6xb8
         CXoh1mPLO0S1JOd8G00QHmZmCrjj+y0TibXUO3MMHmuMQ6tT43228zhajP982Qzoff/1
         5Qau9TsJk4zj1JKhEuF1SqXxyE10MXf3u+WLa3+wghfoACVtKqurn+mEFl+h1xh96pOv
         sb6E2/DfJLSJeze62rPVJxxZn2F5tXu8W7ARM54agsN+EMQNcYQApaYHQGInhaw553CG
         xjqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=k67jZlqwUylV65YS1i5d7zGixm/vzAQWR9YIAA2KMjI=;
        b=IN7RfxKu/fezOaH44mTNJ473Yqyx9QA0XJt8ESh8F2bddGZ6O2/qqtYy4Q4XMFLWm3
         w2leAsKFZ8fB972cm9MxOildvEg33HTvcXBuUlQrlYgnth4qtFEPKBTepkZMJWgcoRyC
         2AACiQ+FB2QEAcuu0wk7uoR5pcZ1ld2qatQ23c/Y1ugVsl6rUeo3aY91TKSDRyQv0ALg
         H6JyZ6oqrItJF+thjG010AYrWcAcNhMKnauqQGfKUsG5hV2r6Yw/ULfJ15lNn4gVayvU
         /hZuKg+rycNXIWguWjnpMDBswJRRHUy71LgvDESyNMvMmBnlO9C/HrYRjyHN+6TT4oLR
         EoFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=JJ1dRHDn;
       spf=neutral (google.com: 2607:f8b0:4864:20::52c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id mn23si454983pjb.2.2021.08.19.03.49.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 03:49:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::52c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id k14so5519203pga.13
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 03:49:19 -0700 (PDT)
X-Received: by 2002:a05:6a00:ac6:b029:374:a33b:a74 with SMTP id c6-20020a056a000ac6b0290374a33b0a74mr14260174pfl.51.1629370157888;
        Thu, 19 Aug 2021 03:49:17 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id x189sm3391249pfx.99.2021.08.19.03.49.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 03:49:16 -0700 (PDT)
Message-ID: <611e372c.1c69fb81.f7662.a730@mx.google.com>
Date: Thu, 19 Aug 2021 03:49:16 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20210819
X-Kernelci-Report-Type: build
Subject: next/master build: 212 builds: 6 failed, 206 passed, 55 errors,
 1867 warnings (next-20210819)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=JJ1dRHDn;       spf=neutral (google.com: 2607:f8b0:4864:20::52c is
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

next/master build: 212 builds: 6 failed, 206 passed, 55 errors, 1867 warnin=
gs (next-20210819)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210819/

Tree: next
Branch: master
Git Describe: next-20210819
Git Commit: 33e65b1f975cd2814fc0ea9617250fc4c1d7a553
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-12) FAIL
    allmodconfig: (gcc-8) FAIL

i386:
    allmodconfig: (clang-12) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

x86_64:
    allmodconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 1 warning
    axs103_smp_defconfig (gcc-8): 1 warning
    haps_hs_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig+kselftest (gcc-8): 3 warnings
    hsdk_defconfig (gcc-8): 1 warning
    nsimosci_hs_defconfig (gcc-8): 1 warning
    nsimosci_hs_smp_defconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-12): 2 errors, 16 warnings
    allmodconfig (gcc-8): 2 errors, 2 warnings
    defconfig (clang-12): 836 warnings
    defconfig (gcc-8): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 819 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 warning
    defconfig+crypto (gcc-8): 1 warning
    defconfig+ima (gcc-8): 1 warning
    defconfig+kselftest (gcc-8): 1 warning

arm:
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (clang-12): 2 warnings
    multi_v5_defconfig (clang-10): 2 warnings
    multi_v7_defconfig (clang-12): 25 warnings
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 1 warnin=
g
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 1 warning
    multi_v7_defconfig+kselftest (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    sama7_defconfig (gcc-8): 1 warning
    shmobile_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning

i386:
    allmodconfig (clang-12): 1 error, 40 warnings

mips:
    32r2el_defconfig (gcc-8): 1 warning
    32r2el_defconfig+kselftest (gcc-8): 1 warning
    ath79_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    cavium_octeon_defconfig (gcc-8): 1 warning
    ci20_defconfig (gcc-8): 1 warning
    cu1000-neo_defconfig (gcc-8): 1 warning
    cu1830-neo_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 1 warning
    loongson2k_defconfig (gcc-8): 1 warning
    loongson3_defconfig (gcc-8): 1 warning
    malta_defconfig (gcc-8): 1 warning
    malta_kvm_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 1 warning
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    rs90_defconfig (gcc-8): 1 warning
    rt305x_defconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning

riscv:
    defconfig (gcc-8): 1 warning
    defconfig+CONFIG_EFI=3Dn (clang-12): 2 warnings
    defconfig+kselftest (gcc-8): 1 warning
    nommu_k210_defconfig (gcc-8): 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (gcc-8): 50 errors, 3 warnings
    allnoconfig (clang-10): 3 warnings
    x86_64_defconfig+kselftest (gcc-8): 1 warning
    x86_64_defconfig+x86-chromebook+kselftest (gcc-8): 1 warning

Errors summary:

    2    include/linux/stddef.h:8:14: error: positional initialization of f=
ield in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_init=E2=
=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:62:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:62:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:62:31: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:62:31: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:61:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:61:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:61:30: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:61:30: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:60:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:60:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:60:19: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:60:19: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:59:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:59:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:58:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:58:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:58:26: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:58:26: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:57:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:57:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:57:32: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:57:32: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:56:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:56:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:56:30: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:56:30: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:55:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:55:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:55:30: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:55:30: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:54:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:54:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:54:34: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:54:34: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:53:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:53:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:53:30: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:53:30: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:52:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:52:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:52:28: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:52:28: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:51:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:51:4: error: invalid initialize=
r
    1    drivers/gpu/drm/i915/i915_module.c:51:29: error: positional initia=
lization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98design=
ated_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:51:29: error: initialization of=
 =E2=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98vo=
id (*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    1    drivers/gpu/drm/i915/i915_module.c:50:4: error: positional initial=
ization of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designa=
ted_init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    1    drivers/gpu/drm/i915/i915_module.c:50:4: error: invalid initialize=
r
    1    ERROR: modpost: "topology_set_thermal_pressure" [drivers/cpufreq/q=
com-cpufreq-hw.ko] undefined!
    1    ERROR: modpost: "cpu_scale" [drivers/cpufreq/qcom-cpufreq-hw.ko] u=
ndefined!
    1    ERROR: modpost: "__mulodi4" [drivers/block/nbd.ko] undefined!
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1876=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1869=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field

Warnings summary:

    107  kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_defau=
lt_memory=E2=80=99 defined but not used [-Wunused-variable]
    22   1 warning generated.
    10   clang: warning: argument unused during compilation: '-march=3Darmv=
7-a' [-Wunused-command-line-argument]
    10   clang: warning: argument unused during compilation: '-Wa,-march=3D=
armv7-a' [-Wunused-command-line-argument]
    8    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserv=
ed_default_memory' [-Wunused-variable]
    5    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:702:6:=
 warning: variable 'ret' is used uninitialized whenever 'if' condition is f=
alse [-Wsometimes-uninitialized]
    5    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:683:9:=
 note: initialize the variable 'ret' to silence this warning
    4    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:262:7: war=
ning: variable 'err' is used uninitialized whenever switch case is taken [-=
Wsometimes-uninitialized]
    4    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:7: war=
ning: variable 'err' is used uninitialized whenever 'if' condition is false=
 [-Wsometimes-uninitialized]
    4    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:247:9: not=
e: initialize the variable 'err' to silence this warning
    4    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:11: wa=
rning: variable 'err' is used uninitialized whenever 'if' condition is fals=
e [-Wsometimes-uninitialized]
    4    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:140:9: not=
e: initialize the variable 'err' to silence this warning
    4    3 warnings generated.
    4    2 warnings generated.
    2    lib/zstd/compress.o: warning: objtool: ZSTD_compress_usingCDict()+=
0x1d8: unsupported stack register modification
    2    kernel/trace/trace_osnoise.c:1515:8: warning: =E2=80=98main=E2=80=
=99 is usually a function [-Wmain]
    2    fs/ksmbd/smb2pdu.c:5640:6: warning: variable 'user_ns' is used uni=
nitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
    2    fs/ksmbd/smb2pdu.c:5629:32: note: initialize the variable 'user_ns=
' to silence this warning
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210=
-ahub.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210=
-admaif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra186=
-dspk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra-au=
dio-graph-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/sunxi/sun4i-spdif.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/sh/rcar/snd-soc-rcar.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockc=
hip-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockc=
hip-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockc=
hip-pcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockc=
hip-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rk339=
9-gru-sound.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-sm8250.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-sdm845.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-qcom-comm=
on.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-pla=
tform.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-cpu=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-apq=
8016.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-apq8096.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-apq8016-s=
bc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6routing.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6dsp-commo=
n.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6core.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6asm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe-dai.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-t9=
015.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-gx=
-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-g1=
2a-tohdmitx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-g1=
2a-toacodec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-co=
dec-glue.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ca=
rd-utils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-toddr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-tdmout.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-tdmin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-tdm-interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-tdm-formatter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-spdifout.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-spdifin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-pdm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-fifo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ai=
u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-simple=
-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-simple=
-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-spdif.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmix=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-ssi.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-spdif.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-sai.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-esai.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-audmix=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-asrc.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/imx-pcm-dma.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wsa881x=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8994.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8962.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8904.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm-hubs=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wcd934x=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wcd-mbh=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-tas571x=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-spdif-t=
x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-simple-=
mux.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-simple-=
amplifier.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-sgtl500=
0.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5663.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5659.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-pcm3168=
a-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-msm8916=
-digital.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-msm8916=
-analog.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-max9892=
7.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-max9835=
7a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-lpass-w=
sa-macro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7134.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-dmic.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-da7219.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-cros-ec=
-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-ak4613.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/bcm/snd-soc-bcm2835-i2=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-tegra.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-codec-hdmi=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/hda/snd-hda-core.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/wireless/cfg80211.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_taprio.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/cls_flower.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/cls_basic.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/act_mirred.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/act_gate.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/act_gact.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/rfkill/rfkill.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr-tun.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/qrtr/ns.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/nfc/nci/nci.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_tcpudp.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_nat.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_conntrack.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_addrtype.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_LOG.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/x_tables.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_nat.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/mac80211/mac80211.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/sit.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_reject_ipv=
6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_mang=
le.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_filt=
er.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6_tables.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/ipv6.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/tunnel4.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_reject_ipv=
4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_nat.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_mangl=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_filte=
r.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/ipt_REJECT.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/ip_tables.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/ip_tunnel.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot_8021q.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/dsa/dsa_core.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/can/can.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/can/can-raw.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/can/can-gw.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/bridge/bridge.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/hidp/hidp.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/8021q/8021q.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/802/stp.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/802/p8022.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/802/garp.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/raid6/raid6_pq.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/libcrc32c.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libsm4.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libcurve25519-generic=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libarc4.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crc-ccitt.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/fs/nfs/blocklayout/blocklayoutdr=
iver.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/fs/fuse/fuse.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/fs/fuse/cuse.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/fs/btrfs/btrfs.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sunxi_wdt.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/qcom-wdt.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/meson_wdt.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/meson_gxbb_wdt.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/lp855x_b=
l.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/typec.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tipd/tps6598x.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/tcpm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/tcpci.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/fusb302.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/hd3ss3220.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/usbserial.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/usb_wwan.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/option.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/ftdi_sio.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/cp210x.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/renesas_usbhs/renesa=
s_usbhs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/host/xhci-pci.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/host/xhci-pci-renesa=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/udc/tegra-xud=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/udc/renesas_u=
sb3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/libcomposite.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_serial.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_ncm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_mass_storage.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_fs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_eem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_ecm_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_acm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/u_se=
rial.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/u_et=
her.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/class/cdc-acm.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/tegra/tegra-soct=
herm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/tegra/tegra-bpmp=
-thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/rockchip_thermal=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/qoriq_thermal.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/qcom/qcom-spmi-t=
emp-alarm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/imx_sc_thermal.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/imx8mm_thermal.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/broadcom/brcmstb=
_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/staging/media/hantro/han=
tro-vpu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spidev.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-sh-msiof.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-rpc-if.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-qcom-qspi.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-meson-spifc.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-meson-spicc.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-imx.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-geni-qcom.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-dw.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/rmtfs_mem.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/qmi_helpers.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/pdr_interface.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/apr.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/mediatek/mtk-devapc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/amlogic/meson-canvas=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slimbus.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ctrl.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/ufs/ufs_qcom.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/raid_class.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/mpt3sas/mpt3sas.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-snvs.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rx8581.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rv8803.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rv3028.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rk808.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pm8xxx.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pcf85363.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pcf2127.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-meson-vrtc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-fsl-ftm-alarm.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rpmsg/qcom_glink_smem.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-raspberrypi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-qcom-pdc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-meson-audio-=
arb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-berlin.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_sysmon.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5_pas=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_common.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/vctrl-regulato=
r.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-visconti.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-sl28cpld.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-rcar.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-mtk-disp.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-meson.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-bcm2835.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/sbs-battery=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/max17042_ba=
ttery.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/bq25980_cha=
rger.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/bq25890_cha=
rger.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_=
chardev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchi=
p-pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchi=
p-inno-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchi=
p-inno-dsidphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/renesas/phy-rcar-gen=
3-usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/qualcomm/phy-qcom-qm=
p.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-mip=
i-dsi-drv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/freescale/phy-fsl-im=
x8-mipi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/allwinner/phy-sun6i-=
mipi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/perf/thunderx2_pmu.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/perf/fsl_imx8_ddr_perf.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/perf/arm_smmuv3_pmu.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/pcie-brcm=
stb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/dwc/pcie-=
tegra194.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/nvmem/nvmem-rmem.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/nvme/host/nvme.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/nvme/host/nvme-core.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/nfc/s3fwrn5/s3fwrn5_i2c.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ti/wl18xx/w=
l18xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/marvell/mwi=
fiex/mwifiex_pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/marvell/mwi=
fiex/mwifiex.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/broadcom/br=
cm80211/brcmutil/brcmutil.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/broadcom/br=
cm80211/brcmfmac/brcmfmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/=
ath10k_pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/=
ath10k_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/veth.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/zaurus.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/usbnet.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/sr9800.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/smsc95xx.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/r8152.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/plusb.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/pegasus.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/net1080.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/mcs7830.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/lan78xx.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/dm9601.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_ncm.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_ether.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/tap.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/smsc.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/microchip.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/meson-gxl.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/marvell10g.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/marvell.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/broadcom.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm-phy-lib.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/ax88796b.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/pcs/pcs_xpcs.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio/mdio-bcm-unimac=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/macvtap.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/macvlan.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ipa/ipa.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/stmmac-platform.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-visconti.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-sun8i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-qcom-ethqos.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-meson8b.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/qualcomm/rm=
net/rmnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/qualcomm/em=
ac/qcom-emac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mscc/mscc_o=
celot_switch_lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/ml=
x5/core/mlx5_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/ml=
x4/mlx4_en.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/broadcom/ge=
net/genet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/broadcom/bn=
x2x/bnx2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/atheros/atl=
1c/atl1c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/flexcan.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/dev/can-dev.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/misc/uacce/uacce.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/misc/pci_endpoint_test.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at25.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/wm8994.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/memory/renesas-rpc-if.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/videodev=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-h26=
4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-fwn=
ode.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-dv-=
timings.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/usb/uvc/uvcvideo.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/xc5000.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda8290.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda827x.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/mc44s803.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/sunxi-cir.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/rc-core.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/meson-ir.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-zx-i=
rdec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-xbox=
-dvd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-xbox=
-360.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-wete=
k-play2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-wete=
k-hub.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vide=
ostrong-kii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vide=
omate-tv-pvr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vide=
omate-s350.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vide=
omate-m1f.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vega=
-s9x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-twin=
han-dtv-cab-ci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-trek=
stor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tota=
l-media-in-hand.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tota=
l-media-in-hand-02.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tivo=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tevi=
i-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terr=
atec-slim.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terr=
atec-slim-2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terr=
atec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terr=
atec-cinergy-s2-hd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terr=
atec-cinergy-c-pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tech=
nisat-usb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tech=
nisat-ts35.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tbs-=
nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tani=
x-tx5max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tani=
x-tx3mini.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-su30=
00.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-stre=
amzap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-snap=
stream-firefly.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-redd=
o.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-real=
-audio-220-32-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-rc6-=
mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pv95=
1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-purp=
letv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-prot=
eus-2309.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-powe=
rcolor-real-angel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixe=
lview.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixe=
lview-new.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixe=
lview-002t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinn=
acle-grey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinn=
acle-color.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pine=
64.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pctv=
-sedna.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-odro=
id.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-npgt=
ech.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-norw=
ood.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-nec-=
terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-nebu=
la.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-=
tvanywhere.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-=
tvanywhere-plus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-=
digivox-iii.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-=
digivox-ii.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-mini=
x-neo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medi=
on-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medi=
on-x10-or2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medi=
on-x10-digitainer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-meco=
ol-kiii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-meco=
ol-kii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-manl=
i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-lead=
tek-y04g0051.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kwor=
ld-plus-tv-analog.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kwor=
ld-pc150u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kwor=
ld-315u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kham=
sin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-khad=
as.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it91=
3x-v1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon=
-rsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon=
-pad.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon=
-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hisi=
-tv-demo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hisi=
-poplar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-haup=
pauge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-gotv=
iew7135.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-gadm=
ei-rm008z.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-fusi=
onhdtv-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flyv=
ideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-eztv=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-evga=
-indtube.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-enco=
re-enltv2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-enco=
re-enltv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-enco=
re-enltv-fm53.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-em-t=
erratec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvic=
o-portable.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvic=
o-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dntv=
-live-dvbt-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dntv=
-live-dvb-t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dm11=
05-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-digi=
talnow-tinytwin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0=
700-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-delo=
ck-61959.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ct-9=
0405.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-cine=
rgy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-cine=
rgy-1400.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-beho=
ld-columbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-beel=
ink-gs1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
tv-303.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-m733a-rm-k6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-m135a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-dvbt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-cardbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-a16d.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ati-=
x10.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ati-=
tv-wonder-hd-600.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-asus=
-ps3-100.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-asus=
-pc39.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-astr=
ometa-t2hybrid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-alin=
k-dtu-m.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/vsp1/vsp1=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/sunxi/sun=
6i-csi/sun6i-csi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-jpeg/=
s5p-jpeg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar_fdp1=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar_drif=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-vin/=
rcar-vin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-vin/=
rcar-csi2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-fcp.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venu=
s/venus-dec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/cams=
s/qcom-camss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/exynos-gs=
c/exynos-gsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ir-kbd-i2c.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/imx219.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/v=
ideobuf2-vmalloc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/v=
ideobuf2-v4l2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/v=
ideobuf2-memops.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/v=
ideobuf2-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/cec/core/cec.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/md-mod.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-zero.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-log.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/mailbox/bcm-flexrm-mailb=
ox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/leds/leds-pca9532.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/leds/leds-lm3692x.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-s=
m8350.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-s=
m8250.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-s=
m8150.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-m=
sm8916.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/icc-os=
m-l3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/imx/imx8mq-=
interconnect.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/imx/imx-int=
erconnect.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/goodix=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/atmel_=
mxt_ts.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/misc/pwm-vibra.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/misc/pm8xxx-vibrat=
or.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/snvs_pwrk=
ey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/imx_sc_ke=
y.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/adc-keys.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn=
_spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn=
_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/vcnl4000.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/isl29018.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_ls=
m6dsx_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_ls=
m6dsx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st=
_sensors_spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st=
_sensors_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st=
_sensors.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/cros_ec_senso=
rs/cros_ec_sensors_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/cros_ec_senso=
rs/cros_ec_sensors.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/buffer/kfifo_buf.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/buffer/industrialio-=
triggered-buffer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/rockchip_saradc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-vadc-common=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-spmi-vadc.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-spmi-adc5.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/max9611.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-qcom-geni=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-qcom-cci.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-gpio.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/pwm-fan.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/ina3221.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid-acpi=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/vc4/vc4.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/tegra/tegra-drm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i_tcon=
_top.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i-mixe=
r.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i-drm-=
hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun6i_mipi=
_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun6i_drc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i_tv.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-tcon=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-drm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-drm-=
hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-back=
end.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/scheduler/gpu-sc=
hed.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rockchip/rockchi=
pdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_lvd=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_dw_=
hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_cmm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/pl111/pl111_drm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-trul=
y-nt35597.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-sitr=
onix-st7703.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-simp=
le.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-rayd=
ium-rm67191.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-mant=
ix-mlaf057we51.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-lvds=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-boe-=
tv101wum-nl6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/nouveau/nouveau.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mxsfb/mxsfb.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/msm/msm.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/meson_dw_h=
dmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/meson-drm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediate=
k-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/lima/lima.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/imx/dcss/imx-dcs=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/tda998x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/ch7006.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/kirin/=
kirin-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/hibmc/=
hibmc-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/exynos/exynosdrm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/etnaviv/etnaviv.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_vram_helper.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_kms_helper.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_dp_aux_bus.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/ti-sn65ds=
i86.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/thc63lvd1=
024.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/=
dw-mipi-dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/=
dw-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/=
dw-hdmi-i2s-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/=
dw-hdmi-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/=
dw-hdmi-ahb-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/simple-br=
idge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/sii902x.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/parade-ps=
8640.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/nwl-dsi.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-l=
t9611uxc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/display-c=
onnector.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/analogix/=
analogix_dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/arm/mali-dp.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-wcd934x.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-regmap.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-bd9571mwv.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-altera.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss-serial.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss-mtk.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/stratix10-soc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/altera-freeze-bridg=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/firmware/stratix10-rsu.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/extcon/extcon-ptn5150.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/edac/layerscape_edac_mod=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/dma/tegra210-adma.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/dma/sun6i-dma.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/dma/sh/usb-dmac.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/imx-bus.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/qcom-rng.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/trng/hi=
si-trng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/sec2/hi=
si_sec2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hisi_qm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/error.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/dpaa2_caam.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caamhash_des=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caamalg_desc=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/amlogic/amlogic-g=
xl-crypto.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/allwinner/sun8i-c=
e/sun8i-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/sun50i-cpufreq-n=
vmem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/raspberrypi-cpuf=
req.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/imx-cpufreq-dt.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cpufreq_powersav=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cpufreq_conserva=
tive.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cppc_cpufreq.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/lpass-gfm-sm825=
0.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/camcc-sdm845.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/clk-phase.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/axg-audio.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_si.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_msghandle=
r.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_devintf.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/xgene-rng=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/rng-core.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/optee-rng=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/omap-rng.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/mtk-rng.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/meson-rng=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/iproc-rng=
200.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/hisi-rng.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/exynos-tr=
ng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/cavium-rn=
g.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/cavium-rn=
g-vf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/bcm2835-r=
ng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/arm_smccc=
_trng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bus/tegra-aconnect.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btusb.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btrtl.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btqca.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btintel.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btbcm.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/block/nbd.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/base/regmap/regmap-slimb=
us.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/base/regmap/regmap-sdw.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/xxhash_generic.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/xts.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/xor.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/sha3_generic.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/md5.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/ghash-generic.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/gcm.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/ecb.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/des_generic.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/curve25519-generic.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/ctr.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/crypto_engine.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/cmac.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/ccm.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/blake2b_generic.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/authenc.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/af_alg.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/arch/arm64/lib/xor-neon.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/fsl/snd-soc-imx-sgtl5000.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-spdif-rx.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-rt5645.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-rt5514.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-pcm3168a.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-lpass-va-macro.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-hdmi-codec.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/pci/hda/snd-hda-codec.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/net/sched/sch_cbs.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/net/qrtr/qrtr-smd.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-=
rc6-next-20210819/kernel/net/qrtr/qrtr.ko
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/net/netfilter/xt_MASQUERADE.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/net/can/can-bcm.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/net/802/psnap.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/net/802/mrp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-ne=
xt-20210819/kernel/net/802/psnap.ko
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/fs/overlayfs/overlay.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/watchdog/imx_sc_wdt.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/usb/gadget/function/usb_f_rndis.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/usb/gadget/function/usb_f_ecm.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/thermal/broadcom/bcm2835_thermal.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/thermal/broadcom/bcm2711_thermal.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/spi/spi-bcm2835aux.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0x  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0=
-rc6-next-20210819/kernel/drivers/spi/spi-dw-mmio.ko
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/soc/qcom/mdt_loader.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/remoteproc/qcom_pil_info.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/pwm/pwm-tegra.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/pwm/pwm-sun4i.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/pwm/pwm-mediatek.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/=
5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-meson.ko
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/power/reset/qcom-pon.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/phy/tegra/phy-tegra194-p2u.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/phy/qualcomm/phy-qcom-qusb2.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/pci/controller/dwc/pci-meson.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/nfc/s3fwrn5/s3fwrn5.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/wireless/ti/wlcore/wlcore_sdio.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/wireless/ti/wlcore/wlcore.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/usb/smsc75xx.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/usb/ax88179_178a.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/phy/bcm54140.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/mdio/mdio-mux-meson-g12a.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/ethernet/mellanox/mlx4/mlx4_core.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/net/can/rcar/rcar_can.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/mfd/wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/mfd/exynos-lpass.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xaarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at24.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/v4l2-core/v4l2-mem2mem.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/tuners/xc4000.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/tuners/tuner-xc2028.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/rc/keymaps/rc-twinhan1027.koaarch64-linux-g=
nu-strip: : unsupported GNU_PROPERTY_TYPE (warning: 5/tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keyma=
ps/rc-tt-1500.ko) type: 0x: unsupported GNU_PROPERTY_TYPE (c00000005) type:=
 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview-mk12.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-strip: c0000000warning: /=
tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/d=
rivers/media/rc/keymaps/rc-pinnacle-pctv-hd.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/rc/keymaps/rc-iodata-bctv7e.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/rc/keymaps/rc-digittrade.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/rc/keymaps/rc-d680-dmb.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/rc/keymaps/rc-budget-ci-old.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/platform/qcom/venus/venus-core.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/media/mc/mc.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/md/dm-mirror.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/interconnect/qcom/icc-smd-rpm.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/iio/pressure/cros_ec_baro.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/hid/i2c-hid/i2c-hid-of.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip: warning: /tmp/kci/linu=
x/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon=
/ina2xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/gpu/drm/ttm/ttm.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/gpu/drm/panfrost/panfrost.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/gpu/drm/i2c/sil164.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/gpu/drm/bridge/lontium-lt9611.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/gpio/gpio-sl28cpld.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/fpga/of-fpga-region.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/fpga/fpga-bridge.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/devfreq/imx8m-ddrc.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/crypto/ccree/ccree.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/crypto/caam/caam.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/clk/meson/sclk-div.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/clk/clk-bd718x7.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/bluetooth/hci_uart.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/crypto/sm4_generic.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/crypto/ecc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    warning:   STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14=
.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6core.ko
    1    warning:   INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14=
.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videobuf2-dma-co=
ntig.ko
    1    kernel/trace/trace_events_hist.c:4635:13: warning: stack frame siz=
e of 1332 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    initialize the variable 'err' to silence this warning
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 1804 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/net/ethernet/8390/ne.c:909:20: warning: =E2=80=98ne_add_de=
vices=E2=80=99 defined but not used [-Wunused-function]
    1    drivers/gpu/drm/i915/gt/selftest_hangcheck.c:580:62: warning: vari=
able 'err' is uninitialized when used here [-Wuninitialized]
    1    drivers/gpu/drm/i915/gt/selftest_hangcheck.c:465:62: warning: vari=
able 'err' is uninitialized when used here [-Wuninitialized]
    1    drivers/gpu/drm/i915/gt/selftest_hangcheck.c:453:10: note: initial=
ize the variable 'err' to silence this warning
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:997:6: warning: stack frame size of 1196 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_=
calc_31.c:939:13: warning: stack frame size of 1308 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_=
calc_30.c:981:13: warning: stack frame size of 1036 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3397:6: warning: stack frame size of 1468 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1466:13: warning: stack frame size of 1132 bytes in function 'DISPCL=
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
a_20.c:3286:6: warning: stack frame size of 1404 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1180 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:452:13:=
 warning: stack frame size of 1580 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    cc1: some warnings being treated as errors
    1    arch/x86/lib/memset_64.o: warning: objtool: memset_erms(): can't f=
ind starting instruction
    1    arch/x86/lib/memcpy_64.o: warning: objtool: memcpy_erms(): can't f=
ind starting instruction
    1    arch/x86/entry/entry_64.o: warning: objtool: asm_load_gs_index(): =
can't find starting instruction
    1    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu=
_ev_hw_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    arch/arc/include/asm/perf_event.h:126:27: warning: =E2=80=98arc_pm=
u_cache_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/sound/soc/sunxi/sun4i-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/soundwire/soundwire-bus.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/media/common/videobuf2/videobuf2-dma-contig.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning=
:   STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2021=
0819/kernel/drivers/gpu/drm/tegra/tegra-drm.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210=
-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210=
-dmic.ko: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: warning:=
 /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel=
/sound/soc/tegra/snd-soc-tegra210-i2s.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210=
-dmic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra-pc=
m.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/sunxi/sun4i-i2s.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6asm-dai.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe-clock=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6adm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-ax=
g-frddr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-audio-=
graph-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-sgtl50=
00.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmux=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmux=
.ko: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_module=
s_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-au=
dio-graph-card.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-micfil=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-micfil=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  INSTALL /tmp/kci/linux/bui=
ld/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-=
soc-imx-audmux.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-easrc.=
ko: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/k=
ci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/=
soc/fsl/snd-soc-fsl-asoc-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-easrc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-asoc-c=
ard.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8960.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8960.=
ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2021=
0819/kernel/sound/soc/fsl/snd-soc-fsl-asrc.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5645.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5514.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5514-=
spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rl6231.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-pcm3168=
a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-lpass-v=
a-macro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-hdmi-co=
dec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-gtm601.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7241.=
ko: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: 5) type: 0xwarn=
ing: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/ke=
rnel/sound/soc/codecs/snd-soc-gtm601.koc0000000: unsupported GNU_PROPERTY_T=
YPE (
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7241.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-codec.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_mqprio.ko: unsuppo=
rted GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/bu=
ild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_etf=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_mqprio.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_ingress.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip:
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_ingress.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_etf.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_cbs.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr-smd.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/nfc/nfc.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_MASQUERADE.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_CHECKSUM.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_CHECKSUM.ko: un=
supported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/lib/=
modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_MASQUERADE.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_log_syslog.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/=
build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/n=
f_conntrack.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_log_syslog.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_conntrack.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  INSTALL /tmp/kci/linux/b=
uild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/x_=
tables.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_conntrack.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/llc/llc.ko: unsupported GNU_=
PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modu=
les_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_defr=
ag_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/llc/llc.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_defrag_ipv=
6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_nat.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6t_REJECT.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6t_REJECT.k=
o: unsupported GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_/=
lib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_nat=
.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_defrag_ipv=
4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_defrag_ipv=
4.ko: unsupported GNU_PROPERTY_TYPE (5  INSTALL /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6_tabl=
es.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot.ko  INSTALL /=
tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/n=
et/ipv4/netfilter/iptable_filter.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/can/can-bcm.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/bluetooth.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/buil=
d/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/can/can.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/bluetooth.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/802/psnap.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/802/mrp.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/zstd/zstd_compress.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libsha256.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libdes.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip: warning: /=
tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/l=
ib/crypto/libsha256.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libdes.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libchacha.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libchacha.ko  STRIP  =
 /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel=
/lib/crypto/libsha256.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/fs/overlayfs/overlay.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sl28cpld_wdt.ko=
: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: ) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sl28cpld_wdt.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/imx_sc_wdt.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/pwm_bl.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/pwm_bl.k=
o  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210=
819/kernel/drivers/watchdog/sl28cpld_wdt.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_rndis.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_obex.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_obex.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_m=
odules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/func=
tion/usb_f_rndis.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_=
f_ecm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/broadcom/bcm2835=
_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-dw-mmio.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bitbang.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip: warn=
ing: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/ke=
rnel/drivers/spi/spi-dw-mmio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bitbang.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bcm2835aux.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bcm2835.ko: unsu=
pported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux=
/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soundw=
ire/soundwire-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bcm2835.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soundwire/soundwire-qcom=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soundwire/soundwire-bus.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/socinfo.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/mdt_loader.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ngd-ct=
rl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ngd-ct=
rl.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/apr.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-m41t80.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-imx-sc.ko: unsup=
ported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: 5) type: 0xwarning: c000=
0000/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/ker=
nel/drivers/rtc/rtc-m41t80.ko: unsupported GNU_PROPERTY_TYPE (
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-imx-sc.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-hym8563.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-ds1307.ko: unsup=
ported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/=
build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc=
-hym8563.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-ds1307.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5_mss=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_pil_info=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/tps65132-regul=
ator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/tps65132-regul=
ator.ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next=
-20210819/kernel/drivers/remoteproc/qcom_q6v5_pas.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-tegra.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-sun4i.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-mediatek.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-imx27.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-cros-ec.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/power/reset/qcom-pon.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_=
typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_=
typec.ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/drivers/power/supply/sbs-battery.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pinctrl/qcom/pinctrl-lpa=
ss-lpi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pinctrl/qcom/pinctrl-lpa=
ss-lpi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  INSTALL /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/=
pwm-bcm2835.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/tegra/phy-tegra194-p=
2u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/qualcomm/phy-qcom-qu=
sb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-hdm=
i-drv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  INSTALL /tmp/=
kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drive=
rs/phy/qualcomm/phy-qcom-qmp.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-hdm=
i-drv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/endpoint/functions/p=
ci-epf-test.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/pcie-rock=
chip-host.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/dwc/pci-m=
eson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/nvmem/nvmem_meson_efuse.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/nfc/s3fwrn5/s3fwrn5.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ti/wlcore/w=
lcore_sdio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/=
ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/=
ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  INSTALL /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/net/wireless/ti/wlcore/wlcore_sdio.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/smsc75xx.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/rtl8150.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/rtl8150.ko: unsu=
pported GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_/lib/mod=
ules/5.14.0-rc6-next-20210819/kernel/drivers/net/veth.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_subset.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/b=
uild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/=
mcs7830.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_subset.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/ax88179_178a.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/asix.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip:
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/asix.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm7xxx.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm7xxx.ko: unsu=
pported GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_/lib/mod=
ules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/meson-gxl.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm54140.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio/mdio-mux-meson-=
g12a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/stmmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-sunxi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  STRIP   /tmp/k=
ci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-sun8i.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-ipq806x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stm=
mac/dwmac-altr-socfpga.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/ml=
x4/mlx4_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/dsa/ocelot/mscc_feli=
x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/rcar/rcar_canfd.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/rcar/rcar_can.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at24.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/wcd934x.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/exynos-lpass.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-mem=
2mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-strip:=
 c0000000warning:
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-asy=
nc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/xc4000.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tuner-xc202=
8.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda9887.koa=
arch64-linux-gnu-strip: : unsupported GNU_PROPERTY_TYPE (warning: 5) type: =
0x/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/media/tuners/tuner-simple.koc0000000: unsupported GNU_PROPERTY_TY=
PE (5
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda9887.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda18271.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/mt20xx.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-x96m=
ax.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winf=
ast.koaarch64-linux-gnu-strip: : unsupported GNU_PROPERTY_TYPE (warning: /t=
mp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dr=
ivers/media/rc/keymaps/rc-x96max.ko5: unsupported GNU_PROPERTY_TYPE () type=
: 0x5) type: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winf=
ast.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winf=
ast-usbii-deluxe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  ST=
RIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/k=
ernel/drivers/media/rc/keymaps/rc-xbox-dvd.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winf=
ast-usbii-deluxe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-twin=
han1027.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tt-1=
500.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixe=
lview-mk12.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinn=
acle-pctv-hd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-lme2=
510.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-lme2=
510.ko: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_mod=
ules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/=
rc-manli.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kaio=
my.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it91=
3x-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ioda=
ta-bctv7e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-geni=
us-tvgo-a11mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-geek=
box.ko: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: 5warning: )=
 type: 0x/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2021081=
9/kernel/drivers/media/rc/keymaps/rc-genius-tvgo-a11mce.koc0000000: unsuppo=
rted GNU_PROPERTY_TYPE (
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-geek=
box.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flyd=
vb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flyd=
vb.ko: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modu=
les_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/r=
c-fusionhdtv-mce.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvbs=
ky.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc=
-encore-enltv2.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dtt2=
00u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-digi=
ttrade.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0=
700-rc5.koaarch64-linux-gnu-strip: : unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0=
700-rc5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-d680=
-dmb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-budg=
et-ci-old.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-beho=
ld.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-azur=
ewave-ad-tu700.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-azur=
ewave-ad-tu700.ko  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.=
0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-budget-ci-old.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-aver=
media-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/bu=
ild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/=
keymaps/rc-beelink-gs1.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-apac=
-viewcomp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-anys=
ee.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-anys=
ee.ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2=
0210819/kernel/drivers/media/rc/keymaps/rc-astrometa-t2hybrid.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-adst=
ech-dvb-t-pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-mfc/s=
5p-mfc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-mfc/s=
5p-mfc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-stri=
p: warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2021=
0819/kernel/drivers/media/rc/keymaps/rc-adstech-dvb-t-pci.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venu=
s/venus-enc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venu=
s/venus-enc.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/bui=
ld/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/plat=
form/qcom/venus/venus-core.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venu=
s/venus-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/mc/mc.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ov5645.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/dvb-core/dvb-core.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/v=
ideobuf2-dma-sg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/v=
ideobuf2-dma-contig.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-region-hash.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-mod.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-mirror.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/icc-sm=
d-rpm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/edt-ft=
5x06.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/edt-ft=
5x06.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  STRIP   /tmp/kci/linux=
/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/=
touchscreen/goodix.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/pressure/mpl3115.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/pressure/cros_ec_bar=
o.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/cros_ec_light_=
prox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_ls=
m6dsx_spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-bcm2835.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/sl28cpld-hwmon.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/raspberrypi-hwmon.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/lm90.ko: unsupport=
ed GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: ) type: 0xwarning: c0000000=
/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/=
drivers/hwmon/raspberrypi-hwmon.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/lm90.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/ina2xx.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid-of.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hid/hid-multitouch.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/host1x/host1x.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/ttm/ttm.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-fron=
tend.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-fron=
tend.ko: unsupported GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_mod=
ules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun=
4i_tv.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panfrost/panfros=
t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediate=
k-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediate=
k-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5  INSTALL /tmp/kci/linux/bui=
ld/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/me=
son/meson_dw_hdmi.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/sil164.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/kirin/=
dw_drm_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_ttm_helper.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-l=
t9611.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-l=
t8912b.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/adv7511/a=
dv7511.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/adv7511/a=
dv7511.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_m=
odules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/=
lontium-lt9611.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-sl28cpld.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/of-fpga-region.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/fpga-region.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/fpga-bridge.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/dma/bcm-sba-raid.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/imx8m-ddrc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/governor_userspa=
ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/zip/his=
i_zip.ko: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: warning:=
 /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel=
/drivers/devfreq/governor_userspace.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/zip/his=
i_zip.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hpre/hi=
si_hpre.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hpre/hi=
si_hpre.ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-n=
ext-20210819/kernel/drivers/crypto/hisilicon/sec2/hisi_sec2.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/ccree/ccree.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caam_jr.ko: =
unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: ) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caam_jr.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caam.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/bcm/bcm_crypto_sp=
u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/bcm/bcm_crypto_sp=
u.ko: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/dpaa2_c=
aam.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/sclk-div.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/b=
uild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom=
/lpass-gfm-sm8250.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/bcm/clk-raspberrypi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/hci_uart.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/sm4_generic.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/sm3_generic.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/sha256_generic.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/ecdh_generic.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/ecc.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/dh_generic.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/cbc.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/cbc.ko: unsupported GNU_P=
ROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-=
rc6-next-20210819/kernel/crypto/cmac.ko
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/authencesn.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/crypto/algif_rng.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning:   STRIP   /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-s=
oc-spdif-tx.ko
    1    aarch64-linux-gnu-strip: warning:   STRIP   /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-rcar.k=
o
    1    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-so=
c-meson-axg-tdm-formatter.ko
    1    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-so=
c-meson-aiu.ko
    1    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_nat.k=
o
    1    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/s=
tmicro/stmmac/dwmac-sun8i.ko
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/pci/controller/pcie-rockchip-host.ko/tmp/kci/linux/build/_modules=
_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/endpoint/function=
s/pci-epf-test.ko: unsupported GNU_PROPERTY_TYPE (: unsupported GNU_PROPERT=
Y_TYPE (55) type: 0x) type: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/net/dsa/ocelot/mscc_felix.ko/tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/rcar/rcar_canfd.ko: u=
nsupported GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: 0x=
) type: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/media/tuners/mt20xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/media/rc/keymaps/rc-kaiomy.ko/tmp/kci/linux/build/_modules_/lib/m=
odules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it913x-v=
2.ko: unsupported GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) t=
ype: 0x) type: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/media/dvb-core/dvb-core.ko/tmp/kci/linux/build/_modules_/lib/modu=
les/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ov5645.ko: unsupporte=
d GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: 0x) type: 0=
xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/hwmon/sl28cpld-hwmon.ko/tmp/kci/linux/build/_modules_/lib/modules=
/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-bcm2835.ko: unsuppo=
rted GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (5) type: 0x5) type=
: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/gpu/drm/drm_ttm_helper.ko: unsupported GNU_PROPERTY_TYPE (/tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/gpu/drm/hisilicon/kirin/dw_drm_dsi.ko5: unsupported GNU_PROPERTY_TYPE () t=
ype: 0x5c0000000) type: 0x
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/drivers/clk/bcm/clk-raspberrypi.ko/tmp/kci/linux/build/_modules_/lib/modu=
les/5.14.0-rc6-next-20210819/kernel/drivers/clk/clk-bd718x7.ko: unsupported=
 GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: 0x) type: 0x=
c0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/crypto/sm3_generic.ko: unsupported GNU_PROPERTY_TYPE (/tmp/kci/linux/buil=
d/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/crypto/sha256_gener=
ic.ko5: unsupported GNU_PROPERTY_TYPE () type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/crypto/ecdh_generic.ko/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-r=
c6-next-20210819/kernel/crypto/dh_generic.ko: unsupported GNU_PROPERTY_TYPE=
 (: unsupported GNU_PROPERTY_TYPE (5) type: 0x5c0000000) type: 0x
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning=
: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kerne=
l/crypto/authencesn.ko/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6=
-next-20210819/kernel/crypto/algif_rng.ko: unsupported GNU_PROPERTY_TYPE (:=
 unsupported GNU_PROPERTY_TYPE (55) type: 0x) type: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/s=
oc/qcom/qdsp6/q6asm-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/s=
oc/qcom/qdsp6/q6adm.kowarning: : unsupported GNU_PROPERTY_TYPE (/tmp/kci/li=
nux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/q=
com/qdsp6/q6afe-clocks.ko: unsupported GNU_PROPERTY_TYPE (55) type: 0x) typ=
e: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/s=
oc/codecs/snd-soc-rl6231.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/nfc=
/nfc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/lib/zst=
d/zstd_compress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/thermal/broadcom/bcm2711_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/remoteproc/qcom_q6v5_mss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/pwm/pwm-cros-ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/net/wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/net/ethernet/stmicro/stmmac/stmmac.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/media/tuners/tuner-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/media/rc/keymaps/rc-dvbsky.kowarning: : unsupported GNU_PROPERTY_TYPE (/tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/media/rc/keymaps/rc-dtt200u.ko: unsupported GNU_PROPERTY_TYPE (55) typ=
e: 0x) type: 0xc0000000c0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/media/rc/keymaps/rc-behold.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/md/dm-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/iio/pressure/mpl3115.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/iio/light/cros_ec_light_prox.ko: unsupported GNU_PROPERTY_TYPE (warning: 5=
/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/=
drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.ko) type: 0x: unsupported GNU_PRO=
PERTY_TYPE (c00000005
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/hid/i2c-hid/i2c-hid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/gpu/drm/bridge/lontium-lt8912b.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/fpga/fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/dma/bcm-sba-raid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: aarch64-linux-gn=
u-strip: warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-nex=
t-20210819/kernel/sound/soc/codecs/snd-soc-rt5514-spi.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    : unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning:=
 /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel=
/drivers/media/rc/keymaps/rc-apac-viewcomp.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-12) =E2=80=94 FAIL, 1 error, 40 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "__mulodi4" [drivers/block/nbd.ko] undefined!

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.
    kernel/trace/trace_events_hist.c:4635:13: warning: stack frame size of =
1332 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    fs/ksmbd/smb2pdu.c:5640:6: warning: variable 'user_ns' is used uninitia=
lized whenever 'if' condition is true [-Wsometimes-uninitialized]
    fs/ksmbd/smb2pdu.c:5629:32: note: initialize the variable 'user_ns' to =
silence this warning
    1 warning generated.
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:702:6: warn=
ing: variable 'ret' is used uninitialized whenever 'if' condition is false =
[-Wsometimes-uninitialized]
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:683:9: note=
: initialize the variable 'ret' to silence this warning
    1 warning generated.
    drivers/gpu/drm/i915/gt/selftest_hangcheck.c:465:62: warning: variable =
'err' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/i915/gt/selftest_hangcheck.c:453:10: note: initialize t=
he variable 'err' to silence this warning
    drivers/gpu/drm/i915/gt/selftest_hangcheck.c:580:62: warning: variable =
'err' is uninitialized when used here [-Wuninitialized]
    initialize the variable 'err' to silence this warning
    2 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1804 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:452:13: warn=
ing: stack frame size of 1580 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:11: warning=
: variable 'err' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:140:9: note: in=
itialize the variable 'err' to silence this warning
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:262:7: warning:=
 variable 'err' is used uninitialized whenever switch case is taken [-Wsome=
times-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:7: warning:=
 variable 'err' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:247:9: note: in=
itialize the variable 'err' to silence this warning
    3 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:997:6: warning: stack frame size of 1196 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_=
30.c:981:13: warning: stack frame size of 1036 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_=
31.c:939:13: warning: stack frame size of 1308 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1180 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1466:13: warning: stack frame size of 1132 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1404 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3397:6: warning: stack frame size of 1468 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1164 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1420 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 FAIL, 2 errors, 16 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "topology_set_thermal_pressure" [drivers/cpufreq/qcom-c=
pufreq-hw.ko] undefined!
    ERROR: modpost: "cpu_scale" [drivers/cpufreq/qcom-cpufreq-hw.ko] undefi=
ned!

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.
    fs/ksmbd/smb2pdu.c:5640:6: warning: variable 'user_ns' is used uninitia=
lized whenever 'if' condition is true [-Wsometimes-uninitialized]
    fs/ksmbd/smb2pdu.c:5629:32: note: initialize the variable 'user_ns' to =
silence this warning
    1 warning generated.
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:702:6: warn=
ing: variable 'ret' is used uninitialized whenever 'if' condition is false =
[-Wsometimes-uninitialized]
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:683:9: note=
: initialize the variable 'ret' to silence this warning
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:11: warning=
: variable 'err' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:140:9: note: in=
itialize the variable 'err' to silence this warning
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:262:7: warning:=
 variable 'err' is used uninitialized whenever switch case is taken [-Wsome=
times-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:7: warning:=
 variable 'err' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:247:9: note: in=
itialize the variable 'err' to silence this warning
    3 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 section=
 mismatches

Errors:
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1869=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1876=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]
    kernel/trace/trace_osnoise.c:1515:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 50 errors, 3 warnings, 0 secti=
on mismatches

Errors:
    drivers/gpu/drm/i915/i915_module.c:50:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:50:4: error: invalid initializer
    include/linux/stddef.h:8:14: error: positional initialization of field =
in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_init=E2=80=99=
 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:51:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:51:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:51:29: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:51:29: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:52:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:52:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:52:28: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:52:28: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:53:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:53:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:53:30: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:53:30: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:54:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:54:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:54:34: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:54:34: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:55:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:55:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:55:30: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:55:30: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:56:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:56:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:56:30: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:56:30: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:57:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:57:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:57:32: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:57:32: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:58:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:58:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:58:26: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:58:26: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:59:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:59:4: error: invalid initializer
    include/linux/stddef.h:8:14: error: positional initialization of field =
in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_init=E2=80=99=
 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:60:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:60:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:60:19: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:60:19: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:61:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:61:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:61:30: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:61:30: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]
    drivers/gpu/drm/i915/i915_module.c:62:4: error: positional initializati=
on of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_i=
nit=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:62:4: error: invalid initializer
    drivers/gpu/drm/i915/i915_module.c:62:31: error: positional initializat=
ion of field in =E2=80=98struct=E2=80=99 declared with =E2=80=98designated_=
init=E2=80=99 attribute [-Werror=3Ddesignated-init]
    drivers/gpu/drm/i915/i915_module.c:62:31: error: initialization of =E2=
=80=98int (*)(void)=E2=80=99 from incompatible pointer type =E2=80=98void (=
*)(void)=E2=80=99 [-Werror=3Dincompatible-pointer-types]

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]
    kernel/trace/trace_osnoise.c:1515:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/x86/entry/entry_64.o: warning: objtool: asm_load_gs_index(): can't=
 find starting instruction
    arch/x86/lib/memcpy_64.o: warning: objtool: memcpy_erms(): can't find s=
tarting instruction
    arch/x86/lib/memset_64.o: warning: objtool: memset_erms(): can't find s=
tarting instruction

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
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 836 warnings, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:702:6: warn=
ing: variable 'ret' is used uninitialized whenever 'if' condition is false =
[-Wsometimes-uninitialized]
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:683:9: note=
: initialize the variable 'ret' to silence this warning
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:11: warning=
: variable 'err' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:140:9: note: in=
itialize the variable 'err' to silence this warning
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:262:7: warning:=
 variable 'err' is used uninitialized whenever switch case is taken [-Wsome=
times-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:7: warning:=
 variable 'err' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:247:9: note: in=
itialize the variable 'err' to silence this warning
    3 warnings generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/arch/arm64/lib/xor-neon.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/af_alg.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/cry=
pto/authencesn.ko/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next=
-20210819/kernel/crypto/algif_rng.ko: unsupported GNU_PROPERTY_TYPE (: unsu=
pported GNU_PROPERTY_TYPE (55) type: 0x) type: 0xc0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/authenc.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/blake2b_generic.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/cbc.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ccm.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/crypto_engine.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/cmac.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ctr.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/curve25519-generic.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/dh_generic.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ecb.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/des_generic.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ecc.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/gcm.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ecdh_generic.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ghash-generic.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/md5.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/sha256_generic.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/sha3_generic.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/sm4_generic.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/sm3_generic.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/xts.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/block/nbd.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/xor.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/xxhash_generic.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/base/regmap/regmap-slimbus.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/base/regmap/regmap-sdw.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btbcm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btintel.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btqca.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btrtl.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btusb.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bus/tegra-aconnect.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/arm_smccc_trng=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/bcm2835-rng.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/cavium-rng-vf.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/exynos-trng.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/hci_uart.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/cavium-rng.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/hisi-rng.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/mtk-rng.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/iproc-rng200.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/meson-rng.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/omap-rng.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/rng-core.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/optee-rng.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/xgene-rng.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_msghandler.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_si.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_devintf.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/clk/bcm/clk-raspberrypi.ko/tmp/kci/linux/build/_modules_/lib/modules/5=
.14.0-rc6-next-20210819/kernel/drivers/clk/clk-bd718x7.ko: unsupported GNU_=
PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: 0x) type: 0xc0000=
000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/axg-audio.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/clk-phase.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/clk/meson/sclk-div.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/camcc-sdm845.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/lpass-gfm-sm8250.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cppc_cpufreq.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cpufreq_conservative.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cpufreq_powersave.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/imx-cpufreq-dt.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/sun50i-cpufreq-nvmem.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/allwinner/sun8i-ce/sun=
8i-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/amlogic/amlogic-gxl-cr=
ypto.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/raspberrypi-cpufreq.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/bcm/bcm_crypto_spu.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caam.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caam_jr.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caamalg_desc.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caamhash_desc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/dpaa2_caam.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/error.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hisi_qm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/ccree/ccree.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/sec2/hisi_se=
c2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hpre/hisi_hp=
re.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/trng/hisi-tr=
ng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/zip/hisi_zip=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/qcom-rng.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/imx8m-ddrc.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/governor_userspace.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/imx-bus.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/bcm-sba-raid.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/sh/usb-dmac.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/tegra210-adma.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/sun6i-dma.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/edac/layerscape_edac_mod.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/extcon/extcon-ptn5150.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/fpga-bridge.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/firmware/stratix10-rsu.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/altera-freeze-bridge.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/fpga-region.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/stratix10-soc.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/of-fpga-region.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss-mtk.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-altera.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-bd9571mwv.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss-serial.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-regmap.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/gpio/gpio-sl28cpld.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-wcd934x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/arm/mali-dp.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/analogix/analo=
gix_dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/display-connec=
tor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-lt8912=
b.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/adv7511/adv751=
1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-lt9611=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-lt9611=
uxc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/nwl-dsi.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/parade-ps8640.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/sii902x.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/simple-bridge.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi-ahb-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi-i2s-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-mi=
pi-dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/ti-sn65dsi86.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/thc63lvd1024.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_dp_aux_bus.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_vram_helper.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/etnaviv/etnaviv.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/gpu/drm/drm_ttm_helper.ko: unsupported GNU_PROPERTY_TYPE (/tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/=
drm/hisilicon/kirin/dw_drm_dsi.ko5: unsupported GNU_PROPERTY_TYPE () type: =
0x5c0000000) type: 0x
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/hibmc/hibmc=
-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/kirin/kirin=
-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/exynos/exynosdrm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/ch7006.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_kms_helper.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/sil164.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/tda998x.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/imx/dcss/imx-dcss.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediatek-drm=
-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5  INSTALL /tmp/kci/linux/build/_m=
odules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/m=
eson_dw_hdmi.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/lima/lima.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediatek-drm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/meson-drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/meson_dw_hdmi.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-boe-tv101=
wum-nl6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mxsfb/mxsfb.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-lvds.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-sitronix-=
st7703.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-simple.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-mantix-ml=
af057we51.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-truly-nt3=
5597.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panfrost/panfrost.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/pl111/pl111_drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-raydium-r=
m67191.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_dw_hdmi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_cmm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_lvds.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-drm-hdmi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-backend.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/scheduler/gpu-sched.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/msm/msm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-frontend.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-tcon.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i_tv.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun6i_drc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rockchip/rockchipdrm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i-drm-hdmi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i_tcon_top.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i-mixer.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/gpu/drm/ttm/ttm.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid-acpi.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hid/hid-multitouch.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/host1x/host1x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/tegra/tegra-drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/vc4/vc4.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/ina2xx.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid-of.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/ina3221.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/lm90.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/pwm-fan.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/hwmon/sl28cpld-hwmon.ko/tmp/kci/linux/build/_modules_/lib/modules/5.14=
.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-bcm2835.ko: unsupported =
GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (5) type: 0x5) type: 0xc=
0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-gpio.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/raspberrypi-hwmon.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-qcom-cci.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-qcom-geni.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/max9611.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-spmi-adc5.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-vadc-common.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/buffer/industrialio-trigg=
ered-buffer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-spmi-vadc.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/rockchip_saradc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/buffer/kfifo_buf.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/cros_ec_sensors/cr=
os_ec_sensors.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st_sens=
ors.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/cros_ec_sensors/cr=
os_ec_sensors_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st_sens=
ors_spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st_sens=
ors_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx=
_spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/cros_ec_light_prox.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx=
_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/vcnl4000.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/isl29018.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn_spi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/pressure/cros_ec_baro.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/pressure/mpl3115.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn_i2c.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/adc-keys.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/imx_sc_key.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/misc/pm8xxx-vibrator.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/misc/pwm-vibra.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/edt-ft5x06.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/atmel_mxt_t=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/goodix.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/snvs_pwrkey.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/imx/imx-intercon=
nect.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/imx/imx8mq-inter=
connect.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/interconnect/qcom/icc-smd-rpm.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/icc-osm-l3.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-sm8150=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-msm891=
6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-sm8250=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-sm8350=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/leds/leds-lm3692x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/nouveau/nouveau.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/mailbox/bcm-flexrm-mailbox.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/leds/leds-pca9532.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/md/dm-mirror.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-log.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-region-hash.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-zero.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-mod.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/md-mod.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/cec/core/cec.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-dma-contig.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-memops.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-dma-sg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-v4l2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-vmalloc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/imx219.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ir-kbd-i2c.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/media/dvb-core/dvb-core.ko/tmp/kci/linux/build/_modules_/lib/modules/5=
.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ov5645.ko: unsupported GNU=
_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: 0x) type: 0xc000=
0000c0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/mc/mc.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/exynos-gsc/exy=
nos-gsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venus/ven=
us-dec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-vin/rcar-=
csi2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venus/ven=
us-enc.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_m=
odules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/=
qcom/venus/venus-core.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venus/ven=
us-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-fcp.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/camss/qco=
m-camss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-vin/rcar-=
vin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar_drif.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-jpeg/s5p-j=
peg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/sunxi/sun6i-cs=
i/sun6i-csi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar_fdp1.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-mfc/s5p-mf=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-adstech-d=
vb-t-pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-anysee.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-apac-view=
comp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-alink-dtu=
-m.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/vsp1/vsp1.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-astrometa=
-t2hybrid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-asus-pc39=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-asus-ps3-=
100.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ati-tv-wo=
nder-hd-600.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ati-x10.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-a16d.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-cardbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-dvbt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-m135a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-m733a-rm-k6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avertv-30=
3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-azurewave=
-ad-tu700.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-beelink-g=
s1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-behold-co=
lumbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-behold.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-budget-ci=
-old.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-cinergy-1=
400.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-cinergy.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ct-90405.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-d680-dmb.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0700-n=
ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0700-r=
c5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-delock-61=
959.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-digitalno=
w-tinytwin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-digittrad=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dm1105-ne=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dntv-live=
-dvb-t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dntv-live=
-dvbt-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dtt200u.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-em-terrat=
ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvico-mce=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvico-por=
table.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvbsky.ko=
: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-enco=
re-enltv2.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-encore-en=
ltv-fm53.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-encore-en=
ltv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-encore-en=
ltv2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-evga-indt=
ube.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-eztv.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flydvb.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flyvideo.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-gadmei-rm=
008z.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-geekbox.k=
o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: 5warning: ) type=
: 0x/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/ker=
nel/drivers/media/rc/keymaps/rc-genius-tvgo-a11mce.koc0000000: unsupported =
GNU_PROPERTY_TYPE (
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-fusionhdt=
v-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-gotview71=
35.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hauppauge=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hisi-popl=
ar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hisi-tv-d=
emo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon-mce.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon-rsc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon-pad.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-iodata-bc=
tv7e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it913x-v2=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kaiomy.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-khadas.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-khamsin.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it913x-v1=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kworld-31=
5u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kworld-pl=
us-tv-analog.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kworld-pc=
150u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-leadtek-y=
04g0051.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-lme2510.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-manli.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-mecool-ki=
i-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medion-x1=
0-digitainer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-mecool-ki=
ii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medion-x1=
0-or2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medion-x1=
0.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-minix-neo=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-digiv=
ox-iii.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-digiv=
ox-ii.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-tvany=
where-plus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-nebula.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-tvany=
where.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-nec-terra=
tec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-npgtech.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-norwood.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-odroid.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pine64.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinnacle-=
pctv-hd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinnacle-=
color.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinnacle-=
grey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pctv-sedn=
a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
-002t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
-mk12.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-powercolo=
r-real-angel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
-new.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-proteus-2=
309.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pv951.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-purpletv.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-real-audi=
o-220-32-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-rc6-mce.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-snapstrea=
m-firefly.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-reddo.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-streamzap=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-su3000.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tanix-tx3=
mini.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tanix-tx5=
max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tbs-nec.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-technisat=
-usb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-technisat=
-ts35.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
cinergy-c-pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
cinergy-s2-hd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
slim-2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
slim.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tevii-nec=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-total-med=
ia-in-hand-02.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tivo.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-total-med=
ia-in-hand.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-trekstor.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tt-1500.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vega-s9x.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-twinhan-d=
tv-cab-ci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videomate=
-s350.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videomate=
-m1f.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-twinhan10=
27.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videomate=
-tv-pvr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videostro=
ng-kii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-wetek-pla=
y2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-wetek-hub=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winfast-u=
sbii-deluxe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-x96max.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winfast.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-xbox-360.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-xbox-dvd.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-zx-irdec.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/rc-core.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/sunxi-cir.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/meson-ir.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/mc44s803.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/mt20xx.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda18271.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda827x.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda8290.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda9887.koaarch6=
4-linux-gnu-strip: : unsupported GNU_PROPERTY_TYPE (warning: 5) type: 0x/tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/media/tuners/tuner-simple.koc0000000: unsupported GNU_PROPERTY_TYPE (5
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tuner-xc2028.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/xc4000.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/xc5000.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/usb/uvc/uvcvideo.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-fwnode.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-h264.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-mem2mem.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-strip: c000=
0000warning:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-dv-timin=
gs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/memory/renesas-rpc-if.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/exynos-lpass.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/wcd934x.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/wm8994.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/videodev.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at24.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at25.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/pci_endpoint_test.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/uacce/uacce.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/dev/can-dev.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/flexcan.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/net/dsa/ocelot/mscc_felix.ko/tmp/kci/linux/build/_modules_/lib/modules=
/5.14.0-rc6-next-20210819/kernel/drivers/net/can/rcar/rcar_canfd.ko: unsupp=
orted GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: 0x) typ=
e: 0xc0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/rcar/rcar_can.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/atheros/atl1c/at=
l1c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/broadcom/genet/g=
enet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mscc/mscc_ocelot=
_switch_lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/mlx4/ml=
x4_en.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/ethernet/mellanox/mlx4/mlx4_core.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/qualcomm/emac/qc=
om-emac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/qualcomm/rmnet/r=
mnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-altr-socfpga.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/broadcom/bnx2x/b=
nx2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-ipq806x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-qcom-ethqos.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-meson8b.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-sun8i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-sunxi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-visconti.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/s=
tmmac-platform.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/macvlan.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/s=
tmmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ipa/ipa.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/macvtap.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio/mdio-bcm-unimac.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio/mdio-mux-meson-g12a.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/pcs/pcs_xpcs.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/ax88796b.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm-phy-lib.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm54140.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm7xxx.ko: unsupport=
ed GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/=
5.14.0-rc6-next-20210819/kernel/drivers/net/phy/meson-gxl.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/broadcom.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/marvell10g.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/marvell.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/mlx5/co=
re/mlx5_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/microchip.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/smsc.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/meson-gxl.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/asix.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip:
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/usb/ax88179_178a.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_ether.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/tap.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_ncm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_subset.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/dm9601.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/lan78xx.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/net1080.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/pegasus.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/mcs7830.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/plusb.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/rtl8150.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/r8152.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/smsc75xx.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/sr9800.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/smsc95xx.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/usbnet.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/zaurus.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/veth.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/ath10=
k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/broadcom/brcm802=
11/brcmfmac/brcmfmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/ath10=
k_pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/marvell/mwifiex/=
mwifiex_pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/ath10=
k_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/marvell/mwifiex/=
mwifiex.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/broadcom/brcm802=
11/brcmutil/brcmutil.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ti/wl18xx/wl18xx=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/=
wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/wireless/ti/wlcore/wlcore_sdio.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/nfc/s3fwrn5/s3fwrn5.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nfc/s3fwrn5/s3fwrn5_i2c.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvme/host/nvme-core.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvmem/nvmem-rmem.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvme/host/nvme.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvmem/nvmem_meson_efuse.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/dwc/pci-meson.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/dwc/pcie-tegra=
194.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/pcie-brcmstb.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/endpoint/functions/pci-ep=
f-test.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/perf/arm_smmuv3_pmu.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/pcie-rockchip-=
host.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/perf/fsl_imx8_ddr_perf.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/allwinner/phy-sun6i-mipi-=
dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/freescale/phy-fsl-imx8-mi=
pi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/perf/thunderx2_pmu.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-hdmi-drv=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  INSTALL /tmp/kci/l=
inux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/ph=
y/qualcomm/phy-qcom-qmp.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/qualcomm/phy-qcom-qmp.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-mipi-dsi=
-drv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/phy/qualcomm/phy-qcom-qusb2.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/renesas/phy-rcar-gen3-usb=
3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchip-inn=
o-dsidphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchip-pci=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchip-inn=
o-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/tegra/phy-tegra194-p2u.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pinctrl/qcom/pinctrl-lpass-lp=
i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/reset/qcom-pon.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_typec=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_chard=
ev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/bq25890_charger.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/bq25980_charger.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/max17042_battery=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/sbs-battery.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-bcm2835.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-cros-ec.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-mediatek.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-meson.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-imx27.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-mtk-disp.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-sl28cpld.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-rcar.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-sun4i.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-tegra.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-visconti.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/tps65132-regulator.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/vctrl-regulator.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_pil_info.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_common.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5_mss.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5_pas.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_sysmon.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-berlin.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-meson-audio-arb.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-qcom-pdc.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-raspberrypi.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-ds1307.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rpmsg/qcom_glink_smem.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-fsl-ftm-alarm.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-hym8563.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-imx-sc.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-meson-vrtc.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pcf2127.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-m41t80.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pcf85363.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rk808.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rv3028.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rv8803.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-snvs.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pm8xxx.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rx8581.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/mpt3sas/mpt3sas.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/ufs/ufs_qcom.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ctrl.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/raid_class.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ngd-ctrl.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slimbus.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/amlogic/meson-canvas.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/mediatek/mtk-devapc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/apr.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/pdr_interface.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/soc/qcom/mdt_loader.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/qmi_helpers.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/rmtfs_mem.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/socinfo.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bcm2835aux.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soundwire/soundwire-bus.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bitbang.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soundwire/soundwire-qcom.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-dw-mmio.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-dw.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bcm2835.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-geni-qcom.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-imx.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-meson-spicc.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-rpc-if.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-meson-spifc.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spidev.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-sh-msiof.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/thermal/broadcom/bcm2711_thermal.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/broadcom/brcmstb_ther=
mal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-qcom-qspi.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/broadcom/bcm2835_ther=
mal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/staging/media/hantro/hantro-v=
pu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/imx8mm_thermal.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/imx_sc_thermal.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/qcom/qcom-spmi-temp-a=
larm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/qoriq_thermal.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/rockchip_thermal.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/tegra/tegra-soctherm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/tegra/tegra-bpmp-ther=
mal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/u_ether.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/class/cdc-acm.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_acm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/u_serial.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ecm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ecm=
_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_eem=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_mas=
s_storage.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_fs.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ncm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_rnd=
is.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_obe=
x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ser=
ial.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/libcomposite.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/udc/renesas_usb3.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/udc/tegra-xudc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/host/xhci-pci.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/cp210x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/renesas_usbhs/renesas_usb=
hs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/host/xhci-pci-renesas.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/ftdi_sio.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/option.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/usbserial.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/usb_wwan.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/fusb302.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/tcpm.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/hd3ss3220.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/typec.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tipd/tps6598x.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/tcpci.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/lp855x_bl.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/pwm_bl.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/imx_sc_wdt.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/meson_gxbb_wdt.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sl28cpld_wdt.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/qcom-wdt.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sunxi_wdt.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/meson_wdt.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/fuse/cuse.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/fuse/fuse.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/nfs/blocklayout/blocklayoutdriver.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libarc4.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crc-ccitt.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libcurve25519-generic.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/fs/overlayfs/overlay.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libchacha.ko  STRIP   /tmp=
/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/lib/=
crypto/libsha256.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libdes.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip: warning: /tmp/k=
ci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/lib/cr=
ypto/libsha256.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/libcrc32c.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libsm4.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/raid6/raid6_pq.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/btrfs/btrfs.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/garp.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/zstd/zstd_compress.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/mrp.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/stp.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/psnap.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/8021q/8021q.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/p8022.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/hidp/hidp.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can-bcm.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/bluetooth.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can-raw.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can-gw.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/dsa/dsa_core.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot_8021q.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/ip_tunnel.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/bridge/bridge.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/ip_tables.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/ipt_REJECT.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_filter.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_mangle.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_nat.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/tunnel4.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_defrag_ipv4.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6_tables.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_reject_ipv4.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_filter.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_nat.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_mangle.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_reject_ipv6.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_defrag_ipv6.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6t_REJECT.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/ipv6.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/sit.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/llc/llc.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_conntrack.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_log_syslog.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_nat.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/x_tables.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_LOG.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_CHECKSUM.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/net/netfilter/xt_MASQUERADE.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_addrtype.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_conntrack.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_nat.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_tcpudp.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/mac80211/mac80211.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/nfc/nfc.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/nfc/nci/nci.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/ns.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr-tun.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr-smd.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/rfkill/rfkill.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/act_gate.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/cls_basic.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/act_gact.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/act_mirred.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_etf.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_ingress.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip:
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/net/sched/sch_cbs.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_mqprio.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/cls_flower.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_taprio.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/hda/snd-hda-core.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-codec-hdmi.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-codec.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-tegra.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/bcm/snd-soc-bcm2835-i2s.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-ak4613.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-cros-ec-code=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-da7219.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/wireless/cfg80211.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-dmic.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7134.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7241.ko: u=
nsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: 5) type: 0xwarning: =
/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/=
sound/soc/codecs/snd-soc-gtm601.koc0000000: unsupported GNU_PROPERTY_TYPE (
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-max98357a.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-hdmi-codec.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-lpass-wsa-ma=
cro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-lpass-va-mac=
ro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-max98927.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-msm8916-anal=
og.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-msm8916-digi=
tal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-pcm3168a.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5514-spi.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-pcm3168a-i2c=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rl6231.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5514.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5645.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5659.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-sgtl5000.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5663.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-simple-ampli=
fier.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-simple-mux.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning:   STRIP   /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-sp=
dif-tx.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-spdif-tx.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wcd-mbhc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-tas571x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm-hubs.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wcd934x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8904.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8960.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8962.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8994.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wsa881x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/imx-pcm-dma.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-easrc.ko: u=
nsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/li=
nux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/f=
sl/snd-soc-fsl-asoc-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-esai.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-audmix.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-micfil.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-asrc.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-sai.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-spdif.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-ssi.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmix.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmux.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-sgtl5000.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-spdif.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-audio-graph=
-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-simple-card=
-utils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-simple-card=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-aiu.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-fif=
o.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-frd=
dr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-spd=
ifin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-sou=
nd-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-pdm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-spd=
ifout.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
-formatter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
-interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
out.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tod=
dr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-codec-g=
lue.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
in.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-card-ut=
ils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-g12a-to=
acodec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-g12a-to=
hdmitx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-gx-soun=
d-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-t9015.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6adm.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe-dai.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6asm-dai.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe-clocks.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6asm.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6dsp-common.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6core.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-apq8016-sbc.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6routing.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-apq8096.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-apq8016.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-cpu.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-platform=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-qcom-common.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-sdm845.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-sm8250.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rk3399-gru=
-sound.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-p=
cm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-i=
2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-r=
t5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/sh/rcar/snd-soc-rcar.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/sunxi/sun4i-spdif.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/sunxi/sun4i-i2s.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra-audio-g=
raph-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-s=
pdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra-pcm.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-adma=
if.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-ahub=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra186-dspk=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-dmic=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-i2s.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 1 warning, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 819 warnings, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:702:6: warn=
ing: variable 'ret' is used uninitialized whenever 'if' condition is false =
[-Wsometimes-uninitialized]
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:683:9: note=
: initialize the variable 'ret' to silence this warning
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:11: warning=
: variable 'err' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:140:9: note: in=
itialize the variable 'err' to silence this warning
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:262:7: warning:=
 variable 'err' is used uninitialized whenever switch case is taken [-Wsome=
times-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:7: warning:=
 variable 'err' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:247:9: note: in=
itialize the variable 'err' to silence this warning
    3 warnings generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/arch/arm64/lib/xor-neon.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/af_alg.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/algif_rng.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/authenc.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/authencesn.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/cbc.ko: unsupported GNU_PROPER=
TY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-n=
ext-20210819/kernel/crypto/cmac.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/crypto_engine.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ccm.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/blake2b_generic.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/cmac.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ctr.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/curve25519-generic.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/des_generic.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ecb.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/cry=
pto/ecdh_generic.ko/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-ne=
xt-20210819/kernel/crypto/dh_generic.ko: unsupported GNU_PROPERTY_TYPE (: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0x5c0000000) type: 0x
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/crypto/ecc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/ghash-generic.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/gcm.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/md5.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/sha3_generic.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/cry=
pto/sm3_generic.ko: unsupported GNU_PROPERTY_TYPE (/tmp/kci/linux/build/_mo=
dules_/lib/modules/5.14.0-rc6-next-20210819/kernel/crypto/sha256_generic.ko=
5: unsupported GNU_PROPERTY_TYPE () type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/crypto/sm4_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/xor.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/xts.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/base/regmap/regmap-sdw.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/crypto/xxhash_generic.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/base/regmap/regmap-slimbus.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/block/nbd.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btbcm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btqca.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btrtl.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btintel.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bluetooth/btusb.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/bus/tegra-aconnect.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/arm_smccc_trng=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/bluetooth/hci_uart.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/bcm2835-rng.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/cavium-rng-vf.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/cavium-rng.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/exynos-trng.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/hisi-rng.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/iproc-rng200.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/meson-rng.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/mtk-rng.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/omap-rng.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/rng-core.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/optee-rng.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/hw_random/xgene-rng.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_devintf.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_msghandler.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/char/ipmi/ipmi_si.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/bcm/clk-raspberrypi.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/clk/clk-bd718x7.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/axg-audio.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/clk-phase.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/meson/sclk-div.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/build/=
_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/lpas=
s-gfm-sm8250.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/camcc-sdm845.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/clk/qcom/lpass-gfm-sm8250.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cppc_cpufreq.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cpufreq_powersave.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/cpufreq_conservative.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/imx-cpufreq-dt.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/raspberrypi-cpufreq.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/cpufreq/sun50i-cpufreq-nvmem.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/allwinner/sun8i-ce/sun=
8i-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/amlogic/amlogic-gxl-cr=
ypto.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caamalg_desc.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/bcm/bcm_crypto_spu.ko:=
 unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/dpaa2_caam.k=
o
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/crypto/caam/caam.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caamhash_desc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/dpaa2_caam.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/error.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/caam/caam_jr.ko: unsup=
ported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: ) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/crypto/ccree/ccree.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hpre/hisi_hp=
re.ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2=
0210819/kernel/drivers/crypto/hisilicon/sec2/hisi_sec2.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/hisi_qm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/trng/hisi-tr=
ng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/sec2/hisi_se=
c2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/qcom-rng.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/crypto/hisilicon/zip/hisi_zip=
.ko: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: warning: /tmp=
/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/driv=
ers/devfreq/governor_userspace.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/devfreq/imx-bus.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/dma/=
bcm-sba-raid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/devfreq/imx8m-ddrc.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/sh/usb-dmac.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/tegra210-adma.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/edac/layerscape_edac_mod.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/dma/sun6i-dma.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/firmware/stratix10-rsu.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/extcon/extcon-ptn5150.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/altera-freeze-bridge.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/fpga=
/fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/fpga/fpga-bridge.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/fpga/of-fpga-region.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/fpga/stratix10-soc.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss-serial.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gnss/gnss-mtk.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-altera.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-bd9571mwv.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-regmap.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-sl28cpld.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpio/gpio-wcd934x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/analogix/analo=
gix_dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/adv7511/adv751=
1.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_module=
s_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lonti=
um-lt9611.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/arm/mali-dp.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/=
drm/bridge/lontium-lt8912b.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/gpu/drm/bridge/lontium-lt9611.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/display-connec=
tor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/lontium-lt9611=
uxc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/nwl-dsi.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/parade-ps8640.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/sii902x.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/simple-bridge.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi-ahb-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi-i2s-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-hd=
mi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/synopsys/dw-mi=
pi-dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/thc63lvd1024.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/bridge/ti-sn65dsi86.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_dp_aux_bus.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_ttm_helper.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_vram_helper.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm_kms_helper.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/exynos/exynosdrm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/kirin/dw_dr=
m_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/hibmc/hibmc=
-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/etnaviv/etnaviv.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/hisilicon/kirin/kirin=
-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/ch7006.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/drm.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/gpu/drm/i2c/sil164.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/i2c/tda998x.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediatek-drm=
-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/lima/lima.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/imx/dcss/imx-dcss.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/meson-drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mediatek/mediatek-drm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/meson/meson_dw_hdmi.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/mxsfb/mxsfb.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-boe-tv101=
wum-nl6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-lvds.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-mantix-ml=
af057we51.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-sitronix-=
st7703.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-simple.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-truly-nt3=
5597.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/panel/panel-raydium-r=
m67191.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/gpu/drm/panfrost/panfrost.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/pl111/pl111_drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_cmm.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_dw_hdmi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rcar-du/rcar_lvds.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-backend.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/msm/msm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/scheduler/gpu-sched.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/rockchip/rockchipdrm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-frontend.=
ko: unsupported GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_=
/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i_tv=
.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-drm-hdmi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i-tcon.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun4i_tv.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun6i_drc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i-drm-hdmi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i-mixer.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/sun4i/sun8i_tcon_top.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/ttm/ttm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/vc4/vc4.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning:   S=
TRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/=
kernel/drivers/gpu/drm/tegra/tegra-drm.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hid/i2c-hid/i2c-hid-acpi.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/tegra/tegra-drm.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hid/=
i2c-hid/i2c-hid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/hid/i2c-hid/i2c-hid-of.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000aarch64-linux-gnu-strip: warning: /tmp/kci/linux/bui=
ld/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/ina2=
xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/ina3221.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/pwm-fan.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/lm90.ko: unsupported GN=
U_PROPERTY_TYPE (5aarch64-linux-gnu-strip: ) type: 0xwarning: c0000000/tmp/=
kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drive=
rs/hwmon/raspberrypi-hwmon.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-gpio.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/hwmon/sl28cpld-hwmon.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-qcom-cci.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-bcm2835.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/i2c/busses/i2c-qcom-geni.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/max9611.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-spmi-adc5.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-spmi-vadc.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/qcom-vadc-common.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/adc/rockchip_saradc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/buffer/industrialio-trigg=
ered-buffer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/buffer/kfifo_buf.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/cros_ec_sensors/cr=
os_ec_sensors.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/cros_ec_sensors/cr=
os_ec_sensors_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st_sens=
ors.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st_sens=
ors_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/common/st_sensors/st_sens=
ors_spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx=
_i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/isl29018.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/=
light/cros_ec_light_prox.ko: unsupported GNU_PROPERTY_TYPE (warning: 5/tmp/=
kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drive=
rs/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.ko) type: 0x: unsupported GNU_PROPERTY=
_TYPE (c00000005
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/light/vcnl4000.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn_i2c.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/iio/=
pressure/mpl3115.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/iio/pressure/cros_ec_baro.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/iio/magnetometer/st_magn_spi.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/imx_sc_key.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/adc-keys.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/keyboard/snvs_pwrkey.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/misc/pm8xxx-vibrator.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/misc/pwm-vibra.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/atmel_mxt_t=
s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/edt-ft5x06.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  STRIP   /tmp/kci/linux/buil=
d/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/input/touch=
screen/goodix.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/imx/imx8mq-inter=
connect.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/input/touchscreen/goodix.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/imx/imx-intercon=
nect.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/icc-osm-l3.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-msm891=
6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-sm8150=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/icc-smd-rpm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-sm8350=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/interconnect/qcom/qnoc-sm8250=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/leds/leds-lm3692x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/leds/leds-pca9532.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-log.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/mailbox/bcm-flexrm-mailbox.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-mirror.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/dm-zero.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/md/d=
m-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning:   INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc=
6-next-20210819/kernel/drivers/media/common/videobuf2/videobuf2-dma-contig.=
ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/md/md-mod.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/cec/core/cec.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/media/common/videobuf2/videobuf2-dma-contig.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-memops.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-v4l2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/common/videobuf2/videob=
uf2-vmalloc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/imx219.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/dvb-core/dvb-core.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ir-kbd-i2c.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/i2c/ov5645.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/mc/mc.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/exynos-gsc/exy=
nos-gsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venus/ven=
us-dec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/venus/ven=
us-enc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-vin/rcar-=
csi2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/platform/qcom/venus/venus-core.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-fcp.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/qcom/camss/qco=
m-camss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar-vin/rcar-=
vin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar_drif.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/rcar_fdp1.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-jpeg/s5p-j=
peg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/gpu/drm/nouveau/nouveau.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/sunxi/sun6i-cs=
i/sun6i-csi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/s5p-mfc/s5p-mf=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-strip: wa=
rning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/=
kernel/drivers/media/rc/keymaps/rc-adstech-dvb-t-pci.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-anysee.ko=
  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202108=
19/kernel/drivers/media/rc/keymaps/rc-astrometa-t2hybrid.ko
    : unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp=
/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/driv=
ers/media/rc/keymaps/rc-apac-viewcomp.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/platform/vsp1/vsp1.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-alink-dtu=
-m.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-astrometa=
-t2hybrid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-asus-pc39=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-asus-ps3-=
100.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ati-x10.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ati-tv-wo=
nder-hd-600.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-cardbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-a16d.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-dvbt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-m135a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-m733a-rm-k6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keyma=
ps/rc-beelink-gs1.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avermedia=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-beelink-g=
s1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-avertv-30=
3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-azurewave=
-ad-tu700.ko  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6=
-next-20210819/kernel/drivers/media/rc/keymaps/rc-budget-ci-old.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-behold-co=
lumbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/medi=
a/rc/keymaps/rc-behold.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/rc/keymaps/rc-budget-ci-old.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-cinergy-1=
400.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ct-90405.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-cinergy.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0700-r=
c5.koaarch64-linux-gnu-strip: : unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/rc/keymaps/rc-d680-dmb.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-delock-61=
959.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dib0700-n=
ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/rc/keymaps/rc-digittrade.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-digitalno=
w-tinytwin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dm1105-ne=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dntv-live=
-dvb-t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dntv-live=
-dvbt-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/medi=
a/rc/keymaps/rc-dvbsky.kowarning: : unsupported GNU_PROPERTY_TYPE (/tmp/kci=
/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/=
media/rc/keymaps/rc-dtt200u.ko: unsupported GNU_PROPERTY_TYPE (55) type: 0x=
) type: 0xc0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvico-mce=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-dvico-por=
table.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-em-terrat=
ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-encore-en=
ltv-fm53.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-encore-en=
ltv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-encore-en=
ltv2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-evga-indt=
ube.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-eztv.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flyvideo.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-flydvb.ko=
: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/=
lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-fus=
ionhdtv-mce.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-gadmei-rm=
008z.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-fusionhdt=
v-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-geekbox.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-genius-tv=
go-a11mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-gotview71=
35.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hauppauge=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hisi-tv-d=
emo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon-mce.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-hisi-popl=
ar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon-pad.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-imon-rsc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/rc/keymaps/rc-iodata-bctv7e.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it913x-v1=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/media/rc/keymaps/rc-kaiomy.ko/tmp/kci/linux/build/_modules_/lib/module=
s/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-it913x-v2.ko:=
 unsupported GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYPE (55) type: =
0x) type: 0xc0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-khadas.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kworld-31=
5u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-khamsin.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kworld-pc=
150u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-kworld-pl=
us-tv-analog.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-lme2510.k=
o: unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_=
/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-ma=
nli.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-manli.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-leadtek-y=
04g0051.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-mecool-ki=
ii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-mecool-ki=
i-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medion-x1=
0-or2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medion-x1=
0-digitainer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-medion-x1=
0.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-minix-neo=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-digiv=
ox-ii.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-digiv=
ox-iii.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-nec-terra=
tec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-npgtech.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-norwood.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-tvany=
where-plus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-msi-tvany=
where.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-odroid.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-nebula.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pine64.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pctv-sedn=
a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinnacle-=
color.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pinnacle-=
grey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
-002t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/rc/keymaps/rc-pixelview-mk12.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-strip: c0000000warning: /tmp/k=
ci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/driver=
s/media/rc/keymaps/rc-pinnacle-pctv-hd.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
-new.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pixelview=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-purpletv.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-proteus-2=
309.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-powercolo=
r-real-angel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-pv951.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-rc6-mce.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-reddo.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-snapstrea=
m-firefly.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-streamzap=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-real-audi=
o-220-32-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-su3000.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tanix-tx5=
max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tanix-tx3=
mini.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tbs-nec.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-technisat=
-ts35.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-technisat=
-usb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
cinergy-c-pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
slim-2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
cinergy-s2-hd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-terratec-=
slim.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tevii-nec=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-tivo.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-total-med=
ia-in-hand-02.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-trekstor.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-total-med=
ia-in-hand.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/rc/keymaps/rc-twinhan1027.koaarch64-linux-gnu-st=
rip: : unsupported GNU_PROPERTY_TYPE (warning: 5/tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc=
-tt-1500.ko) type: 0x: unsupported GNU_PROPERTY_TYPE (c00000005) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-twinhan-d=
tv-cab-ci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videomate=
-m1f.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-vega-s9x.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videomate=
-s350.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videomate=
-tv-pvr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-videostro=
ng-kii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-wetek-pla=
y2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-wetek-hub=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winfast.k=
oaarch64-linux-gnu-strip: : unsupported GNU_PROPERTY_TYPE (warning: /tmp/kc=
i/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers=
/media/rc/keymaps/rc-x96max.ko5: unsupported GNU_PROPERTY_TYPE () type: 0x5=
) type: 0xc0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-xbox-360.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-winfast-u=
sbii-deluxe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP  =
 /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel=
/drivers/media/rc/keymaps/rc-xbox-dvd.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-xbox-dvd.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/keymaps/rc-zx-irdec.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/meson-ir.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/rc-core.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/rc/sunxi-cir.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/mc44s803.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/media/tuners/mt20xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda827x.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda9887.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tda8290.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/medi=
a/tuners/tuner-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/tuners/xc4000.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/tuners/tuner-xc2028.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-async.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/tuners/xc5000.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-h264.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-dv-timin=
gs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/v4l2-fwnode.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/usb/uvc/uvcvideo.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/mfd/wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/media/v4l2-core/v4l2-mem2mem.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/memory/renesas-rpc-if.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/mfd/exynos-lpass.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xaarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at24.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/media/v4l2-core/videodev.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/mfd/wm8994.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/pci_endpoint_test.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/eeprom/at25.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/misc/uacce/uacce.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/dev/can-dev.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/flexcan.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/can/rcar/rcar_canfd.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/can/rcar/rcar_can.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/dsa/ocelot/mscc_felix.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/atheros/atl1c/at=
l1c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/broadcom/genet/g=
enet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/mlx4/ml=
x4_en.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/mlx4/ml=
x4_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/broadcom/bnx2x/b=
nx2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/qualcomm/emac/qc=
om-emac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/qualcomm/rmnet/r=
mnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mscc/mscc_ocelot=
_switch_lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicr=
o/stmmac/dwmac-sun8i.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-meson8b.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-qcom-ethqos.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  STRIP   /tmp/kci/li=
nux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-sun8i.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-sun8i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/d=
wmac-visconti.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/stmicro/stmmac/s=
tmmac-platform.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/macvlan.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/macvtap.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ipa/ipa.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/=
ethernet/stmicro/stmmac/stmmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/mdio/mdio-mux-meson-g12a.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/mdio/mdio-bcm-unimac.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/pcs/pcs_xpcs.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/ax88796b.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm-phy-lib.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/marvell10g.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/bcm7xxx.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/phy/bcm54140.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/microchip.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/smsc.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/ethernet/mellanox/mlx5/co=
re/mlx5_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/broadcom.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/marvell.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/phy/meson-gxl.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/tap.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/ax88179_178a.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_ether.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/asix.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_subset.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/build/=
_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/mcs78=
30.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/mcs7830.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/net1080.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/dm9601.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/cdc_ncm.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/lan78xx.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/pegasus.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/plusb.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/rtl8150.ko: unsupport=
ed GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/=
5.14.0-rc6-next-20210819/kernel/drivers/net/veth.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/r8152.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/smsc95xx.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/sr9800.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/usbnet.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/usb/smsc75xx.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/usb/zaurus.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/veth.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/ath10=
k_pci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/ath10=
k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  INSTALL /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/net/=
wireless/ti/wlcore/wlcore_sdio.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/broadcom/brcm802=
11/brcmutil/brcmutil.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/marvell/mwifiex/=
mwifiex_pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ti/wl18xx/wl18xx=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ath/ath10k/ath10=
k_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/broadcom/brcm802=
11/brcmfmac/brcmfmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nfc/s3fwrn5/s3fwrn5.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/ti/wlcore/wlcore=
_sdio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nfc/s3fwrn5/s3fwrn5_i2c.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvme/host/nvme-core.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/net/wireless/marvell/mwifiex/=
mwifiex.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvme/host/nvme.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/net/wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/nvmem/nvmem-rmem.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/pci/controller/dwc/pci-meson.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/dwc/pcie-tegra=
194.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pci/controller/pcie-brcmstb.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/pci/controller/pcie-rockchip-host.ko/tmp/kci/linux/build/_modules_/lib=
/modules/5.14.0-rc6-next-20210819/kernel/drivers/pci/endpoint/functions/pci=
-epf-test.ko: unsupported GNU_PROPERTY_TYPE (: unsupported GNU_PROPERTY_TYP=
E (55) type: 0x) type: 0xc0000000c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/perf/arm_smmuv3_pmu.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/perf/fsl_imx8_ddr_perf.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/perf/thunderx2_pmu.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/allwinner/phy-sun6i-mipi-=
dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/freescale/phy-fsl-imx8-mi=
pi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-hdmi-drv=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/mediatek/phy-mtk-mipi-dsi=
-drv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/qualcomm/phy-qcom-qmp.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/qualcomm/phy-qcom-qusb2.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/renesas/phy-rcar-gen3-usb=
3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchip-inn=
o-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchip-inn=
o-dsidphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/phy/rockchip/phy-rockchip-pci=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/phy/tegra/phy-tegra194-p2u.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_chard=
ev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/platform/chrome/cros_ec_typec=
.ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/power/supply/sbs-battery.ko
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/power/reset/qcom-pon.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pinctrl/qcom/pinctrl-lpass-lp=
i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  INSTALL /tmp/kci/linux/bu=
ild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-b=
cm2835.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/bq25980_charger.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/bq25890_charger.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/max17042_battery=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/power/supply/sbs-battery.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-bcm2835.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/=
pwm-cros-ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/pwm/pwm-mediatek.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.=
0-rc6-next-20210819/kernel/drivers/pwm/pwm-meson.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-mtk-disp.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning:   STRIP   /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-rcar.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-meson.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-rcar.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-sl28cpld.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/pwm/pwm-sun4i.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/pwm/pwm-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/vctrl-regulator.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/pwm/pwm-visconti.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/regulator/tps65132-regulator.=
ko  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-2021=
0819/kernel/drivers/remoteproc/qcom_q6v5_pas.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_common.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/remo=
teproc/qcom_q6v5_mss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/remoteproc/qcom_pil_info.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_q6v5_pas.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/remoteproc/qcom_sysmon.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-berlin.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-qcom-pdc.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-meson-audio-arb.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/reset/reset-raspberrypi.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rpmsg/qcom_glink_smem.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-ds1307.ko: unsupporte=
d GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build=
/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-hym8=
563.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-fsl-ftm-alarm.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-imx-sc.ko: unsupporte=
d GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: 5) type: 0xwarning: c0000000/=
tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/d=
rivers/rtc/rtc-m41t80.ko: unsupported GNU_PROPERTY_TYPE (
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-meson-vrtc.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pcf2127.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pcf85363.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-pm8xxx.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rv3028.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rk808.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rv8803.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-rx8581.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/rtc/rtc-snvs.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/mpt3sas/mpt3sas.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/raid_class.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/scsi/ufs/ufs_qcom.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ctrl.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slim-qcom-ngd-ctrl.ko=
: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/apr.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/slimbus/slimbus.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/amlogic/meson-canvas.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/apr.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/mediatek/mtk-devapc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/mdt_loader.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/pdr_interface.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/qmi_helpers.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/soc/qcom/rmtfs_mem.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/dri=
vers/soundwire/soundwire-bus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bcm2835.ko: unsupport=
ed GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/buil=
d/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/soundwire/s=
oundwire-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/spi/spi-bcm2835aux.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0x  INSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-=
next-20210819/kernel/drivers/spi/spi-dw-mmio.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-bitbang.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-strip: warning: =
/tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/=
drivers/spi/spi-dw-mmio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-dw.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-imx.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-geni-qcom.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-meson-spifc.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-meson-spicc.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-rpc-if.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-qcom-qspi.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spi-sh-msiof.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/spi/spidev.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/ther=
mal/broadcom/bcm2711_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/thermal/broadcom/bcm2835_thermal.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/broadcom/brcmstb_ther=
mal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/imx8mm_thermal.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/imx_sc_thermal.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/qcom/qcom-spmi-temp-a=
larm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/staging/media/hantro/hantro-v=
pu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/qoriq_thermal.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/rockchip_thermal.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/tegra/tegra-bpmp-ther=
mal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/thermal/tegra/tegra-soctherm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/u_ether.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/class/cdc-acm.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_acm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/u_serial.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/usb/gadget/function/usb_f_ecm.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ecm=
_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_eem=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_mas=
s_storage.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ncm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_fs.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_obe=
x.ko: unsupported GNU_PROPERTY_TYPE (  STRIP   /tmp/kci/linux/build/_module=
s_/lib/modules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/=
usb_f_rndis.ko
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/usb/gadget/function/usb_f_rndis.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/function/usb_f_ser=
ial.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/libcomposite.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/udc/renesas_usb3.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/gadget/udc/tegra-xudc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/host/xhci-pci-renesas.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/host/xhci-pci.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/cp210x.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/ftdi_sio.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/renesas_usbhs/renesas_usb=
hs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/option.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/usb_wwan.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/serial/usbserial.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/hd3ss3220.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/fusb302.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/tcpci.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tipd/tps6598x.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/typec.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/lp855x_bl.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/usb/typec/tcpm/tcpm.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/video/backlight/pwm_bl.ko  ST=
RIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/k=
ernel/drivers/watchdog/sl28cpld_wdt.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sl28cpld_wdt.ko: uns=
upported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: ) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/drivers/watchdog/imx_sc_wdt.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/meson_gxbb_wdt.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/meson_wdt.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/qcom-wdt.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/drivers/watchdog/sunxi_wdt.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/fuse/cuse.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/fuse/fuse.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crc-ccitt.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libarc4.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/overlayfs/overlay.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/nfs/blocklayout/blocklayoutdriver.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libchacha.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libcurve25519-generic.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libdes.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libsha256.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/fs/btrfs/btrfs.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/crypto/libsm4.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/libcrc32c.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/lib/raid6/raid6_pq.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/garp.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/p8022.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/net/802/mrp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20=
210819/kernel/net/802/psnap.ko
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/lib/zstd/zst=
d_compress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/net/802/psnap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/802/stp.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/8021q/8021q.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/hidp/hidp.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/bluetooth/bluetooth.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/build/_mo=
dules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/can/can.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can-gw.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/net/can/can-bcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/can/can-raw.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/bridge/bridge.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/dsa/dsa_core.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot_8021q.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/dsa/tag_ocelot.ko  INSTALL /tmp/k=
ci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/ip=
v4/netfilter/iptable_filter.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/ip_tunnel.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/ip_tables.ko: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/ipt_REJECT.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_filter.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_mangle.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_defrag_ipv4.ko:=
 unsupported GNU_PROPERTY_TYPE (5  INSTALL /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6_tables.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/iptable_nat.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/netfilter/nf_reject_ipv4.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv4/tunnel4.ko: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6_tables.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_filter.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_mangle.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6t_REJECT.ko: un=
supported GNU_PROPERTY_TYPE (  INSTALL /tmp/kci/linux/build/_modules_/lib/m=
odules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/ip6table_nat.ko
    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_nat.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_reject_ipv6.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/sit.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/llc/llc.ko: unsupported GNU_PROPE=
RTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/=
lib/modules/5.14.0-rc6-next-20210819/kernel/net/ipv6/netfilter/nf_defrag_ip=
v6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/ipv6/ipv6.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_log_syslog.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000  STRIP   /tmp/kci/linux/build=
/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_con=
ntrack.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_conntrack.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000  INSTALL /tmp/kci/linux/build/=
_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/netfilter/x_table=
s.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/nf_nat.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/x_tables.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_CHECKSUM.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/lib/modul=
es/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_MASQUERADE.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_LOG.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_MASQUERADE.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_addrtype.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_conntrack.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/mac80211/mac80211.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_nat.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/netfilter/xt_tcpudp.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/ns.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/nfc/nci/nci.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr-tun.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/nfc/nfc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/net/qrtr/qrtr-smd.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000  STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-n=
ext-20210819/kernel/net/qrtr/qrtr.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/rfkill/rfkill.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/qrtr/qrtr.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/act_gact.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/act_gate.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/act_mirred.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/cls_basic.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/cls_flower.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_ingress.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_mqprio.ko: unsupported =
GNU_PROPERTY_TYPE (aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_=
modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_etf.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_cbs.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/sched/sch_taprio.ko: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/hda/snd-hda-core.ko: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/net/wireless/cfg80211.ko: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-codec-hdmi.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/pci/hda/snd-hda-codec.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/pci/hda/snd-hda-tegra.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-cros-ec-code=
c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-ak4613.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/bcm/snd-soc-bcm2835-i2s.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-dmic.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-da7219.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7134.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-gtm601.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-es7241.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-hdmi-codec.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-lpass-wsa-ma=
cro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-lpass-va-macro.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-max98357a.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-msm8916-anal=
og.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-max98927.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-pcm3168a-i2c=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-msm8916-digi=
tal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/co=
decs/snd-soc-rl6231.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-pcm3168a.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: aarch64-linux-gnu-str=
ip: warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-rt5514-spi.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-rt5514.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-rt5645.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5659.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-rt5663.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-simple-ampli=
fier.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-simple-mux.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-sgtl5000.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/codecs/snd-soc-spdif-rx.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-spdif-tx.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wcd-mbhc.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-tas571x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wcd934x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm-hubs.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8904.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8960.ko  I=
NSTALL /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/=
kernel/sound/soc/fsl/snd-soc-fsl-asrc.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8962.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/imx-pcm-dma.ko: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wsa881x.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/codecs/snd-soc-wm8994.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-asrc.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-asoc-card.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-audmix.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-easrc.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-esai.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-micfil.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0x  INSTALL /tmp/kci/linux/build/_m=
odules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-i=
mx-audmux.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-sai.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-spdif.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmix.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-fsl-ssi.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-audmux.ko: =
unsupported GNU_PROPERTY_TYPE (5  STRIP   /tmp/kci/linux/build/_modules_/li=
b/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-audio-g=
raph-card.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/fsl/snd-soc-imx-spdif.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-202=
10819/kernel/sound/soc/fsl/snd-soc-imx-sgtl5000.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-mes=
on-aiu.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-simple-card=
-utils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/generic/snd-soc-simple-card=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-fif=
o.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning:   INSTALL /tmp/kci/linux/build/_modul=
es_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-mes=
on-axg-tdm-formatter.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-aiu.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-sou=
nd-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-pdm=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-spd=
ifout.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-spd=
ifin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
-formatter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
-interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
in.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tdm=
out.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-axg-tod=
dr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-card-ut=
ils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-codec-g=
lue.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-g12a-to=
acodec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-g12a-to=
hdmitx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-gx-soun=
d-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/meson/snd-soc-meson-t9015.k=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6afe-dai.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qc=
om/qdsp6/q6adm.kowarning: : unsupported GNU_PROPERTY_TYPE (/tmp/kci/linux/b=
uild/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/q=
dsp6/q6afe-clocks.ko: unsupported GNU_PROPERTY_TYPE (55) type: 0x) type: 0x=
c0000000c0000000
    aarch64-linux-gnu-strip: aarch64-linux-gnu-strip: warning: /tmp/kci/lin=
ux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sound/soc/qc=
om/qdsp6/q6asm-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning:   STRIP   /tmp/kci/linux/build/_modules_/lib/modules/5.14.0-rc=
6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6core.ko
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6asm.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6core.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6dsp-common.ko:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/qdsp6/q6routing.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-apq8016-sbc.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-apq8096.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-apq8016.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-platform=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-lpass-cpu.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-qcom-common.ko=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-sdm845.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/qcom/snd-soc-sm8250.ko: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rk3399-gru=
-sound.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-i=
2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-p=
cm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-r=
t5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/rockchip/snd-soc-rockchip-s=
pdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/sunxi/sun4i-spdif.ko: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/sh/rcar/snd-soc-rcar.ko: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra-audio-g=
raph-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: aarch64-linux-gnu-strip: warning: /tm=
p/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/sou=
nd/soc/sunxi/sun4i-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-adma=
if.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra186-dspk=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-ahub=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc6-next-20210819/kernel/sound/soc/tegra/snd-soc-tegra210-dmic=
.ko: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-strip: warning: /tmp=
/kci/linux/build/_modules_/lib/modules/5.14.0-rc6-next-20210819/kernel/soun=
d/soc/tegra/snd-soc-tegra210-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+crypto (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+ima (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 wa=
rnings, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]
    arch/arc/include/asm/perf_event.h:126:27: warning: =E2=80=98arc_pmu_cac=
he_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu_ev_h=
w_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
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
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
loongson2k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 25 warnings, 0=
 section mismatches

Warnings:
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    kernel/dma/coherent.c:325:29: warning: unused variable 'dma_reserved_de=
fault_memory' [-Wunused-variable]
    1 warning generated.
    clang: warning: argument unused during compilation: '-march=3Darmv7-a' =
[-Wunused-command-line-argument]
    clang: warning: argument unused during compilation: '-Wa,-march=3Darmv7=
-a' [-Wunused-command-line-argument]
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:702:6: warn=
ing: variable 'ret' is used uninitialized whenever 'if' condition is false =
[-Wsometimes-uninitialized]
    drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c:683:9: note=
: initialize the variable 'ret' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/net/ethernet/8390/ne.c:909:20: warning: =E2=80=98ne_add_devices=
=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
sama7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

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
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/dma/coherent.c:325:29: warning: =E2=80=98dma_reserved_default_me=
mory=E2=80=99 defined but not used [-Wunused-variable]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    lib/zstd/compress.o: warning: objtool: ZSTD_compress_usingCDict()+0x1d8=
: unsupported stack register modification

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    lib/zstd/compress.o: warning: objtool: ZSTD_compress_usingCDict()+0x1d8=
: unsupported stack register modification

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
clang-built-linux/611e372c.1c69fb81.f7662.a730%40mx.google.com.
