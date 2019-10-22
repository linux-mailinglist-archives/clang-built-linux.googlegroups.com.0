Return-Path: <clang-built-linux+bncBDT6TV45WMPRBJPQXLWQKGQE5UN4IQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id DC49EDFEEE
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 10:04:53 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id e25sf8133861wra.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:04:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571731493; cv=pass;
        d=google.com; s=arc-20160816;
        b=mt6YFMpmVgwbGu9bUrqW5Dy5g4x53YSi1zmKOEOTPwg1/fzHDJ0gOdKFoQ2CASHMOn
         RAJiUff5xN6KNbBmN9mEucIYfPa949VsVZJyXPHPmFOy5qVGckTIxEkiUWm//FsUsTH9
         bTO9rXs+x0uIs72pmubcx/WShzfCBFdfi0xVftac9q5PYiDjEmIezTemjHNip4R5W4iB
         /4XZcfyzhM/QjqJiMby0F9IegZ+JDP/0LU2AqR+MtcU8gyx9koph8zCIG+xu+u0S99DO
         l4Aixf5qwDQCEMUbvyOgr1M4yjVu3XIaMbQvl8Y4nZtu+vwmz6whRAKR4240dj7szeQU
         3W7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=GV4VtMuCzr5RYxQIzyfF8nZBTbwIznb5fP1SGDPcV4s=;
        b=iJAQHfaCJJNIZBvA3UJ5teXcHGTjRApy9uHbjgcEYDBMlQ3XbVCSzmGsxkvJFs5b4C
         ssXthFwDWiSVWxWTk/5O2fQMdY84ngVg5wTV7FJVHI3i5FcWhCTgqtxBi2zVjMXuKrcK
         9NR/ErYKKDB26fyY7nCLhdq+jlWA2lzvOM4vzDf80q8HFq6NWt7NjqUQJUtA4eOw8KDZ
         JayNKuhelsdjuQAig41nUa+1yver1IlbTKbdECmJSOHRMlMgD+NVlUJurZhRT9sWQGn4
         FR0ZqjHNFRG2DDk/UzhnojWtuSolFOX/5AXshiqzGHVNmpjhXuYYD0UaCS0BbGdPJbSW
         N09w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=fDSmXWOQ;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GV4VtMuCzr5RYxQIzyfF8nZBTbwIznb5fP1SGDPcV4s=;
        b=QDyQLS85UHJzAuCwyD5pTwJ2z3hOOghxBzIcJxq7gX2Su2jvaVt9qxVk/HJsT7ea7i
         T2pBDZ4G4JqN8Gw/++i7Ak/3sh92bqSSBroP5uFIa2LRQ1ar/g2v3XQCAVImw9W1qCMw
         hD4wdOj1lWzWsH03iSSD061jCx5blQkEept8al+W0LUiAlXRYGLtZn4h7+4zVrAEv0/z
         SfGt385Z+OgWUfMEZX3nCb3V3pGds1ZoMOXtoh1tpApbVSd1lYypahBb3jyuOVqzOVja
         Th2A8lz2L/3isUe25L1yoHXo6cBBddFC3JRMmI4sPr4kDNJ7a/rZE4YsYDA37F/WaaCS
         kSpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GV4VtMuCzr5RYxQIzyfF8nZBTbwIznb5fP1SGDPcV4s=;
        b=ZaRJ/8vOKX7oR83eyEHADQaELK6Quig/K361JnKvd1ss4nKf9amez3oUYELODr9m+z
         FXc/nDcHFWz0V37xHBfeMnf1AYBhnF0FThF9dh1ehKWCI7KgyF6mPkKTMJB2LKsudf2V
         79VWK3Do/3PL7YQFS7dcUg+8JtO+aGYH25BbOOyZfxMwczp9qDlq9fKzO5wUW8h28Ldg
         HJkYSmFaOWMuit2PYt+5FL7UBrKCudkqXt24Z5JSNL5ZCyt/PnnVxWT7tivdnkgHNA79
         0gyNbCRApWCnK7m1Sd8T+J3B+sK45aMl9qQ/jWDC/R6zzPtrGYRMEpKiEVRUfCHLQkNa
         /jZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViuJgW3WICa4g1B9HzdMYG+eqDwU/ZD3oJ40vo1jgRAcCb3WAg
	jXFhjx5binouFl6XR4MxW5U=
X-Google-Smtp-Source: APXvYqwSqIa8SruKjI3qi/bs4Wjzgdl9GRhB9z/luare/22AH73v6V4lo4IJA+WqqFQzaXLuTrDa3w==
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr1680300wmj.91.1571731493299;
        Tue, 22 Oct 2019 01:04:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:538d:: with SMTP id d13ls2868953wrv.12.gmail; Tue, 22
 Oct 2019 01:04:52 -0700 (PDT)
X-Received: by 2002:adf:e5cc:: with SMTP id a12mr2279214wrn.258.1571731492549;
        Tue, 22 Oct 2019 01:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571731492; cv=none;
        d=google.com; s=arc-20160816;
        b=aP4Q6x3810qR6JNZeSp4SBTVRWcNhQQQ+dd/J57IWj7XutrIS9U0PgElLZmk0Pp79o
         oXjhJ6Qm8hRhT1Jn7lMWkQO9cF/b6bHX0u4VeX4cagrnHJVYiVfnobGEh+BUyh5LGv/b
         uXW3UXviyHlMbWxPpOIAAxNVA370lmgD8ghP9wbghK2NK9hDZuVD+uj8AAvB32sHz0gi
         R1Zexy84AkeBREesPLcflnl2VczGAbyrhlAX8+eQg7+1htVR3wXBER0PslPV7pSrmzvS
         uw7OeoyjVio2bRnbkx6aGsBjnOP1g8Emw3UJso2WU2HQSUViQcW1oaQZtBLjSBlKxAM9
         0jjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=fPsgff5JkyQnY7LnCn5E0RFFXOew5VRrPSCDr/NXiek=;
        b=PdnKanBHBeaQNrUEkiYyRG8Oli31PVq4gj620vH4KqY4ZGZg6YDmZTrlMgLTKY8MqF
         g1cSlCGXdbKFBLXbAIrZKGrk8N89bLQGzmBDPuYjY3LJ3CIZO6BsAZnCXhipA9qjZplv
         LFjy5z4XPAIVvk/3XqpuzO+zUh/530kc5dF3HHqCN6q6lPK2x1S8eqrO9BMJ97mMAMoW
         XZMTJNY6ohzoMyZ5EwmXDzQgsXm0aQMDHP+T5+GsTej1GdzP9PDk1t2c/hZ/7qbZmp6X
         hdRuoM+MuOi8OQ/qrZdQN9FUkT9Bn4GVjo9E91e58y7mwMUfjhviutc0EaXBIv7NAO3e
         SAAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=fDSmXWOQ;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l3si1216770wmg.0.2019.10.22.01.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 01:04:52 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id g24so6858803wmh.5
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 01:04:52 -0700 (PDT)
X-Received: by 2002:a1c:2604:: with SMTP id m4mr1873164wmm.112.1571731487182;
        Tue, 22 Oct 2019 01:04:47 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id a5sm2876937wrm.78.2019.10.22.01.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Oct 2019 01:04:46 -0700 (PDT)
Message-ID: <5daeb81e.1c69fb81.1e67f.d992@mx.google.com>
Date: Tue, 22 Oct 2019 01:04:46 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20191022
Subject: next/master build: 219 builds: 6 failed, 213 passed, 25 errors,
 513 warnings (next-20191022)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=fDSmXWOQ;       spf=neutral (google.com: 2a00:1450:4864:20::342 is
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

next/master build: 219 builds: 6 failed, 213 passed, 25 errors, 513 warning=
s (next-20191022)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191022/

Tree: next
Branch: master
Git Describe: next-20191022
Git Commit: a722f75b2923b4fd44c17e7255e822ac48fe85f0
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-8) FAIL
    allmodconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL
    ci20_defconfig: (gcc-8) FAIL
    omega2p_defconfig: (gcc-8) FAIL
    vocore2_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 3 warnings
    axs103_smp_defconfig (gcc-8): 3 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 3 warnings
    nsim_hs_defconfig (gcc-8): 2 warnings
    nsim_hs_defconfig (gcc-8): 30 warnings
    nsim_hs_smp_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 2 warnings

arm64:
    allmodconfig (gcc-8): 9 errors, 4 warnings
    allmodconfig (clang-8): 9 errors, 51 warnings
    defconfig (gcc-8): 3 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 3 warnings
    defconfig (gcc-8): 3 warnings
    defconfig (gcc-8): 30 warnings

arm:
    allmodconfig (gcc-8): 19 warnings
    am200epdkit_defconfig (gcc-8): 2 warnings
    aspeed_g5_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 2 warnings
    bcm2835_defconfig (gcc-8): 4 warnings
    cm_x2xx_defconfig (gcc-8): 2 warnings
    cm_x300_defconfig (gcc-8): 2 warnings
    cns3420vb_defconfig (gcc-8): 2 warnings
    colibri_pxa270_defconfig (gcc-8): 2 warnings
    colibri_pxa300_defconfig (gcc-8): 2 warnings
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 2 warnings
    dove_defconfig (gcc-8): 2 warnings
    efm32_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 2 warnings
    ep93xx_defconfig (gcc-8): 2 warnings
    eseries_pxa_defconfig (gcc-8): 3 warnings
    exynos_defconfig (gcc-8): 2 warnings
    ezx_defconfig (gcc-8): 2 warnings
    h5000_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 2 warnings
    imx_v4_v5_defconfig (gcc-8): 2 warnings
    imx_v6_v7_defconfig (gcc-8): 2 warnings
    integrator_defconfig (gcc-8): 2 warnings
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 2 warnings
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 2 warnings
    magician_defconfig (gcc-8): 3 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 2 warnings
    mmp2_defconfig (gcc-8): 2 warnings
    moxart_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 29 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 2 warnings
    mvebu_v7_defconfig (gcc-8): 2 warnings
    mxs_defconfig (gcc-8): 2 warnings
    nhk8815_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 2 warnings
    omap2plus_defconfig (gcc-8): 2 warnings
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 2 warnings
    pcm027_defconfig (gcc-8): 2 warnings
    prima2_defconfig (gcc-8): 2 warnings
    pxa168_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 2 warnings
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 2 warnings
    realview_defconfig (gcc-8): 2 warnings
    s3c2410_defconfig (gcc-8): 2 warnings
    s3c6400_defconfig (gcc-8): 3 warnings
    s5pv210_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 2 warnings
    shmobile_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 2 warnings
    spear3xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 2 warnings
    tango4_defconfig (gcc-8): 2 warnings
    tegra_defconfig (gcc-8): 2 warnings
    trizeps4_defconfig (gcc-8): 2 warnings
    u300_defconfig (gcc-8): 2 warnings
    u8500_defconfig (gcc-8): 2 warnings
    versatile_defconfig (gcc-8): 2 warnings
    vexpress_defconfig (gcc-8): 2 warnings
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 3 warnings
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 28 warnings

mips:
    32r2el_defconfig (gcc-8): 1 warning
    32r2el_defconfig (gcc-8): 29 warnings
    bigsur_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 4 errors, 6 warnings
    ci20_defconfig (gcc-8): 1 error
    db1xxx_defconfig (gcc-8): 2 warnings
    decstation_64_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 2 warnings
    ip27_defconfig (gcc-8): 2 warnings
    ip28_defconfig (gcc-8): 2 warnings
    ip32_defconfig (gcc-8): 2 warnings
    lemote2f_defconfig (gcc-8): 3 warnings
    loongson3_defconfig (gcc-8): 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    mips_paravirt_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 2 warnings
    nlm_xlr_defconfig (gcc-8): 1 warning
    omega2p_defconfig (gcc-8): 1 error
    pic32mzda_defconfig (gcc-8): 1 warning
    pistachio_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    sb1250_swarm_defconfig (gcc-8): 2 warnings
    vocore2_defconfig (gcc-8): 1 error

riscv:
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 28 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 3 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 2 warnings
    x86_64_defconfig (gcc-8): 29 warnings
    x86_64_defconfig (gcc-8): 2 warnings

Errors summary:

    3    include/linux/compiler.h:350:38: error: call to '__compiletime_ass=
ert_1659' declared with attribute error: BUILD_BUG_ON failed: stat_items_si=
ze !=3D ARRAY_SIZE(vmstat_text) * sizeof(unsigned long)
    2    ERROR: "dpdmai_set_rx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdm=
a.ko] undefined!
    2    ERROR: "dpdmai_reset" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] u=
ndefined!
    2    ERROR: "dpdmai_open" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] un=
defined!
    2    ERROR: "dpdmai_get_tx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdm=
a.ko] undefined!
    2    ERROR: "dpdmai_get_rx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdm=
a.ko] undefined!
    2    ERROR: "dpdmai_get_attributes" [drivers/dma/fsl-dpaa2-qdma/dpaa2-q=
dma.ko] undefined!
    2    ERROR: "dpdmai_enable" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] =
undefined!
    2    ERROR: "dpdmai_disable" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    2    ERROR: "dpdmai_close" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] u=
ndefined!
    1    drivers/staging/octeon/ethernet.c:516:29: error: type of formal pa=
rameter 2 is incomplete
    1    drivers/staging/octeon/ethernet.c:499:30: error: storage size of '=
link_info' isn't known
    1    drivers/staging/octeon/ethernet.c:463:30: error: storage size of '=
link_info' isn't known
    1    drivers/staging/octeon/ethernet.c:177:21: error: dereferencing poi=
nter to incomplete type 'struct cvmx_wqe'

Warnings summary:

    95   drivers/mmc/core/block.c:500:6: warning: unused variable 'status' =
[-Wunused-variable]
    64   WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    42   include/linux/stddef.h:8:14: warning: initialization of 'unsigned =
int' from 'void *' makes integer from pointer without a cast [-Wint-convers=
ion]
    26   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    17   1 warning generated.
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    7    2 warnings generated.
    6    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunu=
sed-variable]
    6    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    fs/aio.c:2228:38: warning: incompatible pointer to integer convers=
ion initializing 'compat_uptr_t' (aka 'unsigned int') with an expression of=
 type 'void *' [-Wint-conversion]
    2    fs/aio.c:2193:38: warning: incompatible pointer to integer convers=
ion initializing 'compat_uptr_t' (aka 'unsigned int') with an expression of=
 type 'void *' [-Wint-conversion]
    2    WARNING: modpost: missing MODULE_LICENSE() in drivers/dma/fsl-dpaa=
2-qdma/dpdmai.o
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    warning: same module names found:
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-=
Wunused-variable]
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2737:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    kernel/debug/debug_core.c:470:18: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    kernel/debug/debug_core.c:469:33: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    kernel/debug/debug_core.c:452:17: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3132:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1644:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cv=
mx_helper_link_info' declared inside parameter list will not be visible out=
side of this definition or declaration
    1    drivers/staging/octeon/ethernet.c:499:30: warning: unused variable=
 'link_info' [-Wunused-variable]
    1    drivers/staging/octeon/ethernet.c:463:30: warning: unused variable=
 'link_info' [-Wunused-variable]
    1    drivers/scsi/lpfc/lpfc_sli.c:11855:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4722:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/renoir_ppt.c:182:26: warni=
ng: suggest braces around initialization of subobject [-Wmissing-braces]
    1    drivers/dma/fsl-dpaa2-qdma/dpdmai.c:148:25: warning: variable 'cfg=
' is uninitialized when used within its own initialization [-Wuninitialized=
]
    1    drivers/dma/fsl-dpaa2-qdma/dpdmai.c:148:20: warning: variable 'cmd=
' is uninitialized when used within its own initialization [-Wuninitialized=
]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    1    /tmp/ccKuqpUb.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccKuqpUb.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1165:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./.tmp.config.nAg2Eal0tH:4826:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.nAg2Eal0tH:4809:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.nAg2Eal0tH:4808:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.nAg2Eal0tH:4804:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.nAg2Eal0tH:4784:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.nAg2Eal0tH:4778:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.nAg2Eal0tH:4769:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.nAg2Eal0tH:4767:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.nAg2Eal0tH:4766:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.nAg2Eal0tH:4765:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.nAg2Eal0tH:4763:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.nAg2Eal0tH:4762:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.nAg2Eal0tH:4759:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.nAg2Eal0tH:4752:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.nAg2Eal0tH:4742:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.nAg2Eal0tH:4731:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.nAg2Eal0tH:4623:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.nAg2Eal0tH:4619:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.nAg2Eal0tH:4594:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.nAg2Eal0tH:4573:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.nAg2Eal0tH:4515:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.nAg2Eal0tH:4514:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.nAg2Eal0tH:4510:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.nAg2Eal0tH:4509:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.nAg2Eal0tH:4507:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.nAg2Eal0tH:4506:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.nAg2Eal0tH:4503:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.lTMhIZBWGe:3979:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.lTMhIZBWGe:3962:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.lTMhIZBWGe:3961:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.lTMhIZBWGe:3957:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.lTMhIZBWGe:3937:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.lTMhIZBWGe:3931:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.lTMhIZBWGe:3922:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.lTMhIZBWGe:3920:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.lTMhIZBWGe:3919:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.lTMhIZBWGe:3918:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.lTMhIZBWGe:3916:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.lTMhIZBWGe:3915:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.lTMhIZBWGe:3912:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.lTMhIZBWGe:3905:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.lTMhIZBWGe:3895:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.lTMhIZBWGe:3884:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.lTMhIZBWGe:3776:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.lTMhIZBWGe:3772:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.lTMhIZBWGe:3747:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.lTMhIZBWGe:3726:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.lTMhIZBWGe:3668:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.lTMhIZBWGe:3667:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.lTMhIZBWGe:3663:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.lTMhIZBWGe:3662:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.lTMhIZBWGe:3660:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.lTMhIZBWGe:3659:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.lTMhIZBWGe:3656:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.hLTYQMVxmQ:3365:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.hLTYQMVxmQ:3348:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.hLTYQMVxmQ:3347:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.hLTYQMVxmQ:3343:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.hLTYQMVxmQ:3323:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.hLTYQMVxmQ:3317:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.hLTYQMVxmQ:3308:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.hLTYQMVxmQ:3306:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.hLTYQMVxmQ:3305:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.hLTYQMVxmQ:3304:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.hLTYQMVxmQ:3302:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.hLTYQMVxmQ:3301:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.hLTYQMVxmQ:3298:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.hLTYQMVxmQ:3291:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.hLTYQMVxmQ:3281:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.hLTYQMVxmQ:3270:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.hLTYQMVxmQ:3162:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.hLTYQMVxmQ:3158:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.hLTYQMVxmQ:3133:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.hLTYQMVxmQ:3112:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.hLTYQMVxmQ:3054:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.hLTYQMVxmQ:3053:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.hLTYQMVxmQ:3049:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.hLTYQMVxmQ:3048:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.hLTYQMVxmQ:3046:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.hLTYQMVxmQ:3045:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.hLTYQMVxmQ:3042:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.IX8SuDfznD:8530:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IX8SuDfznD:8513:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.IX8SuDfznD:8512:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.IX8SuDfznD:8508:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.IX8SuDfznD:8488:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.IX8SuDfznD:8482:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.IX8SuDfznD:8473:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.IX8SuDfznD:8471:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.IX8SuDfznD:8470:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.IX8SuDfznD:8469:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.IX8SuDfznD:8467:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.IX8SuDfznD:8466:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.IX8SuDfznD:8463:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.IX8SuDfznD:8456:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.IX8SuDfznD:8446:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.IX8SuDfznD:8435:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IX8SuDfznD:8327:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.IX8SuDfznD:8323:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IX8SuDfznD:8298:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.IX8SuDfznD:8277:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.IX8SuDfznD:8219:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.IX8SuDfznD:8218:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.IX8SuDfznD:8214:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.IX8SuDfznD:8213:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.IX8SuDfznD:8211:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.IX8SuDfznD:8210:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.IX8SuDfznD:8207:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.AN17pZGPhb:4889:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.AN17pZGPhb:4872:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.AN17pZGPhb:4871:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.AN17pZGPhb:4867:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.AN17pZGPhb:4847:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.AN17pZGPhb:4841:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.AN17pZGPhb:4832:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.AN17pZGPhb:4830:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.AN17pZGPhb:4829:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.AN17pZGPhb:4828:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.AN17pZGPhb:4826:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.AN17pZGPhb:4825:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.AN17pZGPhb:4822:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.AN17pZGPhb:4815:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.AN17pZGPhb:4805:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.AN17pZGPhb:4794:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.AN17pZGPhb:4686:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.AN17pZGPhb:4682:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.AN17pZGPhb:4657:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.AN17pZGPhb:4636:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.AN17pZGPhb:4578:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.AN17pZGPhb:4577:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.AN17pZGPhb:4573:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.AN17pZGPhb:4572:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.AN17pZGPhb:4570:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.AN17pZGPhb:4569:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.AN17pZGPhb:4566:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.6AdffPthfg:7956:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.6AdffPthfg:7939:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.6AdffPthfg:7938:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.6AdffPthfg:7934:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.6AdffPthfg:7914:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.6AdffPthfg:7908:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.6AdffPthfg:7899:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.6AdffPthfg:7897:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.6AdffPthfg:7896:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.6AdffPthfg:7895:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.6AdffPthfg:7893:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.6AdffPthfg:7892:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.6AdffPthfg:7889:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.6AdffPthfg:7882:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.6AdffPthfg:7872:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.6AdffPthfg:7861:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.6AdffPthfg:7753:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.6AdffPthfg:7749:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.6AdffPthfg:7724:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.6AdffPthfg:7703:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.6AdffPthfg:7645:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.6AdffPthfg:7644:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.6AdffPthfg:7640:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.6AdffPthfg:7639:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.6AdffPthfg:7637:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.6AdffPthfg:7636:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.6AdffPthfg:7633:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5nvdOWrzlo:1745:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5nvdOWrzlo:1728:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5nvdOWrzlo:1727:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.5nvdOWrzlo:1723:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.5nvdOWrzlo:1703:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.5nvdOWrzlo:1697:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.5nvdOWrzlo:1688:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.5nvdOWrzlo:1686:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5nvdOWrzlo:1685:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.5nvdOWrzlo:1684:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.5nvdOWrzlo:1682:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.5nvdOWrzlo:1681:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.5nvdOWrzlo:1678:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5nvdOWrzlo:1671:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5nvdOWrzlo:1661:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.5nvdOWrzlo:1650:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5nvdOWrzlo:1542:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.5nvdOWrzlo:1538:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5nvdOWrzlo:1513:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.5nvdOWrzlo:1492:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5nvdOWrzlo:1434:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.5nvdOWrzlo:1433:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.5nvdOWrzlo:1429:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.5nvdOWrzlo:1428:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.5nvdOWrzlo:1426:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.5nvdOWrzlo:1425:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.5nvdOWrzlo:1422:warning: override: reassigning to sy=
mbol BPF_SYSCALL

Section mismatches summary:

    5    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x3630): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3320): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

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
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 29 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.lTMhIZBWGe:3656:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.lTMhIZBWGe:3659:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.lTMhIZBWGe:3660:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.lTMhIZBWGe:3662:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.lTMhIZBWGe:3663:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.lTMhIZBWGe:3667:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.lTMhIZBWGe:3668:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.lTMhIZBWGe:3726:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.lTMhIZBWGe:3747:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.lTMhIZBWGe:3772:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.lTMhIZBWGe:3776:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.lTMhIZBWGe:3884:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.lTMhIZBWGe:3895:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.lTMhIZBWGe:3905:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.lTMhIZBWGe:3912:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.lTMhIZBWGe:3915:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.lTMhIZBWGe:3916:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.lTMhIZBWGe:3918:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.lTMhIZBWGe:3919:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.lTMhIZBWGe:3920:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.lTMhIZBWGe:3922:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.lTMhIZBWGe:3931:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.lTMhIZBWGe:3937:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.lTMhIZBWGe:3957:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.lTMhIZBWGe:3961:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.lTMhIZBWGe:3962:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.lTMhIZBWGe:3979:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 9 errors, 4 warnings, 0 section=
 mismatches

Errors:
    ERROR: "dpdmai_enable" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undef=
ined!
    ERROR: "dpdmai_set_rx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    ERROR: "dpdmai_get_tx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    ERROR: "dpdmai_get_rx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    ERROR: "dpdmai_get_attributes" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.k=
o] undefined!
    ERROR: "dpdmai_open" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undefin=
ed!
    ERROR: "dpdmai_close" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undefi=
ned!
    ERROR: "dpdmai_disable" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] unde=
fined!
    ERROR: "dpdmai_reset" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undefi=
ned!

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/dma/fsl-dpaa2-qdm=
a/dpdmai.o

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 section =
mismatches

Warnings:
    /tmp/ccKuqpUb.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccKuqpUb.s:18191: Warning: using r15 results in unpredictable beha=
viour
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
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
    warning: same module names found:

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 9 errors, 51 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: "dpdmai_reset" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undefi=
ned!
    ERROR: "dpdmai_set_rx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    ERROR: "dpdmai_get_tx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    ERROR: "dpdmai_get_rx_queue" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko]=
 undefined!
    ERROR: "dpdmai_get_attributes" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.k=
o] undefined!
    ERROR: "dpdmai_open" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undefin=
ed!
    ERROR: "dpdmai_disable" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] unde=
fined!
    ERROR: "dpdmai_close" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undefi=
ned!
    ERROR: "dpdmai_enable" [drivers/dma/fsl-dpaa2-qdma/dpaa2-qdma.ko] undef=
ined!

Warnings:
    mm/shmem.c:2737:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1644:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3132:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    fs/aio.c:2193:38: warning: incompatible pointer to integer conversion i=
nitializing 'compat_uptr_t' (aka 'unsigned int') with an expression of type=
 'void *' [-Wint-conversion]
    fs/aio.c:2228:38: warning: incompatible pointer to integer conversion i=
nitializing 'compat_uptr_t' (aka 'unsigned int') with an expression of type=
 'void *' [-Wint-conversion]
    2 warnings generated.
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
    1 warning generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/dma/fsl-dpaa2-qdma/dpdmai.c:148:20: warning: variable 'cmd' is =
uninitialized when used within its own initialization [-Wuninitialized]
    drivers/dma/fsl-dpaa2-qdma/dpdmai.c:148:25: warning: variable 'cfg' is =
uninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../powerplay/renoir_ppt.c:182:26: warning: s=
uggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    1 warning generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/scsi/lpfc/lpfc_sli.c:11855:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4722:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    WARNING: modpost: missing MODULE_LICENSE() in drivers/dma/fsl-dpaa2-qdm=
a/dpdmai.o

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
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
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
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/debug/debug_core.c:452:17: warning: array subscript [0, 0] is ou=
tside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    kernel/debug/debug_core.c:469:33: warning: array subscript [0, 0] is ou=
tside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    kernel/debug/debug_core.c:470:18: warning: array subscript [0, 0] is ou=
tside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

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
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

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
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 6 warnings,=
 0 section mismatches

Errors:
    drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer =
to incomplete type 'struct cvmx_wqe'
    drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_=
info' isn't known
    drivers/staging/octeon/ethernet.c:499:30: error: storage size of 'link_=
info' isn't known
    drivers/staging/octeon/ethernet.c:516:29: error: type of formal paramet=
er 2 is incomplete

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_he=
lper_link_info' declared inside parameter list will not be visible outside =
of this definition or declaration
    drivers/staging/octeon/ethernet.c:463:30: warning: unused variable 'lin=
k_info' [-Wunused-variable]
    drivers/staging/octeon/ethernet.c:499:30: warning: unused variable 'lin=
k_info' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches

Errors:
    include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1=
659' declared with attribute error: BUILD_BUG_ON failed: stat_items_size !=
=3D ARRAY_SIZE(vmstat_text) * sizeof(unsigned long)

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3630): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3320): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section mi=
smatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section =
mismatches

Warnings:
    fs/aio.c:2193:38: warning: incompatible pointer to integer conversion i=
nitializing 'compat_uptr_t' (aka 'unsigned int') with an expression of type=
 'void *' [-Wint-conversion]
    fs/aio.c:2228:38: warning: incompatible pointer to integer conversion i=
nitializing 'compat_uptr_t' (aka 'unsigned int') with an expression of type=
 'void *' [-Wint-conversion]
    2 warnings generated.
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 3 warnings, 0 section mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 3 warnings, 0 section mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 28 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.hLTYQMVxmQ:3042:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.hLTYQMVxmQ:3045:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.hLTYQMVxmQ:3046:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.hLTYQMVxmQ:3048:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.hLTYQMVxmQ:3049:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.hLTYQMVxmQ:3053:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.hLTYQMVxmQ:3054:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.hLTYQMVxmQ:3112:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.hLTYQMVxmQ:3133:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.hLTYQMVxmQ:3158:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.hLTYQMVxmQ:3162:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.hLTYQMVxmQ:3270:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.hLTYQMVxmQ:3281:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.hLTYQMVxmQ:3291:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.hLTYQMVxmQ:3298:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.hLTYQMVxmQ:3301:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.hLTYQMVxmQ:3302:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.hLTYQMVxmQ:3304:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.hLTYQMVxmQ:3305:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.hLTYQMVxmQ:3306:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.hLTYQMVxmQ:3308:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.hLTYQMVxmQ:3317:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.hLTYQMVxmQ:3323:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.hLTYQMVxmQ:3343:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.hLTYQMVxmQ:3347:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.hLTYQMVxmQ:3348:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.hLTYQMVxmQ:3365:warning: override: reassigning to symbol =
USER_NS
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 30 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.6AdffPthfg:7633:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.6AdffPthfg:7636:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.6AdffPthfg:7637:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.6AdffPthfg:7639:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.6AdffPthfg:7640:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.6AdffPthfg:7644:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.6AdffPthfg:7645:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.6AdffPthfg:7703:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.6AdffPthfg:7724:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.6AdffPthfg:7749:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.6AdffPthfg:7753:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.6AdffPthfg:7861:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.6AdffPthfg:7872:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.6AdffPthfg:7882:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.6AdffPthfg:7889:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.6AdffPthfg:7892:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.6AdffPthfg:7893:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.6AdffPthfg:7895:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.6AdffPthfg:7896:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.6AdffPthfg:7897:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.6AdffPthfg:7899:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.6AdffPthfg:7908:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.6AdffPthfg:7914:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.6AdffPthfg:7934:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.6AdffPthfg:7938:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.6AdffPthfg:7939:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.6AdffPthfg:7956:warning: override: reassigning to symbol =
USER_NS
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

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
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 28 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.nAg2Eal0tH:4503:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.nAg2Eal0tH:4506:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.nAg2Eal0tH:4507:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.nAg2Eal0tH:4509:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.nAg2Eal0tH:4510:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.nAg2Eal0tH:4514:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.nAg2Eal0tH:4515:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.nAg2Eal0tH:4573:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.nAg2Eal0tH:4594:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.nAg2Eal0tH:4619:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.nAg2Eal0tH:4623:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.nAg2Eal0tH:4731:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.nAg2Eal0tH:4742:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.nAg2Eal0tH:4752:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.nAg2Eal0tH:4759:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.nAg2Eal0tH:4762:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.nAg2Eal0tH:4763:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.nAg2Eal0tH:4765:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.nAg2Eal0tH:4766:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.nAg2Eal0tH:4767:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.nAg2Eal0tH:4769:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.nAg2Eal0tH:4778:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.nAg2Eal0tH:4784:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.nAg2Eal0tH:4804:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.nAg2Eal0tH:4808:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.nAg2Eal0tH:4809:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.nAg2Eal0tH:4826:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

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
    {standard input}:134: Warning: macro instruction expanded into multiple=
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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

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
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 2 warnings, 0 section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 2 warnings, 0 section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 =
warnings, 0 section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 29 warn=
ings, 0 section mismatches

Warnings:
    ./.tmp.config.IX8SuDfznD:8207:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.IX8SuDfznD:8210:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.IX8SuDfznD:8211:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.IX8SuDfznD:8213:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.IX8SuDfznD:8214:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.IX8SuDfznD:8218:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.IX8SuDfznD:8219:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.IX8SuDfznD:8277:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.IX8SuDfznD:8298:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.IX8SuDfznD:8323:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.IX8SuDfznD:8327:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.IX8SuDfznD:8435:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.IX8SuDfznD:8446:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.IX8SuDfznD:8456:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.IX8SuDfznD:8463:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.IX8SuDfznD:8466:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.IX8SuDfznD:8467:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.IX8SuDfznD:8469:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.IX8SuDfznD:8470:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.IX8SuDfznD:8471:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.IX8SuDfznD:8473:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.IX8SuDfznD:8482:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.IX8SuDfznD:8488:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.IX8SuDfznD:8508:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.IX8SuDfznD:8512:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.IX8SuDfznD:8513:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.IX8SuDfznD:8530:warning: override: reassigning to symbol =
USER_NS
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 30 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.5nvdOWrzlo:1422:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5nvdOWrzlo:1425:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.5nvdOWrzlo:1426:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.5nvdOWrzlo:1428:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.5nvdOWrzlo:1429:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.5nvdOWrzlo:1433:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.5nvdOWrzlo:1434:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.5nvdOWrzlo:1492:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5nvdOWrzlo:1513:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.5nvdOWrzlo:1538:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5nvdOWrzlo:1542:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.5nvdOWrzlo:1650:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5nvdOWrzlo:1661:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.5nvdOWrzlo:1671:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5nvdOWrzlo:1678:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5nvdOWrzlo:1681:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.5nvdOWrzlo:1682:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.5nvdOWrzlo:1684:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.5nvdOWrzlo:1685:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.5nvdOWrzlo:1686:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5nvdOWrzlo:1688:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.5nvdOWrzlo:1697:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.5nvdOWrzlo:1703:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.5nvdOWrzlo:1723:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.5nvdOWrzlo:1727:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.5nvdOWrzlo:1728:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5nvdOWrzlo:1745:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

---------------------------------------------------------------------------=
-----
nsim_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1=
659' declared with attribute error: BUILD_BUG_ON failed: stat_items_size !=
=3D ARRAY_SIZE(vmstat_text) * sizeof(unsigned long)

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-Wunus=
ed-variable]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1165:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1=
659' declared with attribute error: BUILD_BUG_ON failed: stat_items_size !=
=3D ARRAY_SIZE(vmstat_text) * sizeof(unsigned long)

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 29 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.AN17pZGPhb:4566:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.AN17pZGPhb:4569:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.AN17pZGPhb:4570:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.AN17pZGPhb:4572:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.AN17pZGPhb:4573:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.AN17pZGPhb:4577:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.AN17pZGPhb:4578:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.AN17pZGPhb:4636:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.AN17pZGPhb:4657:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.AN17pZGPhb:4682:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.AN17pZGPhb:4686:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.AN17pZGPhb:4794:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.AN17pZGPhb:4805:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.AN17pZGPhb:4815:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.AN17pZGPhb:4822:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.AN17pZGPhb:4825:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.AN17pZGPhb:4826:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.AN17pZGPhb:4828:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.AN17pZGPhb:4829:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.AN17pZGPhb:4830:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.AN17pZGPhb:4832:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.AN17pZGPhb:4841:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.AN17pZGPhb:4847:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.AN17pZGPhb:4867:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.AN17pZGPhb:4871:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.AN17pZGPhb:4872:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.AN17pZGPhb:4889:warning: override: reassigning to symbol =
USER_NS
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]
    include/linux/stddef.h:8:14: warning: initialization of 'unsigned int' =
from 'void *' makes integer from pointer without a cast [-Wint-conversion]

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/mmc/core/block.c:500:6: warning: unused variable 'status' [-Wun=
used-variable]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5daeb81e.1c69fb81.1e67f.d992%40mx.google.com.
