Return-Path: <clang-built-linux+bncBDT6TV45WMPRBNF33KDQMGQEAR7AGCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 848183CF742
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 11:56:05 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id p13-20020a9d4e0d0000b02904cdb63ceafcsf10885074otf.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 02:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626774964; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDNOMvvQtGB3/1LsftmHZ93Lr8eo7pgNt7ei2TiuCKYDK/S+evuE5+HlQPLl6zChyl
         xIohKZWqOMmcjXCs3TUADMGo1qL1WqDx/GfxVdQh+PZifoIouut+98QuXN40e5YD4/KY
         6BgiswR3KpDQ/kEd04nHgOafwmsDp70NDjI9Xl1qOcCCIpOdYGqpYW1RHA3khpDyhwoe
         9qavchmzQbNY9rI/U8D4eUnUsze1mZo6qys/EYKTbtee/4Ic1DGP+j41vGsTeBXxYSKi
         yhZG367WIEcqEMePNV2Z8sFJ+mpOcelsgjvnEWvtvUt7qGUW4Uw0+gCt29RoDJ/QBOZR
         tmig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=uZT7O4xkWg+cMwur+cgztGh4glDwt9JOgnJc/sMOH8M=;
        b=A/p6LKgxoLLW2ETmShQTCI/FF+QSe7busbBoP/i/XDfLQPmHjVHddP9EtbBlXGDfPQ
         i1K2znwc65SBI05ATsQrCYkyq63TMi5IcBD/9iBGYK4mJttl7phnlLbVk0RpCA8fslNk
         Yay6PhT+uLRuyx8SN+dC8gPFw1Whk0N8OSGdPRFtJ5Bu10rPT0wKHQ7HtYMKN5kk6w+q
         L78TGrF1WRsg0F3RJ0A+9vnQX0NXhB1UFz4VIZ4S6pMXPen05Ph7bGdySA4ziDeGpTHr
         vvAnotY+vQGGYsIzRbxYCRe2ManMg3vkdtTGALKfPLdJ7jPRosZi+K1sW8ShHTiMn/Dv
         tgdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=F11AlyKe;
       spf=neutral (google.com: 2607:f8b0:4864:20::1031 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZT7O4xkWg+cMwur+cgztGh4glDwt9JOgnJc/sMOH8M=;
        b=ZfMwyeoOojG5E94HX84VUdusmOSCwtWh192wEBYZXs7VPSVSPOBgFf1A7omZ4Vqe/D
         SWHm9DZHOvEkQrfa20wq8f7T9ShDXUpuDS26r0R+i3hqJrbiTl4BlG+0sXvp6YFcj0BQ
         bR/SvMwhWOn9hL2LXz+7ZV1qIVV0IM1YMoIa0i0+lYrV7WiBbDsotEqahxzMw5FbkYsq
         Rsppg6oJ6dsSHR97KC6QGB6knCuNq9LCvJpv8OpRHYRm9bv0bt+4o6LKGEM+lHA7whv3
         D/riGH4RFBTsP/4KIOJ9tzkNCf4vnF0Bs6U0+2m3bti95/el9PezwJ+mSshD+2SEryiH
         RBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZT7O4xkWg+cMwur+cgztGh4glDwt9JOgnJc/sMOH8M=;
        b=G2qdg4x6aQxTl3xzzynDXG7KoMzDmGX5ipW9TZLXqtqO6hvmbWe+2m2bKRKJaP0RKz
         FFKzUOGgUIuU10oE6S5yBpEAH+FFOm3+Uvt9KLpQiWJfEdLKYEGIQ+IprBqB0zxb5x37
         tt43YTBUiWxyXpPM1+r9VDIJlyoN+OvQJGDubKGysvQ8vrPe/fPSie8FLU8zyAYX842E
         XSbwjPthoGM3ci37dOeDjbkpMmV7024CmSgn3uvXtbKzo5VcP87+7ZOjRuHiH/JqjxLC
         /8UcGE/peF6ce7udkaKcHnP+Rcl4J77oIVRaD362wAQHadacghKaT8APuBnfIuaHXv8i
         cYjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bKNU+ffjv6jUTkF0fBpvfauPWf92hmawmdzXEvuMKFh3U1W4n
	jLRPfy9j7ubIRPfJsM+2BHo=
X-Google-Smtp-Source: ABdhPJwZ1bwHjqZLcSANEa0ID41uPVzGS2zr6d7M3JNnKEfpC8ckdDtzCHNdD3BoNHoWpEyBWYbSeA==
X-Received: by 2002:a9d:6484:: with SMTP id g4mr22022097otl.331.1626774964165;
        Tue, 20 Jul 2021 02:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4e06:: with SMTP id c6ls222841oib.4.gmail; Tue, 20 Jul
 2021 02:56:03 -0700 (PDT)
X-Received: by 2002:aca:413:: with SMTP id 19mr15178200oie.153.1626774963638;
        Tue, 20 Jul 2021 02:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626774963; cv=none;
        d=google.com; s=arc-20160816;
        b=vIMghGFCe8qa/5Y9yK1ifhOI0xaPDjL7FFDfA0RhhqW1OnbP4V0J+3tsyMWbram/Ph
         jpzOUZGho9kZy7N1gtTO9uP73mGlz5OG3Ws5FeAAZzOLv+dim2yuXi/0fly63eesNLPZ
         6rjOcYxPB2kNd/ew0o9SxRelAPPpJqtSqiLEBDFCRoNc+JkT7dCe3XCk89wHeeGaioHa
         k5rvVFA8AfiLLWfV4wpOZxcU/kCng3DnJYN/7+hllOHPlwVeyuI+3XnYD7fxWqHNDXby
         f4bLSJGBG1mZVn4KQCIt4zcjnlv5hxcoZ0H2kLVAh4MldKQ8aH/zMu+jL72efoeWJUIo
         4rWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=U9aO/z+JM1XKitNtPhLIAoWDSVqFpJqguTOZYIVJUUM=;
        b=n1M5XFq01MDTy+X0GnUBkbZj4QeQgTZXuPoQELMJk7Iq2kdpJZdsK9D4YIiO+gkcNU
         h2+Z5RicQ+ZSgdU2hKKCAoBooux/8yjV1OcoWlc4Q540IbwWPI5ln0h/OV3d2Wd7E0Ja
         i55V/z+nICFNaKSfY/umD21G2uzmHpCFXozJQ6qOPnyQYoublwmx02qv0GoC/nVvZRAV
         twU8/g8ij+BRwXQxOOBFO7R5j4i5O374Sbc4ADG7eBhSxy6zh4NddkXGygqK12OMxBB6
         00yAJkrdYzfxCO5R+FPfbwOThzKm5denqnHCxHxMaZfdpxied3P6XtgkjKXJeetIAP8p
         0PQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=F11AlyKe;
       spf=neutral (google.com: 2607:f8b0:4864:20::1031 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id m22si2285014oie.5.2021.07.20.02.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 02:56:03 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1031 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id g22-20020a17090a5796b02901763aca3df6so323105pji.5
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 02:56:03 -0700 (PDT)
X-Received: by 2002:a17:90a:2dce:: with SMTP id q14mr28733398pjm.42.1626774962442;
        Tue, 20 Jul 2021 02:56:02 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id g1sm25048267pgs.23.2021.07.20.02.56.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 02:56:01 -0700 (PDT)
Message-ID: <60f69db1.1c69fb81.4afc1.afc6@mx.google.com>
Date: Tue, 20 Jul 2021 02:56:01 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20210720
X-Kernelci-Branch: master
X-Kernelci-Tree: next
Subject: next/master build: 215 builds: 66 failed, 149 passed, 155 errors,
 110 warnings (next-20210720)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=F11AlyKe;       spf=neutral (google.com: 2607:f8b0:4864:20::1031 is
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

next/master build: 215 builds: 66 failed, 149 passed, 155 errors, 110 warni=
ngs (next-20210720)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210720/

Tree: next
Branch: master
Git Describe: next-20210720
Git Commit: 3568c2c543e25d1a47bd97a607171511e7d44a45
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-10) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    allmodconfig: (clang-12) FAIL
    allmodconfig: (gcc-8) FAIL

mips:
    32r2el_defconfig: (gcc-8) FAIL
    32r2el_defconfig+kselftest: (gcc-8) FAIL
    allnoconfig: (gcc-8) FAIL
    ar7_defconfig: (gcc-8) FAIL
    ath25_defconfig: (gcc-8) FAIL
    ath79_defconfig: (gcc-8) FAIL
    bcm47xx_defconfig: (gcc-8) FAIL
    bcm63xx_defconfig: (gcc-8) FAIL
    bigsur_defconfig: (gcc-8) FAIL
    bmips_be_defconfig: (gcc-8) FAIL
    bmips_stb_defconfig: (gcc-8) FAIL
    capcella_defconfig: (gcc-8) FAIL
    cavium_octeon_defconfig: (gcc-8) FAIL
    ci20_defconfig: (gcc-8) FAIL
    cobalt_defconfig: (gcc-8) FAIL
    cu1000-neo_defconfig: (gcc-8) FAIL
    cu1830-neo_defconfig: (gcc-8) FAIL
    db1xxx_defconfig: (gcc-8) FAIL
    decstation_64_defconfig: (gcc-8) FAIL
    decstation_defconfig: (gcc-8) FAIL
    decstation_r4k_defconfig: (gcc-8) FAIL
    e55_defconfig: (gcc-8) FAIL
    fuloong2e_defconfig: (gcc-8) FAIL
    gcw0_defconfig: (gcc-8) FAIL
    gpr_defconfig: (gcc-8) FAIL
    ip22_defconfig: (gcc-8) FAIL
    ip32_defconfig: (gcc-8) FAIL
    jazz_defconfig: (gcc-8) FAIL
    jmr3927_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL
    loongson1b_defconfig: (gcc-8) FAIL
    loongson1c_defconfig: (gcc-8) FAIL
    loongson2k_defconfig: (gcc-8) FAIL
    loongson3_defconfig: (gcc-8) FAIL
    malta_defconfig: (gcc-8) FAIL
    malta_kvm_defconfig: (gcc-8) FAIL
    malta_qemu_32r6_defconfig: (gcc-8) FAIL
    maltaaprp_defconfig: (gcc-8) FAIL
    maltasmvp_defconfig: (gcc-8) FAIL
    maltasmvp_eva_defconfig: (gcc-8) FAIL
    maltaup_defconfig: (gcc-8) FAIL
    maltaup_xpa_defconfig: (gcc-8) FAIL
    mpc30x_defconfig: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL
    nlm_xlp_defconfig: (gcc-8) FAIL
    nlm_xlr_defconfig: (gcc-8) FAIL
    omega2p_defconfig: (gcc-8) FAIL
    pic32mzda_defconfig: (gcc-8) FAIL
    pistachio_defconfig: (gcc-8) FAIL
    qi_lb60_defconfig: (gcc-8) FAIL
    rb532_defconfig: (gcc-8) FAIL
    rbtx49xx_defconfig: (gcc-8) FAIL
    rm200_defconfig: (gcc-8) FAIL
    rs90_defconfig: (gcc-8) FAIL
    rt305x_defconfig: (gcc-8) FAIL
    sb1250_swarm_defconfig: (gcc-8) FAIL
    tb0219_defconfig: (gcc-8) FAIL
    tb0226_defconfig: (gcc-8) FAIL
    tb0287_defconfig: (gcc-8) FAIL
    vocore2_defconfig: (gcc-8) FAIL
    workpad_defconfig: (gcc-8) FAIL
    xway_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    haps_hs_smp_defconfig+kselftest (gcc-8): 2 warnings

arm64:
    allmodconfig (gcc-8): 3 errors, 1 warning
    allmodconfig (clang-10): 1 error, 17 warnings
    defconfig (clang-12): 2 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 2 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 3 warnings

arm:
    allmodconfig (clang-12): 1 error, 39 warnings
    allmodconfig (gcc-8): 1 error, 2 warnings
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (clang-10): 2 warnings
    aspeed_g5_defconfig (clang-12): 2 warnings
    multi_v7_defconfig (clang-12): 2 warnings
    multi_v7_defconfig (clang-10): 2 warnings
    multi_v7_defconfig+kselftest (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (clang-10): 4 warnings
    i386_defconfig (clang-12): 4 warnings
    i386_defconfig+kselftest (gcc-8): 2 warnings

mips:
    32r2el_defconfig (gcc-8): 2 errors
    32r2el_defconfig+kselftest (gcc-8): 2 errors, 2 warnings
    allnoconfig (gcc-8): 2 errors
    ar7_defconfig (gcc-8): 2 errors
    ath25_defconfig (gcc-8): 2 errors
    ath79_defconfig (gcc-8): 2 errors
    bcm47xx_defconfig (gcc-8): 2 errors
    bcm63xx_defconfig (gcc-8): 3 errors
    bigsur_defconfig (gcc-8): 3 errors
    bmips_be_defconfig (gcc-8): 3 errors
    bmips_stb_defconfig (gcc-8): 3 errors
    capcella_defconfig (gcc-8): 3 errors
    cavium_octeon_defconfig (gcc-8): 2 errors, 1 warning
    ci20_defconfig (gcc-8): 2 errors
    cobalt_defconfig (gcc-8): 3 errors
    cu1000-neo_defconfig (gcc-8): 2 errors
    cu1830-neo_defconfig (gcc-8): 2 errors
    db1xxx_defconfig (gcc-8): 2 errors
    decstation_64_defconfig (gcc-8): 3 errors, 1 warning
    decstation_defconfig (gcc-8): 3 errors
    decstation_r4k_defconfig (gcc-8): 3 errors
    e55_defconfig (gcc-8): 3 errors
    fuloong2e_defconfig (gcc-8): 3 errors
    gcw0_defconfig (gcc-8): 2 errors
    gpr_defconfig (gcc-8): 2 errors
    ip22_defconfig (gcc-8): 3 errors
    ip32_defconfig (gcc-8): 3 errors
    jazz_defconfig (gcc-8): 3 errors
    jmr3927_defconfig (gcc-8): 3 errors
    lemote2f_defconfig (gcc-8): 3 errors
    loongson1b_defconfig (gcc-8): 2 errors
    loongson1c_defconfig (gcc-8): 2 errors
    loongson2k_defconfig (gcc-8): 2 errors
    loongson3_defconfig (gcc-8): 2 errors
    malta_defconfig (gcc-8): 2 errors
    malta_kvm_defconfig (gcc-8): 2 errors
    malta_qemu_32r6_defconfig (gcc-8): 2 errors
    maltaaprp_defconfig (gcc-8): 2 errors
    maltasmvp_defconfig (gcc-8): 2 errors
    maltasmvp_eva_defconfig (gcc-8): 2 errors
    maltaup_defconfig (gcc-8): 2 errors
    maltaup_xpa_defconfig (gcc-8): 2 errors
    mpc30x_defconfig (gcc-8): 3 errors
    mtx1_defconfig (gcc-8): 2 errors
    nlm_xlp_defconfig (gcc-8): 2 errors
    nlm_xlr_defconfig (gcc-8): 3 errors
    omega2p_defconfig (gcc-8): 2 errors
    pic32mzda_defconfig (gcc-8): 2 errors
    pistachio_defconfig (gcc-8): 2 errors
    qi_lb60_defconfig (gcc-8): 2 errors
    rb532_defconfig (gcc-8): 2 errors
    rbtx49xx_defconfig (gcc-8): 3 errors
    rm200_defconfig (gcc-8): 3 errors
    rs90_defconfig (gcc-8): 2 errors
    rt305x_defconfig (gcc-8): 2 errors
    sb1250_swarm_defconfig (gcc-8): 3 errors
    tb0219_defconfig (gcc-8): 3 errors
    tb0226_defconfig (gcc-8): 3 errors
    tb0287_defconfig (gcc-8): 3 errors
    vocore2_defconfig (gcc-8): 2 errors
    workpad_defconfig (gcc-8): 3 errors
    xway_defconfig (gcc-8): 2 errors, 2 warnings

riscv:
    defconfig+CONFIG_EFI=3Dn (clang-12): 2 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    x86_64_defconfig (clang-12): 2 warnings
    x86_64_defconfig (clang-10): 4 warnings

Errors summary:

    13   (.text+0x19b0): undefined reference to `printk'
    12   (.text+0x1d30): undefined reference to `printk'
    12   (.text+0x1870): undefined reference to `printk'
    11   (.text+0x1c40): undefined reference to `printk'
    11   (.text+0x18e0): undefined reference to `printk'
    9    (.text+0x1d0c): undefined reference to `printk'
    9    (.text+0x198c): undefined reference to `printk'
    7    (.text+0x1c8c): undefined reference to `printk'
    7    (.text+0x190c): undefined reference to `printk'
    4    (.text+0x1c3c): undefined reference to `printk'
    4    (.text+0x18dc): undefined reference to `printk'
    3    (.text+0x1ca8): undefined reference to `printk'
    3    (.text+0x1a14): undefined reference to `printk'
    3    (.text+0x1928): undefined reference to `printk'
    3    (.text+0x17e8): undefined reference to `printk'
    2    /tmp/kci/linux/build/../arch/mips/kernel/genex.S:587: undefined re=
ference to `printk'
    2    /tmp/kci/linux/build/../arch/mips/kernel/genex.S:584: undefined re=
ference to `printk'
    2    (.text+0x1df8): undefined reference to `printk'
    2    (.text+0x1d88): undefined reference to `printk'
    2    (.text+0x1a78): undefined reference to `printk'
    2    (.text+0x1938): undefined reference to `printk'
    2    (.text+0x18c8): undefined reference to `printk'
    1    crypto/aegis128-neon-inner.c:11:10: fatal error: arm_neon.h: No su=
ch file or directory
    1    crypto/aegis128-neon-inner.c:11:10: fatal error: 'arm_neon.h' file=
 not found
    1    arch/arm64/include/asm/neon-intrinsics.h:33:10: fatal error: arm_n=
eon.h: No such file or directory
    1    arch/arm64/include/asm/neon-intrinsics.h:33:10: fatal error: 'arm_=
neon.h' file not found
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1865=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field
    1    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=
=98__compiletime_assert_1858=E2=80=99 declared with attribute error: FIELD_=
PREP: value too large for the field
    1    (.text+0x2284): undefined reference to `printk'
    1    (.text+0x1eb0): undefined reference to `printk'
    1    (.text+0x1e64): undefined reference to `printk'
    1    (.text+0x1d94): undefined reference to `printk'
    1    (.text+0x1d54): undefined reference to `printk'
    1    (.text+0x1d28): undefined reference to `printk'
    1    (.text+0x1d10): undefined reference to `printk'
    1    (.text+0x1d08): undefined reference to `printk'
    1    (.text+0x1d04): undefined reference to `printk'
    1    (.text+0x1cac): undefined reference to `printk'
    1    (.text+0x1c84): undefined reference to `printk'
    1    (.text+0x1ad4): undefined reference to `printk'
    1    (.text+0x19d4): undefined reference to `printk'
    1    (.text+0x19a8): undefined reference to `printk'
    1    (.text+0x1990): undefined reference to `printk'
    1    (.text+0x1988): undefined reference to `printk'
    1    (.text+0x192c): undefined reference to `printk'
    1    (.text+0x1924): undefined reference to `printk'
    1    (.text+0x1894): undefined reference to `printk'
    1    (.text+0x1868): undefined reference to `printk'
    1    (.text+0x1850): undefined reference to `printk'
    1    (.text+0x1804): undefined reference to `printk'
    1    (.text+0x17ec): undefined reference to `printk'
    1    (.text+0x1690): undefined reference to `printk'

Warnings summary:

    37   1 warning generated.
    16   kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration sp=
ecifier [-Wduplicate-decl-specifier]
    7    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to int=
eger of different size [-Wpointer-to-int-cast]
    4    mm/hugetlb.c:1180:1: warning: label =E2=80=98check_reserve=E2=80=
=99 defined but not used [-Wunused-label]
    2    sound/pci/korg1212/korg1212.c:2260:8: warning: variable 'dsp_code'=
 is uninitialized when used here [-Wuninitialized]
    2    sound/pci/korg1212/korg1212.c:2101:33: note: initialize the variab=
le 'dsp_code' to silence this warning
    2    sound/pci/cs4281.c:1298:2: warning: variable 'chip' is uninitializ=
ed when used here [-Wuninitialized]
    2    sound/pci/cs4281.c:1291:21: note: initialize the variable 'chip' t=
o silence this warning
    2    sound/pci/als300.c:713:6: warning: variable 'chip' is uninitialize=
d when used here [-Wuninitialized]
    2    sound/pci/als300.c:691:25: note: initialize the variable 'chip' to=
 silence this warning
    2    mm/hugetlb.c:1180:1: warning: unused label 'check_reserve' [-Wunus=
ed-label]
    2    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=
=99 is usually a function [-Wmain]
    2    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: i=
mplicit conversion from enumeration type 'enum mt76_cipher_type' to differe=
nt enumeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    2    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: i=
mplicit conversion from enumeration type 'enum mt76_cipher_type' to differe=
nt enumeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    2 warnings generated.
    2    #warning This code requires at least version 4.6 of GCC
    1    kernel/trace/trace_events_hist.c:4601:13: warning: stack frame siz=
e of 1384 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:992:5: warning: stack frame siz=
e of 1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:902:12: warning: stack frame si=
ze of 1080 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    1    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1872:12: warning: stack frame =
size of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-=
1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5560 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3043:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    1    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1    crypto/wp512.c:782:13: warning: stack frame size of 1176 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu=
_ev_hw_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    arch/arc/include/asm/perf_event.h:126:27: warning: =E2=80=98arc_pm=
u_cache_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.14.0-rc2-next-20210720/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnin=
gs, 0 section mismatches

Errors:
    (.text+0x1ad4): undefined reference to `printk'
    (.text+0x1eb0): undefined reference to `printk'

Warnings:
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 section =
mismatches

Errors:
    arch/arm64/include/asm/neon-intrinsics.h:33:10: fatal error: arm_neon.h=
: No such file or directory
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1858=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field
    ./../include/linux/compiler_types.h:328:38: error: call to =E2=80=98__c=
ompiletime_assert_1865=E2=80=99 declared with attribute error: FIELD_PREP: =
value too large for the field

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-12) =E2=80=94 FAIL, 1 error, 39 warnings, 0 sectio=
n mismatches

Errors:
    crypto/aegis128-neon-inner.c:11:10: fatal error: 'arm_neon.h' file not =
found

Warnings:
    kernel/trace/trace_events_hist.c:4601:13: warning: stack frame size of =
1384 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
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
    sound/pci/korg1212/korg1212.c:2260:8: warning: variable 'dsp_code' is u=
ninitialized when used here [-Wuninitialized]
    sound/pci/korg1212/korg1212.c:2101:33: note: initialize the variable 'd=
sp_code' to silence this warning
    1 warning generated.
    sound/pci/als300.c:713:6: warning: variable 'chip' is uninitialized whe=
n used here [-Wuninitialized]
    sound/pci/als300.c:691:25: note: initialize the variable 'chip' to sile=
nce this warning
    1 warning generated.
    sound/pci/cs4281.c:1298:2: warning: variable 'chip' is uninitialized wh=
en used here [-Wuninitialized]
    sound/pci/cs4281.c:1291:21: note: initialize the variable 'chip' to sil=
ence this warning
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3075:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3043:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5560 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
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
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section mi=
smatches

Errors:
    crypto/aegis128-neon-inner.c:11:10: fatal error: arm_neon.h: No such fi=
le or directory

Warnings:
    kernel/trace/trace_osnoise.c:1461:8: warning: =E2=80=98main=E2=80=99 is=
 usually a function [-Wmain]
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 17 warnings, 0 sect=
ion mismatches

Errors:
    arch/arm64/include/asm/neon-intrinsics.h:33:10: fatal error: 'arm_neon.=
h' file not found

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.
    sound/pci/korg1212/korg1212.c:2260:8: warning: variable 'dsp_code' is u=
ninitialized when used here [-Wuninitialized]
    sound/pci/korg1212/korg1212.c:2101:33: note: initialize the variable 'd=
sp_code' to silence this warning
    1 warning generated.
    sound/pci/als300.c:713:6: warning: variable 'chip' is uninitialized whe=
n used here [-Wuninitialized]
    sound/pci/als300.c:691:25: note: initialize the variable 'chip' to sile=
nce this warning
    1 warning generated.
    sound/pci/cs4281.c:1298:2: warning: variable 'chip' is uninitialized wh=
en used here [-Wuninitialized]
    sound/pci/cs4281.c:1291:21: note: initialize the variable 'chip' to sil=
ence this warning
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:114:10: warning: implic=
it conversion from enumeration type 'enum mt76_cipher_type' to different en=
umeration type 'enum mcu_cipher_type' [-Wenum-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

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
allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 section m=
ismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 section=
 mismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

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
ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

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
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x17ec): undefined reference to `printk'
    (.text+0x192c): undefined reference to `printk'
    (.text+0x1cac): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x18c8): undefined reference to `printk'
    (.text+0x1a14): undefined reference to `printk'
    (.text+0x1d88): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 se=
ction mismatches

Errors:
    (.text+0x1938): undefined reference to `printk'
    (.text+0x1a78): undefined reference to `printk'
    (.text+0x1df8): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x1938): undefined reference to `printk'
    (.text+0x1a78): undefined reference to `printk'
    (.text+0x1df8): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 se=
ction mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, =
0 section mismatches

Errors:
    /tmp/kci/linux/build/../arch/mips/kernel/genex.S:584: undefined referen=
ce to `printk'
    /tmp/kci/linux/build/../arch/mips/kernel/genex.S:587: undefined referen=
ce to `printk'

Warnings:
    mm/hugetlb.c:1180:1: warning: label =E2=80=98check_reserve=E2=80=99 def=
ined but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x17e8): undefined reference to `printk'
    (.text+0x1928): undefined reference to `printk'
    (.text+0x1ca8): undefined reference to `printk'

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
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x18dc): undefined reference to `printk'
    (.text+0x1c3c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, =
0 section mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

Warnings:
    mm/hugetlb.c:1180:1: warning: label =E2=80=98check_reserve=E2=80=99 def=
ined but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 =
section mismatches

Errors:
    (.text+0x1894): undefined reference to `printk'
    (.text+0x19d4): undefined reference to `printk'
    (.text+0x1d54): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings=
, 0 section mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 2 warnings, 0 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 3 warnings, 0 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.14.0-rc2-next-20210720/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

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
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

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
e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 section=
 mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

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
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x1804): undefined reference to `printk'
    (.text+0x1924): undefined reference to `printk'
    (.text+0x1c84): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 section=
 mismatches

Errors:
    (.text+0x18dc): undefined reference to `printk'
    (.text+0x1c3c): undefined reference to `printk'

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
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    mm/hugetlb.c:1180:1: warning: label =E2=80=98check_reserve=E2=80=99 def=
ined but not used [-Wunused-label]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.
    mm/hugetlb.c:1180:1: warning: unused label 'check_reserve' [-Wunused-la=
bel]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    mm/hugetlb.c:1180:1: warning: unused label 'check_reserve' [-Wunused-la=
bel]
    1 warning generated.
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    mm/hugetlb.c:1180:1: warning: label =E2=80=98check_reserve=E2=80=99 def=
ined but not used [-Wunused-label]
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]

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
ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x17e8): undefined reference to `printk'
    (.text+0x1928): undefined reference to `printk'
    (.text+0x1ca8): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x17e8): undefined reference to `printk'
    (.text+0x1928): undefined reference to `printk'
    (.text+0x1ca8): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x1850): undefined reference to `printk'
    (.text+0x1990): undefined reference to `printk'
    (.text+0x1d10): undefined reference to `printk'

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
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 se=
ction mismatches

Errors:
    (.text+0x1d04): undefined reference to `printk'
    (.text+0x1e64): undefined reference to `printk'
    (.text+0x2284): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
loongson2k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    (.text+0x18dc): undefined reference to `printk'
    (.text+0x1c3c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x1988): undefined reference to `printk'
    (.text+0x1d08): undefined reference to `printk'

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
malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warning=
s, 0 section mismatches

Errors:
    (.text+0x1690): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings,=
 0 section mismatches

Errors:
    (.text+0x1a14): undefined reference to `printk'
    (.text+0x1d94): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0=
 section mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

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
mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x18dc): undefined reference to `printk'
    (.text+0x1c3c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    kernel/trace/bpf_trace.c:968:14: warning: cast from pointer to integer =
of different size [-Wpointer-to-int-cast]

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
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    /tmp/kci/linux/build/../arch/mips/kernel/genex.S:584: undefined referen=
ce to `printk'
    /tmp/kci/linux/build/../arch/mips/kernel/genex.S:587: undefined referen=
ce to `printk'

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x1868): undefined reference to `printk'
    (.text+0x19a8): undefined reference to `printk'
    (.text+0x1d28): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

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
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

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
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 se=
ction mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x190c): undefined reference to `printk'
    (.text+0x1c8c): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

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
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, =
0 section mismatches

Errors:
    (.text+0x18c8): undefined reference to `printk'
    (.text+0x1a14): undefined reference to `printk'
    (.text+0x1d88): undefined reference to `printk'

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
tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x18e0): undefined reference to `printk'
    (.text+0x1c40): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x1870): undefined reference to `printk'
    (.text+0x19b0): undefined reference to `printk'
    (.text+0x1d30): undefined reference to `printk'

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches

Warnings:
    kernel/smpboot.c:50:20: warning: duplicate 'inline' declaration specifi=
er [-Wduplicate-decl-specifier]
    1 warning generated.
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_re=
locate_parse_slow()+0x427: stack state mismatch: cfa1=3D4+120 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x1d5: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0=
 errors, 0 warnings, 0 section mismatches

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
xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x198c): undefined reference to `printk'
    (.text+0x1d0c): undefined reference to `printk'

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
clang-built-linux/60f69db1.1c69fb81.4afc1.afc6%40mx.google.com.
