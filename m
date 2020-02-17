Return-Path: <clang-built-linux+bncBDT6TV45WMPRBNG5VPZAKGQEUK7QRPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB01161BE1
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 20:51:17 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id y15sf6281063lji.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 11:51:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581969077; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeekdHez75k933t9P3E3vyu99WDPLlJtPA3M6T4HoN4teI3I4jgOu2c73Of8Y3CXI3
         gmhgyeMs+imShDR1S2n1vsP43b19Jky+LzdV6tNW8PGv60Ah0PEqiXXSO17AtJh/CDdi
         r9JNkdZ11K+2x2QVaVIkkZQezRbaCsTLnXh3O4+9pVj7PIjfhPPqmN6z3QUMK1k6pG9+
         BFoVFel4iXeHPSsjnzPzIyVcZTz7+EGImM0q5jwEGs+fT7CGr8Q+qp9tC5n6NR7YxrWL
         y2IZvEgkt9kA8i151T/9IdC5/QgDjutHnOGXayxlqETgKhn5o1wWJwW6YhimGHLg1Lzr
         duCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=/aqIigxyJMj0e4g0SuGzISdcFvoG4KpTu6UXUn+EgUw=;
        b=nQ9Do5GLRBTLXNDayKzwv8iBSyzhsPCoes2Vqe+kpCvIwdHx4Xi4h8+xfACoeYDVHH
         D9ZbOaQEMdiF05AonTcwvfFAJS1KYYDlgirV9cbtl8lHCN1AfL7t7vcHsobCIhP7xw/d
         0DbVl8ZNJyMPWvXRIZnFCyxUJT/1Sax2HIYTHzdhQr+yPwFeZXBwzCtxX/UAg+feqoTx
         BV7v+3ItMrWZA5vDWnd5T5DvD+tRfdLpMdOJgO2RrwJs7B+FD+j5KCmIFZQ2qef4ch2T
         sAfjd1iBQtMjznY8ZJuLKU8MffA3TjPf+be7NP3eXyn+tgaFd0HSIORxcMb7fIJDCvZV
         VOGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=dHbNZvae;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/aqIigxyJMj0e4g0SuGzISdcFvoG4KpTu6UXUn+EgUw=;
        b=FfN9meDp5JSeTblgrBPekr8HgHtYK9z6ucU7obgRWxwc1cM+6rHI4Ctp1FtRpLr+6U
         EATlkGWpJyMqBYhqcfljlwb/4x5gyxSwkGkS1R6CNlLfz7loU5h1oFFLmEgpF3Tvdoxb
         wHhoMlzOoH9A7bZbLYXMSBGz+32AofLW4p9EMpgjtuWzZ3ToxX9y1N44HHOG5y7KsGWE
         w7GS4/0hCgyzv15XHDSR03kxwyJp1RLKdGZOgJRnCKm+rpJ3kT0u/F4Z6VIrwBZ53HBA
         Nnby+uMH7x7u5xjnxwRgPWRdkudwVBsCyTaRQAsK+DeY2ZaCNXOBO3Q1dJ+N9ySgDx77
         NXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/aqIigxyJMj0e4g0SuGzISdcFvoG4KpTu6UXUn+EgUw=;
        b=Ht2qHW+uFgmnRV/CENVqhOqkNbH2Qicn0SU3awoxBeNE3KbfplH1UYyJXBPLkMbZJu
         cSe9jD0l88A/pXQqybxB50YLT3825G2aodN0k9ozqRFlB8lB1RcMgV2Qwz9MKG7pPf1z
         pK4ZDCPoPXsg7gSegrV6X+EVXfOz9S6uG7b+6t14LTe/1mLMu6HoP4D+GdL6SHhDKZIL
         coG0eNJQjeR0BZtG1zf+zUaBmhMlgk0eRnZ6GnJGFiSGkDrN+q8aKeLnPVnzCBeH5xdR
         lkFTkZLa9c6ldareNfvtUXELU1LyRtXU94plmIK2vQzNOrrqJtM3RjyZa+TXQeRmnaxe
         /OLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9zDVi0daxD7C/yrY0BgdN+QPhsplNr8NZ8hYmJEeFbqj4MjuL
	y+n+/KR/+OKYArFbRNlSDFI=
X-Google-Smtp-Source: APXvYqzKjaKMaC8Q7wYf1+X3aUOdrjPe9bY4MGDNUsapfmUxmiIuZW6oHO6ifyQWJuLy0OTY/utLqw==
X-Received: by 2002:a2e:880a:: with SMTP id x10mr11222867ljh.211.1581969076918;
        Mon, 17 Feb 2020 11:51:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1b4:: with SMTP id c20ls2167045ljn.5.gmail; Mon, 17
 Feb 2020 11:51:16 -0800 (PST)
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr11231224ljj.191.1581969076221;
        Mon, 17 Feb 2020 11:51:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581969076; cv=none;
        d=google.com; s=arc-20160816;
        b=V0nQsGkjSvqrjdpNkLT69E1hVfKgfDeP0O5Afm5qq3rXS/sxpvGSrt/ADotTB0KBKB
         Fja+AciLAfUnhX8mXfZKyIk4fA3BOJ+WMvfgtXosHVRPG8EJHtmTMW1+P99lj/eh64zM
         Q1Jklry8AprEuvcQ+UInOuGMgp3c2mQEDgI6NxkZr7N02RpD4uiY3PlBDrDOnsstu3j6
         R8kYprr5r2h75kqXOMvD/C0Pg4DzhyrElM0382AYgra1V93/OvvGtn52AiVItIC6gAPi
         OwNUaSVX8ZupdnQxpYqxrFTVnSqG5TeDgLCfpgOKt0XvxJq5shwvdgTX+ehObfodnmrc
         lFTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=+wTTRe4R7USU7V7fcy9cV0DkVK4lH88s+tnTXXnFQLM=;
        b=fcyX9nxjGGsP0kcaQBjPFem2VRmqwzulzLfwUHiPnrhYNeyCvZmpR5K5BhsKbFYUCM
         q+5MybwZuIeCbobFqjXSj9342wmZa5LrOS27m4hf37yGePXJ7knbZe6ubtFWZWwpnrOm
         YIhyU50i1VY1LXaGbudfzpHsZaLlVOu301HYR2hZgXO9rtsQSFZWdgXHMxaolGBs+1MQ
         ma+5TCZOOLUmQW1MaDFIgB2hoWG3TLxFTDjBZI++hf9eNtYNVaxEpdKnZVokFSehGNV9
         H7YRkA0RNzIOK259//h8FhGSq3ZHeIEvjouXV3WJtyh/bUhCsxdoH8FWrYM78ElhysdS
         0TSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=dHbNZvae;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x5si87546ljh.5.2020.02.17.11.51.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 11:51:15 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id s144so616754wme.1
        for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 11:51:15 -0800 (PST)
X-Received: by 2002:a7b:c08d:: with SMTP id r13mr609048wmh.84.1581969072714;
        Mon, 17 Feb 2020 11:51:12 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id x17sm2502973wrt.74.2020.02.17.11.51.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2020 11:51:12 -0800 (PST)
Message-ID: <5e4aeeb0.1c69fb81.58d3a.c9dc@mx.google.com>
Date: Mon, 17 Feb 2020 11:51:12 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20200217
Subject: next/master build: 168 builds: 0 failed, 168 passed,
 528 warnings (next-20200217)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=dHbNZvae;       spf=neutral (google.com: 2a00:1450:4864:20::343 is
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

next/master build: 168 builds: 0 failed, 168 passed, 528 warnings (next-202=
00217)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200217/

Tree: next
Branch: master
Git Describe: next-20200217
Git Commit: c25a951c50dca1da4a449a985a9debd82dc18573
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Warnings Detected:

arc:
    vdk_hs38_defconfig (gcc-8): 3 warnings
    vdk_hs38_smp_defconfig (gcc-8): 3 warnings

arm64:
    allmodconfig (clang-8): 74 warnings
    allmodconfig (gcc-8): 1 warning
    defconfig (clang-8): 12 warnings
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 25 warnings
    am200epdkit_defconfig (gcc-8): 3 warnings
    aspeed_g4_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (gcc-8): 7 warnings
    at91_dt_defconfig (gcc-8): 3 warnings
    badge4_defconfig (gcc-8): 3 warnings
    bcm2835_defconfig (gcc-8): 3 warnings
    cerfcube_defconfig (gcc-8): 3 warnings
    clps711x_defconfig (gcc-8): 3 warnings
    cm_x2xx_defconfig (gcc-8): 3 warnings
    cm_x300_defconfig (gcc-8): 3 warnings
    cns3420vb_defconfig (gcc-8): 3 warnings
    colibri_pxa270_defconfig (gcc-8): 3 warnings
    collie_defconfig (gcc-8): 3 warnings
    corgi_defconfig (gcc-8): 3 warnings
    dove_defconfig (gcc-8): 3 warnings
    ebsa110_defconfig (gcc-8): 3 warnings
    em_x270_defconfig (gcc-8): 3 warnings
    ep93xx_defconfig (gcc-8): 3 warnings
    eseries_pxa_defconfig (gcc-8): 3 warnings
    exynos_defconfig (gcc-8): 3 warnings
    ezx_defconfig (gcc-8): 3 warnings
    gemini_defconfig (gcc-8): 3 warnings
    hackkit_defconfig (gcc-8): 3 warnings
    hisi_defconfig (gcc-8): 3 warnings
    imote2_defconfig (gcc-8): 3 warnings
    imx_v4_v5_defconfig (gcc-8): 3 warnings
    imx_v6_v7_defconfig (gcc-8): 3 warnings
    integrator_defconfig (gcc-8): 3 warnings
    iop32x_defconfig (gcc-8): 3 warnings
    ixp4xx_defconfig (gcc-8): 3 warnings
    jornada720_defconfig (gcc-8): 3 warnings
    keystone_defconfig (gcc-8): 3 warnings
    lart_defconfig (gcc-8): 3 warnings
    lpc32xx_defconfig (gcc-8): 3 warnings
    lpd270_defconfig (gcc-8): 3 warnings
    magician_defconfig (gcc-8): 3 warnings
    mainstone_defconfig (gcc-8): 3 warnings
    milbeaut_m10v_defconfig (gcc-8): 3 warnings
    mini2440_defconfig (gcc-8): 3 warnings
    mmp2_defconfig (gcc-8): 3 warnings
    moxart_defconfig (gcc-8): 3 warnings
    multi_v4t_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 8 warnings
    multi_v7_defconfig (gcc-8): 8 warnings
    multi_v7_defconfig (gcc-8): 8 warnings
    mv78xx0_defconfig (gcc-8): 3 warnings
    mvebu_v5_defconfig (gcc-8): 3 warnings
    mxs_defconfig (gcc-8): 3 warnings
    neponset_defconfig (gcc-8): 3 warnings
    nhk8815_defconfig (gcc-8): 3 warnings
    omap1_defconfig (gcc-8): 3 warnings
    omap2plus_defconfig (gcc-8): 3 warnings
    oxnas_v6_defconfig (gcc-8): 3 warnings
    pleb_defconfig (gcc-8): 3 warnings
    prima2_defconfig (gcc-8): 3 warnings
    pxa168_defconfig (gcc-8): 3 warnings
    pxa255-idp_defconfig (gcc-8): 3 warnings
    pxa3xx_defconfig (gcc-8): 3 warnings
    realview_defconfig (gcc-8): 3 warnings
    rpc_defconfig (gcc-8): 3 warnings
    s3c2410_defconfig (gcc-8): 3 warnings
    s3c6400_defconfig (gcc-8): 3 warnings
    s5pv210_defconfig (gcc-8): 3 warnings
    sama5_defconfig (gcc-8): 3 warnings
    shannon_defconfig (gcc-8): 3 warnings
    shmobile_defconfig (gcc-8): 3 warnings
    simpad_defconfig (gcc-8): 3 warnings
    spear13xx_defconfig (gcc-8): 3 warnings
    spear3xx_defconfig (gcc-8): 3 warnings
    spear6xx_defconfig (gcc-8): 3 warnings
    spitz_defconfig (gcc-8): 3 warnings
    sunxi_defconfig (gcc-8): 4 warnings
    tango4_defconfig (gcc-8): 3 warnings
    trizeps4_defconfig (gcc-8): 3 warnings
    u300_defconfig (gcc-8): 3 warnings
    vexpress_defconfig (gcc-8): 3 warnings
    viper_defconfig (gcc-8): 3 warnings
    vt8500_v6_v7_defconfig (gcc-8): 3 warnings
    zeus_defconfig (gcc-8): 3 warnings
    zx_defconfig (gcc-8): 3 warnings

i386:
    i386_defconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    ar7_defconfig (gcc-8): 3 warnings
    ath79_defconfig (gcc-8): 3 warnings
    bcm47xx_defconfig (gcc-8): 3 warnings
    bigsur_defconfig (gcc-8): 3 warnings
    bmips_be_defconfig (gcc-8): 3 warnings
    capcella_defconfig (gcc-8): 3 warnings
    cobalt_defconfig (gcc-8): 3 warnings
    cu1000-neo_defconfig (gcc-8): 3 warnings
    db1xxx_defconfig (gcc-8): 3 warnings
    decstation_defconfig (gcc-8): 3 warnings
    fuloong2e_defconfig (gcc-8): 3 warnings
    gcw0_defconfig (gcc-8): 3 warnings
    gpr_defconfig (gcc-8): 3 warnings
    ip22_defconfig (gcc-8): 3 warnings
    ip27_defconfig (gcc-8): 4 warnings
    ip32_defconfig (gcc-8): 3 warnings
    jazz_defconfig (gcc-8): 3 warnings
    lasat_defconfig (gcc-8): 3 warnings
    lemote2f_defconfig (gcc-8): 4 warnings
    loongson1b_defconfig (gcc-8): 3 warnings
    loongson1c_defconfig (gcc-8): 3 warnings
    loongson3_defconfig (gcc-8): 3 warnings
    malta_defconfig (gcc-8): 3 warnings
    malta_kvm_defconfig (gcc-8): 3 warnings
    malta_kvm_guest_defconfig (gcc-8): 3 warnings
    malta_qemu_32r6_defconfig (gcc-8): 4 warnings
    maltaaprp_defconfig (gcc-8): 3 warnings
    maltasmvp_defconfig (gcc-8): 3 warnings
    maltasmvp_eva_defconfig (gcc-8): 3 warnings
    maltaup_defconfig (gcc-8): 3 warnings
    maltaup_xpa_defconfig (gcc-8): 3 warnings
    mpc30x_defconfig (gcc-8): 3 warnings
    msp71xx_defconfig (gcc-8): 3 warnings
    mtx1_defconfig (gcc-8): 3 warnings
    nlm_xlr_defconfig (gcc-8): 3 warnings
    pnx8335_stb225_defconfig (gcc-8): 3 warnings
    qi_lb60_defconfig (gcc-8): 3 warnings
    rb532_defconfig (gcc-8): 3 warnings
    rbtx49xx_defconfig (gcc-8): 3 warnings
    sb1250_swarm_defconfig (gcc-8): 3 warnings
    tb0226_defconfig (gcc-8): 3 warnings
    tb0287_defconfig (gcc-8): 3 warnings
    workpad_defconfig (gcc-8): 3 warnings

riscv:
    defconfig (gcc-8): 3 warnings
    defconfig (gcc-8): 4 warnings

x86_64:
    allmodconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning


Warnings summary:

    128  include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct re=
sv_map=E2=80=99 declared inside parameter list will not be visible outside =
of this definition or declaration
    128  include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct fi=
le_region=E2=80=99 declared inside parameter list will not be visible outsi=
de of this definition or declaration
    128  include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct re=
sv_map=E2=80=99 declared inside parameter list will not be visible outside =
of this definition or declaration
    27   1 warning generated.
    11   fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=
=80=98write_one_page=E2=80=99, declared with attribute warn_unused_result [=
-Wunused-result]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    7    2 warnings generated.
    6    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    6    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    6    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    6    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    5    drivers/dma/sun4i-dma.c:30:51: warning: statement with no effect [=
-Wunused-value]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest br=
aces around initialization of subobject [-Wmissing-braces]
    2    net/bluetooth/smp.c:2185:8: warning: variable 'passkey' is uniniti=
alized when used here [-Wuninitialized]
    2    net/bluetooth/smp.c:2119:13: note: initialize the variable 'passke=
y' to silence this warning
    2    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of funct=
ion declared with 'warn_unused_result' attribute [-Wunused-result]
    2    fs/btrfs/backref.c:394:30: warning: suggest braces around initiali=
zation of subobject [-Wmissing-braces]
    2    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest br=
aces around initialization of subobject [-Wmissing-braces]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2675:80=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
    2    3 warnings generated.
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2742:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_sli.c:11909:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: vari=
able 'rate_idx' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: var=
iable 'rate_idx' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: vari=
able 'rate_idx' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initia=
lize the variable 'rate_idx' to silence this warning
    1    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/net/ethernet/amazon/ena/ena_netdev.c:313:38: warning: sugg=
est braces around initialization of subobject [-Wmissing-braces]
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/infiniband/core/security.c:351:41: warning: use of logical=
 '||' with constant operand [-Wconstant-logical-operand]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2673:53=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:980:36: wa=
rning: address of 'sink->edid_caps.panel_patch.skip_scdc_overwrite' will al=
ways evaluate to 'true' [-Wpointer-bool-conversion]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342=
:53: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116=
:62: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:4=
1: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8538:4=
3: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    1    /tmp/cc8QZZL1.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc8QZZL1.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1165:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: vmlinux.o(.text.unlikely+0x39dc): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

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
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 74 warnings, 0 sect=
ion mismatches

Warnings:
    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    mm/shmem.c:2742:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
    1 warning generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/bluetooth/smp.c:2185:8: warning: variable 'passkey' is uninitialize=
d when used here [-Wuninitialized]
    net/bluetooth/smp.c:2119:13: note: initialize the variable 'passkey' to=
 silence this warning
    1 warning generated.
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of function d=
eclared with 'warn_unused_result' attribute [-Wunused-result]
    1 warning generated.
    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/btrfs/backref.c:394:30: warning: suggest braces around initializatio=
n of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/infiniband/core/security.c:351:41: warning: use of logical '||'=
 with constant operand [-Wconstant-logical-operand]
    1 warning generated.
    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/ethernet/amazon/ena/ena_netdev.c:313:38: warning: suggest b=
races around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    2 warnings generated.
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: variable =
'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsometi=
mes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: variable=
 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsomet=
imes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: variable =
'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsometi=
mes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initialize =
the variable 'rate_idx' to silence this warning
    3 warnings generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8538:43: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_sli.c:11909:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:980:36: warning=
: address of 'sink->edid_caps.panel_patch.skip_scdc_overwrite' will always =
evaluate to 'true' [-Wpointer-bool-conversion]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2673:53: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2675:80: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2675:80: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    3 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 25 warnings, 0 section =
mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    /tmp/cc8QZZL1.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc8QZZL1.s:18191: Warning: using r15 results in unpredictable beha=
viour
    drivers/dma/sun4i-dma.c:30:51: warning: statement with no effect [-Wunu=
sed-value]
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]
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
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

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
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

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
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x39dc): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 section=
 mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of function d=
eclared with 'warn_unused_result' attribute [-Wunused-result]
    1 warning generated.
    fs/btrfs/backref.c:394:30: warning: suggest braces around initializatio=
n of subobject [-Wmissing-braces]
    1 warning generated.
    net/bluetooth/smp.c:2185:8: warning: variable 'passkey' is uninitialize=
d when used here [-Wuninitialized]
    net/bluetooth/smp.c:2119:13: note: initialize the variable 'passkey' to=
 silence this warning
    1 warning generated.
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    2 warnings generated.

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section mi=
smatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    drivers/dma/sun4i-dma.c:30:51: warning: statement with no effect [-Wunu=
sed-value]
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 8 warnings, 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    drivers/dma/sun4i-dma.c:30:51: warning: statement with no effect [-Wunu=
sed-value]
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 =
warnings, 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    drivers/dma/sun4i-dma.c:30:51: warning: statement with no effect [-Wunu=
sed-value]
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    drivers/dma/sun4i-dma.c:30:51: warning: statement with no effect [-Wunu=
sed-value]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section m=
ismatches

Warnings:
    include/linux/hugetlb_cgroup.h:146:21: warning: =E2=80=98struct file_re=
gion=E2=80=99 declared inside parameter list will not be visible outside of=
 this definition or declaration
    include/linux/hugetlb_cgroup.h:145:63: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration
    include/linux/hugetlb_cgroup.h:233:59: warning: =E2=80=98struct resv_ma=
p=E2=80=99 declared inside parameter list will not be visible outside of th=
is definition or declaration

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e4aeeb0.1c69fb81.58d3a.c9dc%40mx.google.com.
