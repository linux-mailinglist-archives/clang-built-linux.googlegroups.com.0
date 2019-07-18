Return-Path: <clang-built-linux+bncBDT6TV45WMPRBKGNYDUQKGQEQ3KV7TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8039A6CA6D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 09:58:33 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id m26sf5894213ljc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 00:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563436713; cv=pass;
        d=google.com; s=arc-20160816;
        b=lqI9SZJWkNxstGYuZZzDIU5zMjSEan/TQHqcmmbwaY2oxmvjxtOMgy2khNhbugwXdk
         N7DyKEJEAg46HU9kbpU6xTRhpXqt2vCu2kys7bF2bLsb75tsZ6ELftfX8orhQOpcVNmP
         vuOVzlTo9fW02cunS4VugMoTv1g60dITUmMPYrumDq8dSKBUlym4pNJSektZOXsUCDkv
         44ZnTnOqEd/BCLKE217dO9laYvQwuItqo5ORgrlCHAJqxF6s+mKEDWk3DbJgBzq3cZuk
         Z54pWtBx5Da/ogJI39oWXmeuzvwLPrHN4V4JHqeWKxU+SIQVgwCe2XOcr1mYHp6Uk7er
         fjrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=JzoPZu/oSL9qMS/Th17qBf+aZ8BXW0YyX2QsV8Evugs=;
        b=k9YRjAGM9tH/vypR36lGTpaG5eYuGoByTBDhdrmivo0vJa6Qzn/whvGxkiSktK3csX
         XIOfb3R5SKx8oUjFG3XASvsxTHW0njeOej2YA4+3Ndhf9ULPBU3VR6lQ7YOXkR1H1fRq
         h3EzuisfvbVckKoqHHnSXetZc6TrCoO7Svo2W8EQLM7nTUPi9ADKL6rq+fx0kOhDNKiE
         5OXe71zgS2PYR1I8b8UD6LlAKwINFyJCH2lD9/82wzsVxI8qCvi/7TqWgNAOE0ZtYWBh
         kgJHD/DcmavE6ZcCsfEH/BMWzPyBFKPh+A73to0xwue8EoG/wb7JpRPp1C0DT+5bnLM/
         mvqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=CF03FWer;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JzoPZu/oSL9qMS/Th17qBf+aZ8BXW0YyX2QsV8Evugs=;
        b=S2X1b+khqkRy1+99Yr7z3ODlIyWPArtUq4jpx0dS8/XPYRNJ8Xe86djxSTLJT8iofA
         NZ7zkEJUUjU5yQRzdsorc4pgsTbk3mQiJbt/vMcWGt+V0tDHz9yuhyJS8qOOKMX/s2YP
         sfkOenF8oH4CNScnnsFSvAZCCg4vCkjSZwxT2xQfhtVKKJvF59lc++e3SBPIKbHnKqHS
         74E40PK3pRB7amcYDGeP9d8W9dlG6eGILZd5LbXjChjw5FD/2+gjkGP6i4rnKgbYPYlY
         2KscJY51gTnGIOrKbJG8qg0VofN1+NE5bkZBT0/DJw8WG2XD46JLz/XAjlxvZzN+7Kzv
         DAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JzoPZu/oSL9qMS/Th17qBf+aZ8BXW0YyX2QsV8Evugs=;
        b=amRPYV8Wi5sOYke1x08AozjX7J1qMEZ9mR5LLRLD6Uog6AYDaNUre/3BUzZYt8Tflc
         JncnU9cXo0MmFGiOuhtf4WuNCAbbdtBlJY0rKMj3DuIZ+TIniEm9ZBOm4f1qj1LmLxUq
         qQNfVyh25F4hIKhIeySG6bStECU7AGODi6QmEVq0z5MebXNgQ76WjR+ZovcalyWYe/2u
         KkJ/TbapQTn5+ci+fEK3VtxR6iQ+fPvBDTIF8GEqs1LSRqDVrXtdmRQrcTnBbfIQWjjD
         MqAYWfy1be5cXvB65B9HXOaxBRkFqEMajr+2XWGsIbjgYZ+a5jijloTozed0TtKHxUGR
         sKzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWDlrjsVfdFhoLhBpmyPSTIHnpKe892QFOwRaBGuZ/TcQtLXTo
	OP2qhd784X3EUtYFI//Hjfc=
X-Google-Smtp-Source: APXvYqxYRHM6Z+ZLa6bsSav5XkW/iRVGZ3OVUaJPbKRSq8C1FutzJ5AwLnGqy79BbbWECJ3djda6aQ==
X-Received: by 2002:a05:651c:95:: with SMTP id 21mr23604236ljq.128.1563436712932;
        Thu, 18 Jul 2019 00:58:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b601:: with SMTP id r1ls3154961ljn.3.gmail; Thu, 18 Jul
 2019 00:58:32 -0700 (PDT)
X-Received: by 2002:a2e:8155:: with SMTP id t21mr23257838ljg.80.1563436712275;
        Thu, 18 Jul 2019 00:58:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563436712; cv=none;
        d=google.com; s=arc-20160816;
        b=hzojraku067178fkDvHRjnDzL50kaIEpZxwYz4uJ79UbQyIkww/BxwSnwwCW6MCF8a
         +qBVC1qc3Q6rhDfhFw0O6jI9jy8GDEbT/VRuQLfgnzf+jwGuD5BA2Eivmi6MSpFWp/BG
         OMw3OLLRiVkF4WDexNfIeUE/6IE2C4AbbdT9IN0wDoNiiJmc5hqxvflGy2qHcdK4nKxS
         dmJEX2jAxDHjTpXhn1978R3MB4VYjopyuIRh0aEsCoiMby80GLKeQLjXr0A7qoqKY8TX
         zdODWxYNQS7HVVHQAUJ7ru41NTkSgYPfwyOEmFTq9fNkHVWZ/UGV6q+mAa1FVzUsWDBp
         Whcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=a4pfpJ26OnssaAxtJObr4ofSrRSb3nT1o4bReOK/xW0=;
        b=oEt9sO0O+6VcslszWJCM2pzorpG/NGpymgqg6XF5hniFT0hf0bWaZOZPxqOjIlt1W0
         aBBMz+C62MHREonYaL5X0l/EOkyovbMjJMpJFQ2BOKFHLrXrA3RUwXWf5XSQBSEHFQGM
         8RKZpWGzHEAIoWeC6TU9ZGkxAkfPZMeOo0VkkMmAiQtbnRNgDlsPa57GWZVH0XJaEXWd
         momSG71znM48jEWejiRh8dfB3RqY1MH5EWFN4j6MiRhK1CO+Nbpw+wyqMlhVQJ1Mq0ri
         iKcRfqtDMGdqclOIIMZ15X+4RwuU5nBb9KxAO79ZFI1yfwX5JXLtLX4RvtWCsej8kb80
         3OVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=CF03FWer;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id q11si1359333ljg.2.2019.07.18.00.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 00:58:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Received: by mail-wr1-x42a.google.com with SMTP id p17so27525179wrf.11
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 00:58:31 -0700 (PDT)
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr51117304wro.284.1563436709653;
        Thu, 18 Jul 2019 00:58:29 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id u186sm41147877wmu.26.2019.07.18.00.58.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 00:58:29 -0700 (PDT)
Message-ID: <5d3026a5.1c69fb81.d5363.d0ec@mx.google.com>
Date: Thu, 18 Jul 2019 00:58:29 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20190718
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 229 builds: 7 failed, 222 passed, 23 errors,
 2067 warnings (next-20190718)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=CF03FWer;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 229 builds: 7 failed, 222 passed, 23 errors, 2067 warnin=
gs (next-20190718)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190718/

Tree: next
Branch: master
Git Describe: next-20190718
Git Commit: 6d21a41b7b1f46d5d5c3ddc26b55c5c4a6a826b9
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL
    malta_kvm_defconfig: (gcc-8) FAIL

riscv:
    allnoconfig: (gcc-8) FAIL
    defconfig: (gcc-8) FAIL
    defconfig+kselftest: (gcc-8) FAIL
    rv32_defconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 5 warnings
    axs103_smp_defconfig (gcc-8): 5 warnings
    haps_hs_defconfig (gcc-8): 5 warnings
    haps_hs_smp_defconfig (gcc-8): 5 warnings
    hsdk_defconfig (gcc-8): 5 warnings
    nsim_hs_defconfig (gcc-8): 5 warnings
    nsim_hs_defconfig (gcc-8): 5 warnings
    nsim_hs_smp_defconfig (gcc-8): 5 warnings
    nsimosci_hs_defconfig (gcc-8): 5 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 5 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 4 warnings
    vdk_hs38_smp_defconfig (gcc-8): 4 warnings

arm64:
    allmodconfig (gcc-8): 205 warnings
    allnoconfig (gcc-8): 5 warnings
    defconfig (gcc-8): 152 warnings
    defconfig (gcc-8): 152 warnings
    defconfig (gcc-8): 152 warnings
    defconfig (gcc-8): 152 warnings
    tinyconfig (gcc-8): 5 warnings

arm:
    acs5k_defconfig (gcc-8): 3 warnings
    acs5k_tiny_defconfig (gcc-8): 3 warnings
    allmodconfig (gcc-8): 80 warnings
    allnoconfig (gcc-8): 1 warning
    am200epdkit_defconfig (gcc-8): 3 warnings
    aspeed_g4_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (gcc-8): 8 warnings
    assabet_defconfig (gcc-8): 4 warnings
    at91_dt_defconfig (gcc-8): 7 warnings
    axm55xx_defconfig (gcc-8): 20 warnings
    badge4_defconfig (gcc-8): 4 warnings
    bcm2835_defconfig (gcc-8): 8 warnings
    cerfcube_defconfig (gcc-8): 4 warnings
    clps711x_defconfig (gcc-8): 3 warnings
    cm_x2xx_defconfig (gcc-8): 3 warnings
    cm_x300_defconfig (gcc-8): 3 warnings
    cns3420vb_defconfig (gcc-8): 3 warnings
    colibri_pxa270_defconfig (gcc-8): 4 warnings
    colibri_pxa300_defconfig (gcc-8): 3 warnings
    collie_defconfig (gcc-8): 4 warnings
    corgi_defconfig (gcc-8): 4 warnings
    davinci_all_defconfig (gcc-8): 3 warnings
    dove_defconfig (gcc-8): 3 warnings
    ebsa110_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 3 warnings
    ep93xx_defconfig (gcc-8): 4 warnings
    eseries_pxa_defconfig (gcc-8): 2 warnings
    exynos_defconfig (gcc-8): 11 warnings
    ezx_defconfig (gcc-8): 3 warnings
    footbridge_defconfig (gcc-8): 4 warnings
    gemini_defconfig (gcc-8): 2 warnings
    h3600_defconfig (gcc-8): 4 warnings
    h5000_defconfig (gcc-8): 3 warnings
    hackkit_defconfig (gcc-8): 2 warnings
    hisi_defconfig (gcc-8): 3 warnings
    imote2_defconfig (gcc-8): 3 warnings
    imx_v4_v5_defconfig (gcc-8): 6 warnings
    imx_v6_v7_defconfig (gcc-8): 13 warnings
    integrator_defconfig (gcc-8): 3 warnings
    iop13xx_defconfig (gcc-8): 3 warnings
    iop32x_defconfig (gcc-8): 3 warnings
    iop33x_defconfig (gcc-8): 3 warnings
    ixp4xx_defconfig (gcc-8): 2 warnings
    jornada720_defconfig (gcc-8): 2 warnings
    keystone_defconfig (gcc-8): 8 warnings
    ks8695_defconfig (gcc-8): 3 warnings
    lart_defconfig (gcc-8): 2 warnings
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 4 warnings
    lpd270_defconfig (gcc-8): 3 warnings
    lubbock_defconfig (gcc-8): 3 warnings
    magician_defconfig (gcc-8): 3 warnings
    mainstone_defconfig (gcc-8): 3 warnings
    milbeaut_m10v_defconfig (gcc-8): 8 warnings
    mini2440_defconfig (gcc-8): 6 warnings
    mmp2_defconfig (gcc-8): 4 warnings
    moxart_defconfig (gcc-8): 2 warnings
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 3 warnings
    multi_v5_defconfig (gcc-8): 8 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    mv78xx0_defconfig (gcc-8): 4 warnings
    mvebu_v5_defconfig (gcc-8): 4 warnings
    mvebu_v7_defconfig (gcc-8): 9 warnings
    mxs_defconfig (gcc-8): 4 warnings
    neponset_defconfig (gcc-8): 4 warnings
    netwinder_defconfig (gcc-8): 3 warnings
    nhk8815_defconfig (gcc-8): 4 warnings
    nuc910_defconfig (gcc-8): 3 warnings
    nuc950_defconfig (gcc-8): 3 warnings
    nuc960_defconfig (gcc-8): 3 warnings
    omap1_defconfig (gcc-8): 13 warnings
    omap2plus_defconfig (gcc-8): 19 warnings
    orion5x_defconfig (gcc-8): 4 warnings
    oxnas_v6_defconfig (gcc-8): 9 warnings
    palmz72_defconfig (gcc-8): 3 warnings
    pcm027_defconfig (gcc-8): 3 warnings
    pleb_defconfig (gcc-8): 4 warnings
    prima2_defconfig (gcc-8): 3 warnings
    pxa168_defconfig (gcc-8): 3 warnings
    pxa255-idp_defconfig (gcc-8): 3 warnings
    pxa3xx_defconfig (gcc-8): 4 warnings
    pxa910_defconfig (gcc-8): 3 warnings
    pxa_defconfig (gcc-8): 8 warnings
    qcom_defconfig (gcc-8): 14 warnings
    realview_defconfig (gcc-8): 9 warnings
    rpc_defconfig (gcc-8): 10 warnings
    s3c2410_defconfig (gcc-8): 4 warnings
    s3c6400_defconfig (gcc-8): 5 warnings
    s5pv210_defconfig (gcc-8): 5 warnings
    sama5_defconfig (gcc-8): 7 warnings
    shannon_defconfig (gcc-8): 4 warnings
    shmobile_defconfig (gcc-8): 11 warnings
    simpad_defconfig (gcc-8): 4 warnings
    socfpga_defconfig (gcc-8): 9 warnings
    spear13xx_defconfig (gcc-8): 3 warnings
    spear3xx_defconfig (gcc-8): 3 warnings
    spear6xx_defconfig (gcc-8): 3 warnings
    spitz_defconfig (gcc-8): 4 warnings
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 11 warnings
    tango4_defconfig (gcc-8): 3 warnings
    tct_hammer_defconfig (gcc-8): 5 warnings
    tegra_defconfig (gcc-8): 10 warnings
    tinyconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 4 warnings
    u300_defconfig (gcc-8): 3 warnings
    u8500_defconfig (gcc-8): 23 warnings
    versatile_defconfig (gcc-8): 3 warnings
    vexpress_defconfig (gcc-8): 9 warnings
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 3 warnings
    vt8500_v6_v7_defconfig (gcc-8): 3 warnings
    xcep_defconfig (gcc-8): 3 warnings
    zeus_defconfig (gcc-8): 3 warnings
    zx_defconfig (gcc-8): 9 warnings

i386:
    allnoconfig (gcc-8): 3 warnings
    i386_defconfig (gcc-8): 5 warnings
    i386_defconfig (gcc-8): 5 warnings
    tinyconfig (gcc-8): 3 warnings

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 3 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 3 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 2 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 2 warnings
    bigsur_defconfig (gcc-8): 6 warnings
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 1 error, 4 warnings
    ci20_defconfig (gcc-8): 2 warnings
    cobalt_defconfig (gcc-8): 2 warnings
    db1xxx_defconfig (gcc-8): 4 warnings
    decstation_64_defconfig (gcc-8): 6 warnings
    decstation_defconfig (gcc-8): 2 warnings
    decstation_r4k_defconfig (gcc-8): 2 warnings
    e55_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 6 warnings
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 3 warnings
    ip22_defconfig (gcc-8): 3 warnings
    ip27_defconfig (gcc-8): 7 warnings
    ip28_defconfig (gcc-8): 7 warnings
    ip32_defconfig (gcc-8): 7 warnings
    jazz_defconfig (gcc-8): 2 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 6 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 6 warnings
    malta_defconfig (gcc-8): 2 warnings
    malta_kvm_defconfig (gcc-8): 1 error, 2 warnings
    malta_kvm_guest_defconfig (gcc-8): 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 4 warnings
    maltaaprp_defconfig (gcc-8): 2 warnings
    maltasmvp_defconfig (gcc-8): 2 warnings
    maltasmvp_eva_defconfig (gcc-8): 2 warnings
    maltaup_defconfig (gcc-8): 2 warnings
    maltaup_xpa_defconfig (gcc-8): 2 warnings
    markeins_defconfig (gcc-8): 3 warnings
    mips_paravirt_defconfig (gcc-8): 6 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 18 warnings
    nlm_xlp_defconfig (gcc-8): 7 warnings
    nlm_xlr_defconfig (gcc-8): 3 warnings
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 2 warnings
    pistachio_defconfig (gcc-8): 2 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 4 warnings
    rb532_defconfig (gcc-8): 3 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 4 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 3 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 2 warnings

riscv:
    allnoconfig (gcc-8): 3 errors, 1 warning
    defconfig (gcc-8): 4 errors, 1 warning
    defconfig (gcc-8): 6 errors, 1 warning
    rv32_defconfig (gcc-8): 5 errors, 3 warnings
    tinyconfig (gcc-8): 3 errors, 1 warning

x86_64:
    allmodconfig (gcc-8): 52 warnings
    allnoconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 3 warnings
    x86_64_defconfig (gcc-8): 2 warnings
    x86_64_defconfig (gcc-8): 2 warnings

Errors summary:

    21   arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of =
'flush_dcache_page'
    1    include/linux/device.h:1494:2: error: this statement may fall thro=
ugh [-Werror=3Dimplicit-fallthrough=3D]
    1    arch/mips/kvm/emulate.c:142:18: error: this statement may fall thr=
ough [-Werror=3Dimplicit-fallthrough=3D]

Warnings summary:

    315  arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    195  <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    121  arch/arm/kernel/signal.c:598:12: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    113  arch/arm/mm/alignment.c:753:15: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    93   arch/arm/mm/alignment.c:688:6: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    35   drivers/perf/arm_pmu.c:726:3: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    28   arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    28   arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    25   include/linux/compiler.h:78:22: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    25   arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    25   arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    25   arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    25   arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    13   drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    13   drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    13   drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    12   include/linux/compiler.h:328:5: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    12   drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this sta=
tement may fall through [-Wimplicit-fallthrough=3D]
    12   drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this sta=
tement may fall through [-Wimplicit-fallthrough=3D]
    12   drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    12   arch/arc/kernel/unwind.c:836:20: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    12   arch/arc/kernel/unwind.c:827:20: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    11   drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    11   drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    10   drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this sta=
tement may fall through [-Wimplicit-fallthrough=3D]
    9    printk(KERN_WARNING "SA1100 flash: unknown base address "
    9    include/linux/printk.h:309:2: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    9    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    9    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    9    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    9    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    9    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    9    arch/x86/events/intel/core.c:5006:8: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    9    arch/x86/events/intel/core.c:4957:8: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    8    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    8    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    8    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statem=
ent may fall through [-Wimplicit-fallthrough=3D]
    8    drivers/dma/imx-dma.c:542:6: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    8    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    8    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    8    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    7    include/linux/printk.h:302:2: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    7    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    7    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    7    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    7    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    7    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    7    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    7    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    7    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    7    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    7    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    7    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    6    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    6    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    6    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    6    arch/arm/include/asm/io.h:92:22: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    6    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning =
(reg_format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 by=
tes) (#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    6    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warn=
ing (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #=
size-cells value
    6    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warn=
ing (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #=
address-cells value
    6    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_=
reg): Failed prerequisite 'reg_format'
    6    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_devi=
ce_bus_num): Failed prerequisite 'reg_format'
    6    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_=
reg): Failed prerequisite 'reg_format'
    5    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kernel/module.c:395:19: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kernel/module.c:328:19: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kernel/module.c:322:19: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kernel/module.c:316:19: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kernel/hw_breakpoint.c:544:7: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kernel/hw_breakpoint.c:540:7: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    4    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    4    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    3    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    3    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    3    drivers/gpu/drm/amd/amdgpu/amdgpu.h:1028:24: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    3    arch/mips/oprofile/op_model_mipsxx.c:242:6: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    sound/soc/ti/rx51.c:57:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    2    include/linux/dynamic_debug.h:122:52: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    2    include/linux/device.h:1494:2: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    2    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret=
' [-Wunused-variable]
    2    drivers/usb/host/ohci-tmio.c:103:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/host/ohci-tmio.c:101:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/scsi/wd33c93.c:1856:11: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    2    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:428:1: wa=
rning: the frame size of 4208 bytes is larger than 2048 bytes [-Wframe-larg=
er-than=3D]
    2    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame s=
ize of 5280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame s=
ize of 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame s=
ize of 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/media/dvb-frontends/cxd2841er.c:3630:1: warning: the frame=
 size of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/hsi/clients/ssi_protocol.c:466:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/hsi/clients/ssi_protocol.c:291:6: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/tinydrm/ili9225.c:289:1: warning: the frame size o=
f 2720 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/amd/amdgpu/../amdkfd/kfd_crat.c:670:22: warning: t=
his statement may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/crypto/ux500/cryp/cryp.c:324:16: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    2    drivers/crypto/ux500/cryp/cryp.c:320:16: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    2    drivers/crypto/ux500/cryp/cryp.c:316:16: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    2    drivers/cpufreq/ti-cpufreq.c:79:20: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    2    cc1: all warnings being treated as errors
    2    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/apic/probe_32.c:183:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    {standard input}:131: Warning: macro instruction expanded into mul=
tiple instructions
    1    warning: same module names found:
    1    sound/soc/ti/n810.c:48:10: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    1    net/wireless/nl80211.c:6481:1: warning: the frame size of 2128 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:6481:1: warning: the frame size of 2112 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:5117:1: warning: the frame size of 2784 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:5117:1: warning: the frame size of 2776 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:2363:1: warning: the frame size of 4640 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:2363:1: warning: the frame size of 4584 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:1732:1: warning: the frame size of 2280 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/wireless/nl80211.c:1732:1: warning: the frame size of 2272 byt=
es is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/ieee802154/nl802154.c:548:1: warning: the frame size of 2256 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/ieee802154/nl802154.c:548:1: warning: the frame size of 2224 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/caif/cfctrl.c:549:1: warning: the frame size of 2608 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/caif/cfctrl.c:549:1: warning: the frame size of 2512 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:1505:1: warning: the frame size of 2696 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    net/bridge/br_netlink.c:1505:1: warning: the frame size of 2688 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    lib/ubsan.o: warning: objtool: ubsan_type_mismatch_common()+0x59: =
call to stackleak_track_stack() with UACCESS enabled
    1    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2352 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2224 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/super.c:1186:1: warning: the frame size of 3184 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/super.c:1186:1: warning: the frame size of 3176 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:2050:1: warning: the frame size of 2080 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:1677:1: warning: the frame size of 2616 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/namei.c:1677:1: warning: the frame size of 2592 bytes is =
larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2112 =
bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2080 =
bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/dir.c:3080:1: warning: the frame size of 2056 bytes is la=
rger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/aops.c:1892:1: warning: the frame size of 2128 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    fs/ocfs2/aops.c:1892:1: warning: the frame size of 2112 bytes is l=
arger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    1    drivers/watchdog/ar7_wdt.c:237:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:449:23: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1549:6: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1547:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1545:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1543:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1540:6: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1538:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1535:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/jz4740_fb.c:300:8: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/acornfb.c:860:9: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    1    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c:2764:1: warning: t=
he frame size of 2792 bytes is larger than 2048 bytes [-Wframe-larger-than=
=3D]
    1    drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c:2764:1: warning: t=
he frame size of 2064 bytes is larger than 2048 bytes [-Wframe-larger-than=
=3D]
    1    drivers/scsi/arm/fas216.c:913:6: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:605:20: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1959:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1573:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1424:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1413:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/power/supply/ab8500_charger.c:738:6: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/pcmcia/db1xxx_ss.c:269:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/pcmcia/db1xxx_ss.c:257:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the =
frame size of 2656 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the=
 frame size of 2472 bytes is larger than 2048 bytes [-Wframe-larger-than=3D=
]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:26023=
:1: warning: the frame size of 2528 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:26023=
:1: warning: the frame size of 2440 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894=
:1: warning: the frame size of 3136 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894=
:1: warning: the frame size of 3128 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552=
:1: warning: the frame size of 3168 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552=
:1: warning: the frame size of 3152 bytes is larger than 2048 bytes [-Wfram=
e-larger-than=3D]
    1    drivers/net/hamradio/baycom_epp.c:491:7: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    1    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the fra=
me size of 2360 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the fra=
me size of 2352 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/bonding/bond_netlink.c:686:1: warning: the frame size =
of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/net/bonding/bond_netlink.c:686:1: warning: the frame size =
of 2072 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    drivers/misc/habanalabs/goya/goya.c:698:21: warning: format '%llx'=
 expects argument of type 'long long unsigned int', but argument 4 has type=
 'dma_addr_t' {aka 'unsigned int'} [-Wformat=3D]
    1    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 28=
48 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 28=
40 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the fra=
me size of 2144 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the fra=
me size of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/i2c/tvp5150.c:253:1: warning: the frame size of 3968=
 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/i2c/tvp5150.c:253:1: warning: the frame size of 3952=
 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/i2c/mt9t112.c:480:1: warning: the frame size of 2096=
 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame s=
ize of 2104 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame s=
ize of 2808 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame s=
ize of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame s=
ize of 5888 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame s=
ize of 5880 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame s=
ize of 2328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame s=
ize of 2320 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame s=
ize of 2576 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame s=
ize of 2568 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame s=
ize of 3288 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame s=
ize of 3280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame s=
ize of 3016 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame s=
ize of 3008 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame s=
ize of 5320 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame s=
ize of 5312 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame s=
ize of 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame s=
ize of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/cxd2841er.c:3123:1: warning: the frame=
 size of 2736 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/media/dvb-frontends/cxd2841er.c:3123:1: warning: the frame=
 size of 2720 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/panel/panel-sitronix-st7701.c:198:1: warning: the =
frame size of 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/panel/panel-sitronix-st7701.c:198:1: warning: the =
frame size of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info=
' [-Wunused-variable]
    1    arch/x86/kvm/x86.c:4338:1: warning: the frame size of 2160 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    1    arch/x86/kernel/cpu/mshyperv.c:342:1: warning: the frame size of 2=
856 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    arch/mips/pci/ops-bcm63xx.c:474:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:305:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:302:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:299:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:221:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:219:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:217:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:201:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:199:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:197:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:180:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:177:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/mips/oprofile/op_model_mipsxx.c:174:3: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/mach-rpc/riscpc.c:48:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    1    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    /tmp/cclbxGiQ.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cclbxGiQ.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1176:warning: override: UNWINDER_GUESS changes choice stat=
e

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
acs5k_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
acs5k_tiny_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 80 warnings, 0 section =
mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/cpufreq/ti-cpufreq.c:79:20: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/power/supply/ab8500_charger.c:738:6: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    /tmp/cclbxGiQ.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cclbxGiQ.s:18191: Warning: using r15 results in unpredictable beha=
viour
    drivers/crypto/ux500/cryp/cryp.c:316:16: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/crypto/ux500/cryp/cryp.c:320:16: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/crypto/ux500/cryp/cryp.c:324:16: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/io.h:92:22: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/io.h:92:22: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/io.h:92:22: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    sound/soc/ti/n810.c:48:10: warning: this statement may fall through [-W=
implicit-fallthrough=3D]
    sound/soc/ti/rx51.c:57:6: warning: this statement may fall through [-Wi=
mplicit-fallthrough=3D]
    drivers/gpu/drm/amd/amdgpu/amdgpu.h:1028:24: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:291:6: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:466:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/misc/habanalabs/goya/goya.c:698:21: warning: format '%llx' expe=
cts argument of type 'long long unsigned int', but argument 4 has type 'dma=
_addr_t' {aka 'unsigned int'} [-Wformat=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/net/hamradio/baycom_epp.c:491:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    include/linux/device.h:1494:2: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    drivers/usb/host/ohci-tmio.c:101:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/usb/host/ohci-tmio.c:103:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    warning: same module names found:
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_=
format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) =
(#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #addre=
ss-cells value
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-=
cells value

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 205 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:316:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:322:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:328:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:395:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:540:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:544:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    net/bridge/br_netlink.c:1505:1: warning: the frame size of 2688 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    net/caif/cfctrl.c:549:1: warning: the frame size of 2512 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    net/ieee802154/nl802154.c:548:1: warning: the frame size of 2256 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2112 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/aops.c:1892:1: warning: the frame size of 2128 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:2050:1: warning: the frame size of 2080 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:1677:1: warning: the frame size of 2592 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/super.c:1186:1: warning: the frame size of 3184 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2352 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/amdgpu.h:1028:24: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    include/linux/dynamic_debug.h:122:52: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/amd/amdgpu/../amdkfd/kfd_crat.c:670:22: warning: this s=
tatement may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/panel/panel-sitronix-st7701.c:198:1: warning: the frame=
 size of 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1732:1: warning: the frame size of 2272 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:6481:1: warning: the frame size of 2128 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2363:1: warning: the frame size of 4640 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5117:1: warning: the frame size of 2784 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/tinydrm/ili9225.c:289:1: warning: the frame size of 272=
0 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/i2c/tvp5150.c:253:1: warning: the frame size of 3968 byte=
s is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/i2c/mt9t112.c:480:1: warning: the frame size of 2096 byte=
s is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame size o=
f 3008 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame size o=
f 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame size o=
f 2320 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame size o=
f 3280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame size o=
f 5312 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame size o=
f 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame size o=
f 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame size o=
f 2576 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame size o=
f 5888 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame size o=
f 5280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame size o=
f 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3123:1: warning: the frame size=
 of 2736 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3630:1: warning: the frame size=
 of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2144 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 2848 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/net/bonding/bond_netlink.c:686:1: warning: the frame size of 20=
80 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the frame si=
ze of 2352 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552:1: w=
arning: the frame size of 3168 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894:1: w=
arning: the frame size of 3136 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:26023:1: w=
arning: the frame size of 2528 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:428:1: warning=
: the frame size of 4208 bytes is larger than 2048 bytes [-Wframe-larger-th=
an=3D]
    drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c:2764:1: warning: the fr=
ame size of 2064 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 52 warnings, 0 secti=
on mismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/kvm/x86.c:4338:1: warning: the frame size of 2160 bytes is lar=
ger than 2048 bytes [-Wframe-larger-than=3D]
    arch/x86/kernel/cpu/mshyperv.c:342:1: warning: the frame size of 2856 b=
ytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/dlm/dlmrecovery.c:737:1: warning: the frame size of 2080 bytes=
 is larger than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/aops.c:1892:1: warning: the frame size of 2112 bytes is larger=
 than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/dir.c:3080:1: warning: the frame size of 2056 bytes is larger =
than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/namei.c:1677:1: warning: the frame size of 2616 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/super.c:1186:1: warning: the frame size of 3176 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    fs/ocfs2/xattr.c:3678:1: warning: the frame size of 2224 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    net/bridge/br_netlink.c:1505:1: warning: the frame size of 2696 bytes i=
s larger than 2048 bytes [-Wframe-larger-than=3D]
    net/caif/cfctrl.c:549:1: warning: the frame size of 2608 bytes is large=
r than 2048 bytes [-Wframe-larger-than=3D]
    lib/ubsan.o: warning: objtool: ubsan_type_mismatch_common()+0x59: call =
to stackleak_track_stack() with UACCESS enabled
    net/ieee802154/nl802154.c:548:1: warning: the frame size of 2224 bytes =
is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/amdgpu.h:1028:24: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    include/linux/dynamic_debug.h:122:52: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/amd/amdgpu/../amdkfd/kfd_crat.c:670:22: warning: this s=
tatement may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/panel/panel-sitronix-st7701.c:198:1: warning: the frame=
 size of 2080 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/gpu/drm/tinydrm/ili9225.c:289:1: warning: the frame size of 272=
0 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:1732:1: warning: the frame size of 2280 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:6481:1: warning: the frame size of 2112 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:2363:1: warning: the frame size of 4584 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    net/wireless/nl80211.c:5117:1: warning: the frame size of 2776 bytes is=
 larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1842:1: warning: the frame size o=
f 3016 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2125:1: warning: the frame size o=
f 2096 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2496:1: warning: the frame size o=
f 2328 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4568:1: warning: the frame size o=
f 2104 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1940:1: warning: the frame size o=
f 3288 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1583:1: warning: the frame size o=
f 5320 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1111:1: warning: the frame size o=
f 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1195:1: warning: the frame size o=
f 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:4253:1: warning: the frame size o=
f 2808 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:1152:1: warning: the frame size o=
f 2088 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:2057:1: warning: the frame size o=
f 2568 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3078:1: warning: the frame size o=
f 5880 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv090x.c:3419:1: warning: the frame size o=
f 5280 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/stv0367.c:1902:1: warning: the frame size o=
f 3296 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3123:1: warning: the frame size=
 of 2720 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/dvb-frontends/cxd2841er.c:3630:1: warning: the frame size=
 of 2784 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/i2c/tvp5150.c:253:1: warning: the frame size of 3952 byte=
s is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/media/pci/saa7134/saa7134-cards.c:8074:1: warning: the frame si=
ze of 2128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/bonding/bond_netlink.c:686:1: warning: the frame size of 20=
72 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/media/tuners/r820t.c:1327:1: warning: the frame size of 2840 by=
tes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/ethernet/rocker/rocker_ofdpa.c:560:1: warning: the frame si=
ze of 2360 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c:2764:1: warning: the fr=
ame size of 2792 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552:1: w=
arning: the frame size of 3152 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16894:1: w=
arning: the frame size of 3128 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:26023:1: w=
arning: the frame size of 2440 bytes is larger than 2048 bytes [-Wframe-lar=
ger-than=3D]
    drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c:428:1: warning=
: the frame size of 4208 bytes is larger than 2048 bytes [-Wframe-larger-th=
an=3D]
    drivers/net/wireless/ralink/rt2x00/rt2500usb.c:880:1: warning: the fram=
e size of 2472 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/net/wireless/ralink/rt2x00/rt73usb.c:1283:1: warning: the frame=
 size of 2656 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section =
mismatches

Warnings:
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 section m=
ismatches

Errors:
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section m=
ismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/watchdog/ar7_wdt.c:237:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 20 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/pci/ops-bcm63xx.c:474:6: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, =
0 section mismatches

Errors:
    include/linux/device.h:1494:2: error: this statement may fall through [=
-Werror=3Dimplicit-fallthrough=3D]

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings,=
 0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mismatch =
in conditional expression
    drivers/pcmcia/db1xxx_ss.c:257:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/pcmcia/db1xxx_ss.c:269:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section mis=
matches

Errors:
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 152 warnings, 0 section =
mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:316:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:322:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:328:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:395:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:540:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:544:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 152 warnings, 0 section mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:316:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:322:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:328:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:395:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:540:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:544:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, clang-8) =E2=80=94 PASS, 0 erro=
rs, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 152 warnings, 0 section mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:316:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:322:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:328:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:395:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:540:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:544:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, clang-8) =E2=80=94 PASS, 0 erro=
rs, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 FAIL, 6 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 152 warnings, =
0 section mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:316:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:322:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:328:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/module.c:395:19: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:540:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm64/kernel/hw_breakpoint.c:544:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sectio=
n mismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/apic/probe_32.c:183:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings=
, 0 section mismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/apic/probe_32.c:183:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 13 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
iop13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
iop33x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/scsi/wd33c93.c:1856:11: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/scsi/wd33c93.c:1856:11: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
ks8695_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/kvm/emulate.c:142:18: error: this statement may fall through =
[-Werror=3Dimplicit-fallthrough=3D]

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    {standard input}:131: Warning: macro instruction expanded into multiple=
 instructions
    {standard input}:134: Warning: macro instruction expanded into multiple=
 instructions
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, =
0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/oprofile/op_model_mipsxx.c:217:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:219:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:221:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:197:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:199:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:201:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:299:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:302:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:305:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:242:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:242:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:242:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:174:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:177:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    arch/mips/oprofile/op_model_mipsxx.c:180:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_=
format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) =
(#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #addre=
ss-cells value
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-=
cells value

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 52 warnings, 0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_=
format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) =
(#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #addre=
ss-cells value
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-=
cells value

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 52 warnings, 0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_=
format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) =
(#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #addre=
ss-cells value
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-=
cells value

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52=
 warnings, 0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_=
format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) =
(#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #addre=
ss-cells value
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-=
cells value

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52 warn=
ings, 0 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_=
format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) =
(#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #addre=
ss-cells value
    arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (=
avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-=
cells value

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section =
mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nuc910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
nuc950_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
nuc960_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 13 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:449:23: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1535:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1538:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1540:6: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1543:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1545:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1547:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1549:6: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/cpufreq/ti-cpufreq.c:79:20: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:303:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/omap-usb-host.c:345:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:291:6: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:466:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    sound/soc/ti/rx51.c:57:6: warning: this statement may fall through [-Wi=
mplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 section =
mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    include/linux/device.h:1494:2: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    drivers/usb/host/ohci-tmio.c:101:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/usb/host/ohci-tmio.c:103:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/video/fbdev/jz4740_fb.c:300:8: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info' [-W=
unused-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 10 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/mach-rpc/riscpc.c:48:13: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:913:6: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1959:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1413:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1424:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1573:6: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:605:20: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/acornfb.c:860:9: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 5 errors, 3 warnings, 0 secti=
on mismatches

Errors:
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/sdhci-s3c.c:613:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, =
0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:316:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:992:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 s=
ection mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 10 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section mi=
smatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section m=
ismatches

Warnings:
    include/linux/printk.h:302:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    .config:1176:warning: override: UNWINDER_GUESS changes choice state
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 section mi=
smatches

Errors:
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'
    arch/riscv/include/asm/cacheflush.h:22:20: error: redefinition of 'flus=
h_dcache_page'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/mtd/nand/onenand/onenand_base.c:3261:17: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 23 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/crypto/ux500/cryp/cryp.c:316:16: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/crypto/ux500/cryp/cryp.c:320:16: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    drivers/crypto/ux500/cryp/cryp.c:324:16: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/io.h:92:22: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/io.h:92:22: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/io.h:92:22: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:424:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:440:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:459:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:332:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:352:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/usb/phy/phy-ab8500-usb.c:370:9: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    arch/x86/events/intel/core.c:4957:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/x86/events/intel/core.c:5006:8: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 section m=
ismatches

Warnings:
    arch/arm/kernel/signal.c:598:12: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:688:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    arch/arm/mm/alignment.c:753:15: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/compiler.h:78:22: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/perf/arm_pmu.c:726:3: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5d3026a5.1c69fb81.d5363.d0ec%40mx.google.com.
