Return-Path: <clang-built-linux+bncBDT6TV45WMPRBUMYQHYQKGQE2TDXK2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B1A13D933
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 12:43:13 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id z17sf5038974ljz.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 03:43:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579174993; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpiH9IJQu7w9Fp7WhjtHL/kg5XXKYMSmnwsE2Kt+/ac84FZt5z9PHOgAW8rR8QGK8e
         We6r+pgLqiFXDZMtRDn+iQrFcZiJng+ICrQ/K7UhLr+Wnqk5npmlH/peDNCbBo0GsgMS
         bTeTChZZfUZb1GKbjUxa+6G46G04o/N+EarlvMNFyu50Mv0vN7v3QQiqn0i2mZWe7+dm
         OBlkiZ/nw5Za8cnQfA6gre3xVtk5ChN7uDDlecdc6GBBGfC780o5CIQHcaddMnHv7PI4
         ZeywfCdIIry27qxGLvnGZ6fB8rQFzpijxLZ0E7OvVU9dOk6N0VVLZwCxlA7ZmioeubEC
         3Y7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=LCLgsDKadJq7VJFQ1wbueg0I1aeaH96ffqvkNmwqqR4=;
        b=QGr2wicJtgbh3tQvy6pNzTZqbz625ck7Rq2gEvHgeV8ioHivrKd5oyJc4TcdiLknpx
         loCWJTIrEO1foxC9aBpeTvJNQpK38q1eW+gNdoiUTQ3ICi4HzJz6pN9GRVQbzpp+phDK
         C0LO8u54njBuJFgs4J9ZeAwtLQgu9p2ar1Dj0+j6cTJ356R+3sHs4LtqblBtNRFKvhhO
         XCZ2Spq6W/gu8fbltiX7Af1G6/u4+xNYy8Ux6C6Vp/3YEf4yLCvVjL2DpQczBYdsotZ4
         +ctgSouC3byxUCPNul309BpaM5cT03XcLpmo9PrxXKoxW/ljmiE7Pq/P9CAC/nOVekd3
         SEDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=x5fHvPAa;
       spf=neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LCLgsDKadJq7VJFQ1wbueg0I1aeaH96ffqvkNmwqqR4=;
        b=rDXRHWatBImRxbZiLLqDBump5qA0AbL/yvi8Gvsrp7LMK5aAI4eFPD9hYcIxk/t6MK
         kStrc+snnGkT5x4oX7pr74Xx9o9jnA85dfvINOPXiYWeKPD/3/mYLBTlijglevON6ZGI
         Jm/mX413bd2l2fQ9cCMMKicZvbUx+Tyzyz6auQ7XpxG8IJSd/If9BVLmY0k5N186pg5U
         soWqW22l2LjogJjrluWIHtxH1U64Dl+aA92BXQxF/dQV9uJt54yoYHByt+ckMvK4kuia
         uvVwLMMguSjbUbDOmkGHMesqtElQHPK5zAkLnQNDrJmBp8x/HhY6Jn/T3KsaTmeUxwcb
         7TRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LCLgsDKadJq7VJFQ1wbueg0I1aeaH96ffqvkNmwqqR4=;
        b=PD/e4asIEnAS3nC8cNp4MrUnsBr/F4l1nceBIZC0fW7t7QtnKNh8Stu+3W62Xco/pg
         jx36Ze/LQ8FjSeTTKIv3J6JDVop3esJys8TH7TIAy6I7kD4uCnOhIvUt39P8Hk6f/zHk
         qvP3z4MVDoi9W9YGZWFoB1k96Fe32LEXJOM1btU0J77UxrhYIgUZfCSTwDsSPr8hsj9W
         CEJrZeZ8itGc/TxYUoYsTb/Wa7H+rWy6xecL7LgmJ9xOUVtfQ9lVzy2E++77bdfan3ce
         cSdVR3LqHBDNnVkEo2yG5y3S2lGfBlntwvmP8BpK2ZRNNvr50Lc/Z75Z+Y/BXNcF8AHP
         VCBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcFiifXWSpK+bSaMzdboL2yNVu/Y0uso90mrY8OJv4tuBeDDV/
	vAui/v2dQpxBC2Ol2FQKQuU=
X-Google-Smtp-Source: APXvYqz0fBAxCRjqqRcx74AWwcfGO1wlJ8dJY04qGXEx13lKnsNGpSlxuwAXhEn+mOs+6SSglVvRRQ==
X-Received: by 2002:a05:6512:41b:: with SMTP id u27mr2176770lfk.164.1579174993180;
        Thu, 16 Jan 2020 03:43:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e7:: with SMTP id s7ls3053482ljm.10.gmail; Thu, 16 Jan
 2020 03:43:12 -0800 (PST)
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr2007029ljm.218.1579174992458;
        Thu, 16 Jan 2020 03:43:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579174992; cv=none;
        d=google.com; s=arc-20160816;
        b=tDCegC1qCIZL5dFbAEzrV/hw3vMr6YaGnd3yCIufjmA+K4kwjFk2yoe6+HIXMU6ITg
         nyT0ZIkVsXG+PoRWsBQUS09MEIRt17jZGFyaQn+Hu60BjaypNFpHAifIwXG+thppR7Cc
         pAEXr5ccFJBsSA9F9opcarmdj/Yh6dpG92pBNeTu3w1u2GOa6QDb4CL+/t2x2qo1Gd+l
         DqYlBKBhsUrgKtVLpIz48R5JCwOnG71tIyyqsHmd3PrI81ss93ZwRfv2jT9/0q373VlP
         V4Yvtm3CtOPP43yuH5FU2MgwZHyCKIJDo38JBkhaWRZgGw6jkgYdhq6iijHXcUqfxGoX
         gWvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=zhgT6M1T0Bt0T0cZSHOnMNOBvV2jt+wZcpHmlr8vwKI=;
        b=ubmlD8JJQMhJJ/guNDdp61pTYVbNnvh3+5UvUGI7WhjpHeYeF0JygPYjNA8ZAsEy2z
         08nJRAj3P3KpvE7TuE377/JYmIANLpdeZJ1gaUT18enGaTVTMqEUb2cEbHAVpdd/ik0N
         5hl1zaYQZ5ZHhAxaR1hVmO8KTc5VXz8CLmKV7Gs4YxA7ZjPo4G7kKBIRYgX+/3FlB5iy
         MZ9dcWon45IW9yq8rbpCSEjDE05jcwhhjJFoNGB5TR2PXtsmHNjra2oqDVHv5YkdCxLw
         Xve/TQHPK4MO7m7wMDsHDwWoMuAFe4SGdVPba3V7KzcQJ61ZATRXfrE/m1PJ5f1PVanz
         bzog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=x5fHvPAa;
       spf=neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a4si531373lfg.1.2020.01.16.03.43.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 03:43:12 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id y17so18831582wrh.5
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 03:43:11 -0800 (PST)
X-Received: by 2002:a5d:528e:: with SMTP id c14mr3000017wrv.308.1579174988962;
        Thu, 16 Jan 2020 03:43:08 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id u7sm4209877wmj.3.2020.01.16.03.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 03:43:07 -0800 (PST)
Message-ID: <5e204c4b.1c69fb81.435d1.0970@mx.google.com>
Date: Thu, 16 Jan 2020 03:43:07 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20200116
Subject: next/master build: 215 builds: 56 failed, 159 passed, 120 errors,
 3005 warnings (next-20200116)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=x5fHvPAa;       spf=neutral (google.com: 2a00:1450:4864:20::441 is
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

next/master build: 215 builds: 56 failed, 159 passed, 120 errors, 3005 warn=
ings (next-20200116)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200116/

Tree: next
Branch: master
Git Describe: next-20200116
Git Commit: 2747d5fdab78f43210256cd52fb2718e0b3cce74
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

mips:
    32r2el_defconfig: (gcc-8) FAIL
    32r2el_defconfig+kselftest: (gcc-8) FAIL
    allnoconfig: (gcc-8) FAIL
    ar7_defconfig: (gcc-8) FAIL
    ath25_defconfig: (gcc-8) FAIL
    ath79_defconfig: (gcc-8) FAIL
    bcm47xx_defconfig: (gcc-8) FAIL
    bcm63xx_defconfig: (gcc-8) FAIL
    bmips_be_defconfig: (gcc-8) FAIL
    bmips_stb_defconfig: (gcc-8) FAIL
    capcella_defconfig: (gcc-8) FAIL
    ci20_defconfig: (gcc-8) FAIL
    cobalt_defconfig: (gcc-8) FAIL
    cu1000-neo_defconfig: (gcc-8) FAIL
    db1xxx_defconfig: (gcc-8) FAIL
    decstation_defconfig: (gcc-8) FAIL
    decstation_r4k_defconfig: (gcc-8) FAIL
    e55_defconfig: (gcc-8) FAIL
    gcw0_defconfig: (gcc-8) FAIL
    gpr_defconfig: (gcc-8) FAIL
    ip22_defconfig: (gcc-8) FAIL
    jazz_defconfig: (gcc-8) FAIL
    jmr3927_defconfig: (gcc-8) FAIL
    lasat_defconfig: (gcc-8) FAIL
    loongson1b_defconfig: (gcc-8) FAIL
    loongson1c_defconfig: (gcc-8) FAIL
    malta_defconfig: (gcc-8) FAIL
    malta_kvm_defconfig: (gcc-8) FAIL
    malta_kvm_guest_defconfig: (gcc-8) FAIL
    malta_qemu_32r6_defconfig: (gcc-8) FAIL
    maltaaprp_defconfig: (gcc-8) FAIL
    maltasmvp_defconfig: (gcc-8) FAIL
    maltasmvp_eva_defconfig: (gcc-8) FAIL
    maltaup_defconfig: (gcc-8) FAIL
    maltaup_xpa_defconfig: (gcc-8) FAIL
    markeins_defconfig: (gcc-8) FAIL
    mpc30x_defconfig: (gcc-8) FAIL
    msp71xx_defconfig: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL
    nlm_xlr_defconfig: (gcc-8) FAIL
    omega2p_defconfig: (gcc-8) FAIL
    pic32mzda_defconfig: (gcc-8) FAIL
    pistachio_defconfig: (gcc-8) FAIL
    pnx8335_stb225_defconfig: (gcc-8) FAIL
    qi_lb60_defconfig: (gcc-8) FAIL
    rb532_defconfig: (gcc-8) FAIL
    rbtx49xx_defconfig: (gcc-8) FAIL
    rm200_defconfig: (gcc-8) FAIL
    rt305x_defconfig: (gcc-8) FAIL
    tb0219_defconfig: (gcc-8) FAIL
    tb0226_defconfig: (gcc-8) FAIL
    tb0287_defconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL
    vocore2_defconfig: (gcc-8) FAIL
    workpad_defconfig: (gcc-8) FAIL
    xway_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 25 warnings
    axs103_smp_defconfig (gcc-8): 25 warnings
    haps_hs_defconfig (gcc-8): 3 warnings
    haps_hs_smp_defconfig (gcc-8): 3 warnings
    hsdk_defconfig (gcc-8): 31 warnings
    nsimosci_hs_defconfig (gcc-8): 3 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 3 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 20 warnings
    vdk_hs38_smp_defconfig (gcc-8): 24 warnings

arm64:
    allmodconfig (gcc-8): 2 warnings
    defconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 19 warnings
    am200epdkit_defconfig (gcc-8): 29 warnings
    aspeed_g4_defconfig (gcc-8): 45 warnings
    aspeed_g5_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 21 warnings
    at91_dt_defconfig (gcc-8): 107 warnings
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 23 warnings
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 17 warnings
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 55 warnings
    cm_x300_defconfig (gcc-8): 37 warnings
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 29 warnings
    colibri_pxa300_defconfig (gcc-8): 25 warnings
    collie_defconfig (gcc-8): 25 warnings
    corgi_defconfig (gcc-8): 47 warnings
    davinci_all_defconfig (gcc-8): 72 warnings
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 39 warnings
    ep93xx_defconfig (gcc-8): 25 warnings
    eseries_pxa_defconfig (gcc-8): 37 warnings
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 42 warnings
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 27 warnings
    h3600_defconfig (gcc-8): 27 warnings
    h5000_defconfig (gcc-8): 19 warnings
    hackkit_defconfig (gcc-8): 15 warnings
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 39 warnings
    imx_v4_v5_defconfig (gcc-8): 75 warnings
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 17 warnings
    iop32x_defconfig (gcc-8): 19 warnings
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 17 warnings
    keystone_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 15 warnings
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 49 warnings
    lpd270_defconfig (gcc-8): 25 warnings
    lubbock_defconfig (gcc-8): 31 warnings
    magician_defconfig (gcc-8): 43 warnings
    mainstone_defconfig (gcc-8): 27 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 57 warnings
    mmp2_defconfig (gcc-8): 21 warnings
    moxart_defconfig (gcc-8): 25 warnings
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 37 warnings
    multi_v5_defconfig (gcc-8): 163 warnings
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 3 warnings
    mv78xx0_defconfig (gcc-8): 25 warnings
    mvebu_v5_defconfig (gcc-8): 83 warnings
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 45 warnings
    neponset_defconfig (gcc-8): 27 warnings
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 31 warnings
    omap1_defconfig (gcc-8): 85 warnings
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 65 warnings
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 41 warnings
    pcm027_defconfig (gcc-8): 31 warnings
    pleb_defconfig (gcc-8): 15 warnings
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 17 warnings
    pxa255-idp_defconfig (gcc-8): 21 warnings
    pxa3xx_defconfig (gcc-8): 43 warnings
    pxa910_defconfig (gcc-8): 19 warnings
    pxa_defconfig (gcc-8): 2 warnings
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 105 warnings
    s3c6400_defconfig (gcc-8): 71 warnings
    s5pv210_defconfig (gcc-8): 33 warnings
    sama5_defconfig (gcc-8): 107 warnings
    shannon_defconfig (gcc-8): 17 warnings
    shmobile_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 17 warnings
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 39 warnings
    spear6xx_defconfig (gcc-8): 23 warnings
    spitz_defconfig (gcc-8): 47 warnings
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tango4_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 25 warnings
    tegra_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 37 warnings
    u300_defconfig (gcc-8): 17 warnings
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 21 warnings
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 35 warnings
    vt8500_v6_v7_defconfig (gcc-8): 27 warnings
    xcep_defconfig (gcc-8): 19 warnings
    zeus_defconfig (gcc-8): 49 warnings
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 3 warnings

mips:
    32r2el_defconfig (gcc-8): 2 errors, 1 warning
    32r2el_defconfig (gcc-8): 2 errors, 2 warnings
    allnoconfig (gcc-8): 2 errors, 1 warning
    ar7_defconfig (gcc-8): 4 errors, 2 warnings
    ath25_defconfig (gcc-8): 2 errors, 1 warning
    ath79_defconfig (gcc-8): 2 errors, 1 warning
    bcm47xx_defconfig (gcc-8): 2 errors, 1 warning
    bcm63xx_defconfig (gcc-8): 2 errors, 1 warning
    bmips_be_defconfig (gcc-8): 2 errors, 1 warning
    bmips_stb_defconfig (gcc-8): 2 errors, 1 warning
    capcella_defconfig (gcc-8): 2 errors, 2 warnings
    ci20_defconfig (gcc-8): 2 errors, 1 warning
    cobalt_defconfig (gcc-8): 2 errors, 1 warning
    cu1000-neo_defconfig (gcc-8): 2 errors, 1 warning
    db1xxx_defconfig (gcc-8): 4 errors, 2 warnings
    decstation_defconfig (gcc-8): 2 errors, 1 warning
    decstation_r4k_defconfig (gcc-8): 2 errors, 2 warnings
    e55_defconfig (gcc-8): 2 errors, 1 warning
    gcw0_defconfig (gcc-8): 2 errors, 2 warnings
    gpr_defconfig (gcc-8): 2 errors, 1 warning
    ip22_defconfig (gcc-8): 2 errors, 3 warnings
    ip27_defconfig (gcc-8): 1 warning
    jazz_defconfig (gcc-8): 2 errors, 3 warnings
    jmr3927_defconfig (gcc-8): 2 errors, 1 warning
    lasat_defconfig (gcc-8): 2 errors, 1 warning
    lemote2f_defconfig (gcc-8): 17 warnings
    loongson1b_defconfig (gcc-8): 2 errors, 1 warning
    loongson1c_defconfig (gcc-8): 2 errors, 1 warning
    loongson3_defconfig (gcc-8): 16 warnings
    malta_defconfig (gcc-8): 2 errors, 3 warnings
    malta_kvm_defconfig (gcc-8): 2 errors, 3 warnings
    malta_kvm_guest_defconfig (gcc-8): 2 errors, 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 2 errors, 1 warning
    maltaaprp_defconfig (gcc-8): 2 errors, 1 warning
    maltasmvp_defconfig (gcc-8): 2 errors, 1 warning
    maltasmvp_eva_defconfig (gcc-8): 2 errors, 1 warning
    maltaup_defconfig (gcc-8): 2 errors, 1 warning
    maltaup_xpa_defconfig (gcc-8): 2 errors, 3 warnings
    markeins_defconfig (gcc-8): 2 errors, 1 warning
    mpc30x_defconfig (gcc-8): 2 errors, 1 warning
    msp71xx_defconfig (gcc-8): 2 errors, 1 warning
    mtx1_defconfig (gcc-8): 2 errors, 2 warnings
    nlm_xlp_defconfig (gcc-8): 10 warnings
    nlm_xlr_defconfig (gcc-8): 2 errors, 2 warnings
    omega2p_defconfig (gcc-8): 2 errors, 1 warning
    pic32mzda_defconfig (gcc-8): 2 errors, 1 warning
    pistachio_defconfig (gcc-8): 2 errors, 1 warning
    pnx8335_stb225_defconfig (gcc-8): 2 errors, 1 warning
    qi_lb60_defconfig (gcc-8): 2 errors, 1 warning
    rb532_defconfig (gcc-8): 2 errors, 1 warning
    rbtx49xx_defconfig (gcc-8): 6 errors, 3 warnings
    rm200_defconfig (gcc-8): 2 errors, 1 warning
    rt305x_defconfig (gcc-8): 2 errors, 1 warning
    tb0219_defconfig (gcc-8): 2 errors, 2 warnings
    tb0226_defconfig (gcc-8): 2 errors, 2 warnings
    tb0287_defconfig (gcc-8): 2 errors, 1 warning
    tinyconfig (gcc-8): 2 errors, 1 warning
    vocore2_defconfig (gcc-8): 2 errors, 1 warning
    workpad_defconfig (gcc-8): 2 errors, 2 warnings
    xway_defconfig (gcc-8): 2 errors, 1 warning

riscv:
    defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning

Errors summary:

    47   arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration o=
f function =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=
=80=98__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-de=
claration]
    47   arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration o=
f function =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=
=98__cvdso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration=
]
    13   include/linux/gpio/driver.h:558:1: error: no return statement in f=
unction returning non-void [-Werror=3Dreturn-type]
    13   include/linux/gpio/driver.h:552:1: error: no return statement in f=
unction returning non-void [-Werror=3Dreturn-type]

Warnings summary:

    1372  include/linux/gpio/driver.h:558:1: warning: no return statement i=
n function returning non-void [-Wreturn-type]
    1372  include/linux/gpio/driver.h:552:1: warning: no return statement i=
n function returning non-void [-Wreturn-type]
    136  fs/io_uring.c:5567:8: warning: cast to pointer from integer of dif=
ferent size [-Wint-to-pointer-cast]
    60   cc1: all warnings being treated as errors
    20   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    18   fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=
=E2=80=99 [-Wunused-variable]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    2    WARNING: unmet direct dependencies detected for I2C_S3C2410
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1184=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=E2=
=80=99 expects argument of type =E2=80=98long int=E2=80=99, but argument 5 =
has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wf=
ormat=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    /tmp/ccUBqjBV.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccUBqjBV.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1163:warning: override: UNWINDER_GUESS changes choice stat=
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

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnin=
gs, 0 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1184 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 section =
mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    /tmp/ccUBqjBV.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccUBqjBV.s:18191: Warning: using r15 results in unpredictable beha=
viour
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
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

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
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section mi=
smatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 29 warnings, 0=
 section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 2 warnings, 0 section=
 mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 45 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 107 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 23 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sec=
tion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 55 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 29 warnings=
, 0 section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings=
, 0 section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 47 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 72 warnings, 0=
 section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 2 warnings, 0 sect=
ion mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings=
, 0 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

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
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section =
mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 39 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings, 0=
 section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 42 warnings, 0 section=
 mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section =
mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 39 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 75 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 =
section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 3 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

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
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 3 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 =
section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 =
section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 49 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 43 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 3 warnings, 0 secti=
on mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 3 warnings, 0 s=
ection mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning=
, 0 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning=
, 0 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, =
0 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 3 warnings, 0=
 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sec=
tion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 57 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sectio=
n mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 163 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warni=
ngs, 0 section mismatches

Warnings:
    kernel/bpf/bpf_struct_ops.c:197:1: warning: the frame size of 1192 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 83 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 45 warnings, 0 section=
 mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 10 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sec=
tion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 85 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 65 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 41 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning,=
 0 section mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 =
section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 43 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 6 errors, 3 warnings, 0 se=
ction mismatches

Errors:
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:552:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]
    include/linux/gpio/driver.h:558:1: error: no return statement in functi=
on returning non-void [-Werror=3Dreturn-type]

Warnings:
    cc1: all warnings being treated as errors
    cc1: all warnings being treated as errors
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 105 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 71 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 33 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 107 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 39 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 23 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 47 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 =
section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section mis=
matches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1163:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 20 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 24 warnings, =
0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 35 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, =
0 section mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sec=
tion mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    fs/xfs/xfs_inode.c:1523:8: warning: unused variable =E2=80=98done=E2=80=
=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/vdso/vgettimeofday.c:17:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_gettime32=E2=80=99; did you mean =E2=80=98__cv=
dso_clock_gettime=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    arch/mips/vdso/vgettimeofday.c:39:9: error: implicit declaration of fun=
ction =E2=80=98__cvdso_clock_getres_time32=E2=80=99; did you mean =E2=80=98=
__cvdso_clock_getres_common=E2=80=99? [-Werror=3Dimplicit-function-declarat=
ion]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 49 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:552:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    include/linux/gpio/driver.h:558:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    fs/io_uring.c:5567:8: warning: cast to pointer from integer of differen=
t size [-Wint-to-pointer-cast]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e204c4b.1c69fb81.435d1.0970%40mx.google.com.
