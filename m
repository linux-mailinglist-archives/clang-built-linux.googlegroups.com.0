Return-Path: <clang-built-linux+bncBDT6TV45WMPRBS5BQ32QKGQEBVVCW4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 227321B5BFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 14:57:49 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id v191sf291773vkv.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 05:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587646668; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dqz4/kx8kDEq9BgZ/9BdMIq/ej7pUWKpSMrR9yNwZMG9iriCr6/lMq8eBr1c5MeQKF
         tdcgaT5KR/ZTI6pMuQlfX6TwM9SxHQvy0gBS1T9O554Kq6HONK/uTfuMbOSa/mIduxjI
         IoJHpQV/cEB0cL2hnMnCwm2X+YoCjwG2UdojNdxHNi9pVykDPInN8o2tmcxD0Oru5ggu
         CQX+ihJK4L/gxLICHw6zCtM+r3Q2P5YYG0gmQooPpwf5lStKHupWKBMfJE4xKZRUYSnb
         fZWPZQ8bTzB7RvAIkCrs/5H9/AIoenCBWjFb7EPbyHPww9B1fR0ePLAaasFYiezKevkN
         4Eiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=0mnAZsTVFjWPSuWlv3X9l3wdHP75yDnHs/TxQrw0x9E=;
        b=ECvNdmOd4znCR4y5bp3tLB6Gjjr7oWWLg6S27GQ5aSNKabcv0+TXDSL4kh3hpOK5LD
         7B5NxhIHK8/I+OnDredH/GODi/xd+m0WY30aiOXnNz3uwFSWCazgHld2odbsW8hN/QJr
         BYmUylTyXGacS0GQUZC/1wHHnWF9K8/uC+NJZLXNIsH3Hyb3O2/vZ8Oo4XDChbL6AQF1
         Ytiei6QycFi1i3zYQuMxwqvYmlVC+zaG//gPDuAtu1/NRG91ZbVk/NSTpTQJIs50a8K0
         SAwKL/o8Zk9AlkKuKbkp1XDNA/go/3s7GzofP6UylsDEIhDlfrvu78AGYMqKZ0cOmJpE
         3hqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=qyjmx5y2;
       spf=neutral (google.com: 2607:f8b0:4864:20::102b is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mnAZsTVFjWPSuWlv3X9l3wdHP75yDnHs/TxQrw0x9E=;
        b=e2YPU12NGbvvPCHHGO5xIIhw9GPkoU3Jz3i6s5qGJ+SUT1FSdfc+zS6YgUYKSv724m
         3yfbRGwV+jgRvOgFw/Eco3zOwU+CKRa19TWdpFCOBTzmpdWB7ApcXoZ8c1fb9ezp2KTl
         b0Ven/xMTVjPnwzxkB7pBpyzFA9e8nIRE4N1THrI2pFbFDI8w2/vs9SDqeIjTtumfPrw
         aehFjBe4fU8BNsjK1DbnHu/bd93D4vZKMx509t8puSnPaZ0ke25D3bsajPLdOUsHIvDG
         4cMvbXUpbOtMtlsss5ZgzBRDaPvfhXnb6SLyPMbBvtUoDG+jg8dlg7Rqf1TIK64GmpzL
         JkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mnAZsTVFjWPSuWlv3X9l3wdHP75yDnHs/TxQrw0x9E=;
        b=G/+L0dK/lo3GjNLW7kcldrF0ygitYW154K7TdnXGeVG7zwaOz6qsbHJglA69Jnyrur
         NqsHfT978zaHYsOxD1jwwyNDza14B80iEP3hoVMdhUbUB5jplliCVFpsW9RFIsi2/35w
         AL2g4WtA4sL0WVCXvX6jMvqKbK57jSSRRiWfaz2PZrccw0oC+AeHWhA7sEK9TU7DB7zQ
         hZ2OTGXVng3LkzmkeSE8Ffw+B4flEkg0mTXJfLlxZescPCotKu67EdlWuHTvFQlObRY1
         OlW4NtgUpo1CBNcBstADe0ULD50IsZJBajpUDLQhO0LqOl6WeWRVD8k+nJOa13NXT7L8
         4kNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubA8S2kaGYBp2Ez4J5wD+mYkZEwv8OZgJ9TuPb2ZBZhgR80i/w9
	fXZ1paRTCHtde/T6H1gYgjA=
X-Google-Smtp-Source: APiQypIHJ07jlvb67ESucpi0EVOZTwDrf9NzxdMbX9Up0zuyBrA1LfmsNnJ2ON6hhqpdFvziflVV1w==
X-Received: by 2002:a05:6102:409:: with SMTP id d9mr2959897vsq.220.1587646667742;
        Thu, 23 Apr 2020 05:57:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:66c5:: with SMTP id a188ls831985vsc.5.gmail; Thu, 23 Apr
 2020 05:57:47 -0700 (PDT)
X-Received: by 2002:a67:7fd1:: with SMTP id a200mr2955965vsd.114.1587646666902;
        Thu, 23 Apr 2020 05:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587646666; cv=none;
        d=google.com; s=arc-20160816;
        b=RKZM7ztUVku/4pRTtRh3qYuK8k8AvdT9vD8VVSdV+bqj04xZAAUOgDIBZDq2vNvJiB
         ueEqrMb05fcbvcx17UcqcS/DdR6UDY3r1VwTpjxAnhO6B45DLCeHb6x3T64LfwWSCpvC
         KQxfAgqBhzPX5wmyJLtg7cZwyltrDxDZ1liaQs0E9A4SnNJg+S0r/GELZsr1DqNYRNow
         4oLGcy8lysXThBt/xB8gELw+hmyuuyqcZavvaVBnuv+ZhHVUCPAjsv1xYJYeuFXhjBDJ
         rO23fu+5ajcufCmklUD2kc4doEtbGaqT0z2GqUpSnqzUuuk8l+dhJp1y5g0DbCA4JshO
         QJ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=Zdw5gmcwy9VJChO3v57wpSTsNEPek5x9BHNoBIFxTNc=;
        b=HBb/YfmeVjvcCRdvlSCYQELEywuwRcSiDlXyXfhzZaQKi7o0/8YvVRk9oqil5cvEnT
         PrbxlxzGYuHBQGS4xIfCV2j16xQ/klQzsLwkhX5VskQWnT/q829kJZy+8iS0g65hx91O
         QsRiG7AM90hix+S9MWMvYVcWexhmUDQuI5hST5t7Qjf1dERSq2PC8+iWVxMwEarcNcnR
         DEaM2WvtwXfbyueIbMPVWxOF+BKvgkccj93mrfuQlut6I/4T2k3INyrUZZJx1BrI4iLC
         M9drioZbHSO7yDbH74mWIv4CJgpPpC/jZPLwNbw1H4L5BZlK+pBISV3XPSfFPezQ+ai8
         yAMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=qyjmx5y2;
       spf=neutral (google.com: 2607:f8b0:4864:20::102b is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id t191si235289vkt.0.2020.04.23.05.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 05:57:46 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::102b is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id a5so2448497pjh.2
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 05:57:45 -0700 (PDT)
X-Received: by 2002:a17:90a:3086:: with SMTP id h6mr486763pjb.49.1587646661026;
        Thu, 23 Apr 2020 05:57:41 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id r9sm2576007pfg.2.2020.04.23.05.57.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 05:57:38 -0700 (PDT)
Message-ID: <5ea190c2.1c69fb81.1ac57.9119@mx.google.com>
Date: Thu, 23 Apr 2020 05:57:38 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20200423
Subject: next/master build: 231 builds: 2 failed, 229 passed, 3 errors,
 2460 warnings (next-20200423)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=qyjmx5y2;       spf=neutral (google.com: 2607:f8b0:4864:20::102b is
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

next/master build: 231 builds: 2 failed, 229 passed, 3 errors, 2460 warning=
s (next-20200423)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200423/

Tree: next
Branch: master
Git Describe: next-20200423
Git Commit: aefe184e814492e36b2ca350c1522bd71b09b520
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm:
    qcom_defconfig: (gcc-8) FAIL

x86_64:
    x86_64_defconfig: (clang-9) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (clang-9): 45 warnings
    allmodconfig (gcc-8): 19 warnings
    defconfig (clang-10): 1763 warnings
    defconfig (clang-9): 15 warnings
    defconfig (gcc-8): 15 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 15 warnings
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 15 warnings
    defconfig+kselftest (gcc-8): 15 warnings

arm:
    allmodconfig (clang-9): 69 warnings
    allmodconfig (gcc-8): 37 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 5 warnings
    aspeed_g5_defconfig (gcc-8): 5 warnings
    aspeed_g5_defconfig (clang-9): 4 warnings
    assabet_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 14 warnings
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 3 warnings
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 3 warnings
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 3 warnings
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hackkit_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 1 warning
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (clang-9): 4 warnings
    multi_v5_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (clang-9): 18 warnings
    multi_v7_defconfig (clang-10): 18 warnings
    multi_v7_defconfig (gcc-8): 19 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 19 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 19 warni=
ngs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 19 warnings
    multi_v7_defconfig+kselftest (gcc-8): 20 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 7 warnings
    qcom_defconfig (gcc-8): 1 error, 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tango4_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig+kselftest (gcc-8): 3 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 2 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 2 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 1 warning
    bigsur_defconfig (gcc-8): 2 warnings
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 2 warnings
    ci20_defconfig (gcc-8): 3 warnings
    cobalt_defconfig (gcc-8): 2 warnings
    cu1000-neo_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    decstation_64_defconfig (gcc-8): 2 warnings
    decstation_defconfig (gcc-8): 2 warnings
    decstation_r4k_defconfig (gcc-8): 2 warnings
    e55_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 2 warnings
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 2 warnings
    ip22_defconfig (gcc-8): 2 warnings
    ip27_defconfig (gcc-8): 2 warnings
    ip28_defconfig (gcc-8): 2 warnings
    ip32_defconfig (gcc-8): 2 warnings
    jazz_defconfig (gcc-8): 2 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 2 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 3 warnings
    malta_defconfig (gcc-8): 2 warnings
    malta_kvm_defconfig (gcc-8): 2 warnings
    malta_kvm_guest_defconfig (gcc-8): 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 3 warnings
    maltaaprp_defconfig (gcc-8): 2 warnings
    maltasmvp_defconfig (gcc-8): 2 warnings
    maltasmvp_eva_defconfig (gcc-8): 2 warnings
    maltaup_defconfig (gcc-8): 2 warnings
    maltaup_xpa_defconfig (gcc-8): 2 warnings
    markeins_defconfig (gcc-8): 2 warnings
    mips_paravirt_defconfig (gcc-8): 2 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 2 warnings
    nlm_xlp_defconfig (gcc-8): 2 warnings
    nlm_xlr_defconfig (gcc-8): 2 warnings
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 2 warnings
    pistachio_defconfig (gcc-8): 2 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 2 warnings
    rb532_defconfig (gcc-8): 2 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 2 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 2 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 2 warnings

riscv:
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 3 warnings
    allmodconfig (clang-9): 34 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-9): 2 errors
    x86_64_defconfig+kselftest (gcc-8): 3 warnings

Errors summary:

    1    clang: error: assembler command failed with exit code 1 (use -v to=
 see invocation)
    1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!
    1    /tmp/cpudeadline-2dc49d.s:76: Error: `%ecx' not allowed with `orb'

Warnings summary:

    140  arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_fo=
rmat): /soc/firmware:dma-ranges: empty "dma-ranges" property but its #addre=
ss-cells (2) differs from /soc (1)
    126  <stdin>:1520:2: warning: #warning syscall process_madvise not impl=
emented [-Wcpp]
    102  kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be u=
sed uninitialized in this function [-Wmaybe-uninitialized]
    83   aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    40   scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning=
 (dma_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property=
 but its #address-cells (2) differs from /soc (1)
    24   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    24   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    18   3 warnings generated.
    18   ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' w=
ith variable sized type 'struct ib_uverbs_modify_qp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    18   ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' w=
ith variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of=
 a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end=
]
    18   ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' w=
ith variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of=
 a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end=
]
    16   arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning=
 (cooling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: M=
issing property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referr=
ed from cooling-device[0])
    16   1 warning generated.
    14   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    14   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    14   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    14   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    10   aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    9    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    8    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    8    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/raid6/raid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/xen/preempt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut2=
24.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_tra=
ce.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exy=
nos-arm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-s=
ys.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-p=
eri.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-m=
io.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallba=
ck_table.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.as=
n1.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-=
ctype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    3    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused var=
iable =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    3    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused var=
iable 'kiq' [-Wunused-variable]
    3    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused va=
riable =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    3    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused va=
riable 'kiq' [-Wunused-variable]
    3    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/wireless/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    3    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    3    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    2    drivers/soundwire/intel_init.c:193:14: warning: =E2=80=98sdw_intel=
_init=E2=80=99 defined but not used [-Wunused-function]
    2    drivers/soundwire/intel_init.c:193:14: warning: unused function 's=
dw_intel_init' [-Wunused-function]
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/hda/snd-hda-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/mac80211/mac80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ath/ath10k/ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tuner-types.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/vc4/vc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/tegra/tegra-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/lima/lima.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-objcopy: warning: vmlinux: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-nm: warning: vmlinux: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms1: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    #warning This code requires at least version 4.6 of GCC
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    warning: sound/soc/qcom/qdsp6/q6core.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000  LD [M]  sound/soc/qcom/snd-soc-qcom-common.ko
    1    warning: net/ipv6/netfilter/nf_log_ipv6.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: net/ipv4/ip_tunnel.mod.o: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    warning: fs/fuse/fuse.mod.o: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    warning: fs/btrfs/btrfs.mod.o: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    warning: drivers/watchdog/sunxi_wdt.mod.o: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    warning: drivers/rtc/rtc-imx-sc.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    warning: drivers/remoteproc/qcom_common.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/phy/qualcomm/phy-qcom-qmp.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/wireless/ti/wl18xx/wl18xx.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/macvtap.mod.o: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    warning: drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/ethernet/stmicro/stmmac/dwmac-meson.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/ethernet/broadcom/genet/genet.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/v4l2-core/videodev.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/usb/gspca/gspca_main.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/tuners/tda9887.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/tuners/mt20xx.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-wetek-play2.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-wetek-hub.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-su3000.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-pixelview.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-kworld-315u.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-dtt200u.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-avermedia-a16d.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-apac-viewcomp.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/iio/adc/qcom-spmi-adc5.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/gpu/drm/lima/lima.o: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    warning: drivers/cpufreq/cppc_cpufreq.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/char/hw_random/cavium-rng.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/bluetooth/btusb.mod.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    warning: arch/arm64/crypto/aes-neon-bs.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    1    warning: aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/r=
c-msi-tvanywhere.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size=
 of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1    security/integrity/ima/ima_crypto.c:592:12: warning: stack frame s=
ize of 1152 bytes in function 'ima_calc_field_array_hash_tfm' [-Wframe-larg=
er-than=3D]
    1    samples/ftrace/ftrace-direct.o: warning: objtool: .text+0x0: unrea=
chable instruction
    1    samples/ftrace/ftrace-direct-too.o: warning: objtool: .text+0x0: u=
nreachable instruction
    1    samples/ftrace/ftrace-direct-modify.o: warning: objtool: .text+0x0=
: unreachable instruction
    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call to =
__stack_chk_fail() with UACCESS enabled
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=E2=
=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but ar=
gument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    1    fs/erofs/data.c:149:18: warning: =E2=80=98last_block=E2=80=99 may =
be used uninitialized in this function [-Wmaybe-uninitialized]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/net/ethernet/mellanox/mlx5/core/debugfs.c:360:16: warning:=
 stack frame size of 1192 bytes in function 'dbg_read' [-Wframe-larger-than=
=3D]
    1    drivers/net/dsa/sja1105/sja1105_ethtool.c:421:6: warning: stack fr=
ame size of 1104 bytes in function 'sja1105_get_ethtool_stats' [-Wframe-lar=
ger-than=3D]
    1    drivers/media/tuners/mxl5005s.c:3953:1: warning: the frame size of=
 1120 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5648 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6:=
 warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    1    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: st=
ack frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-la=
rger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1c5: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
cb: call to memset() with UACCESS enabled
    1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame=
()+0x1fa: call to memset() with UACCESS enabled
    1    arch/mips/configs/ci20_defconfig:178:warning: override: reassignin=
g to symbol LEDS_TRIGGER_ONESHOT
    1    aarch64-linux-gnu-strip: warning: drivers/firmware/efi/libstub/lib=
-ctype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/sunxi/sun4i-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/sh/rcar/snd-soc-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/rockchip/snd-soc-rockchip-spdif.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/rockchip/snd-soc-rockchip-rt5645.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/rockchip/snd-soc-rockchip-pcm.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/rockchip/snd-soc-rockchip-i2s.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/rockchip/snd-soc-rk3399-gru-sound.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/snd-soc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/snd-soc-qcom-common.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6routing.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6asm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6asm-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6afe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6afe-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/qcom/qdsp6/q6adm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-g12a-tohdmitx.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-codec-glue.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-toddr.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-tdmout.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-tdmin.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-tdm-interface.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-tdm-formatter.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-spdifout.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-spdifin.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-sound-card.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-pdm.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-frddr.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/meson/snd-soc-meson-axg-fifo.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/generic/snd-soc-simple-card.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/generic/snd-soc-simple-card-utils.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/generic/snd-soc-audio-graph-card.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-wsa881x.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-tas571x.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-spdif-tx.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-spdif-rx.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-rt5663.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-rt5514.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-rt5514-spi.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-rl6231.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-pcm3168a.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-pcm3168a-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-max98927.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-max98357a.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-hdmi-codec.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-es7241.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-es7134.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-dmic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-da7219.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-cros-ec-codec.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/codecs/snd-soc-ak4613.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/soc/bcm/snd-soc-bcm2835-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/pci/hda/snd-hda-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/pci/hda/snd-hda-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/so=
und/pci/hda/snd-hda-codec-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/rfkill/rfkill.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/qrtr/qrtr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/qrtr/qrtr-tun.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/qrtr/qrtr-smd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/qrtr/ns.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_tcpudp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_addrtype.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_MASQUERADE.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_LOG.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/xt_CHECKSUM.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/x_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/nf_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/nf_log_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/netfilter/nf_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/llc/llc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/sit.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/nf_reject_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/nf_log_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/nf_defrag_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/ip6table_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/ip6table_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/ip6table_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/ip6t_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/netfilter/ip6_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv6/ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/tunnel4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/nf_reject_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/nf_log_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/nf_defrag_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/iptable_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/iptable_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/iptable_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/ipt_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/netfilter/ip_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/ipv4/ip_tunnel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/dsa/tag_ocelot.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/dsa/dsa_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/can/can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/can/can-raw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/can/can-gw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/can/can-bcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/bridge/bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/bluetooth/hidp/hidp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/bluetooth/bluetooth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/8021q/8021q.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/802/stp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/802/psnap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/802/p8022.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/802/mrp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ne=
t/802/garp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/zstd/zstd_decompress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/zstd/zstd_compress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/libcrc32c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/crypto/libdes.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/crypto/libchacha.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/crypto/libarc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/li=
b/crc-ccitt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs=
/overlayfs/overlay.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs=
/nfs/flexfilelayout/nfs_layout_flexfiles.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs=
/nfs/blocklayout/blocklayoutdriver.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs=
/fuse/fuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs=
/fuse/cuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs=
/btrfs/btrfs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/watchdog/sunxi_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/watchdog/qcom-wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/watchdog/meson_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/watchdog/meson_gxbb_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/watchdog/imx_sc_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/video/backlight/pwm_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/video/backlight/lp855x_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/video/backlight/generic_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/typec/typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/typec/tcpm/tcpm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/typec/tcpm/fusb302.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/typec/hd3ss3220.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/renesas_usbhs/renesas_usbhs.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/gadget/udc/tegra-xudc.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/usb/gadget/udc/renesas_usb3.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/tegra/tegra-bpmp-thermal.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/rockchip_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/qoriq_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/qcom/qcom-spmi-temp-alarm.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/imx_sc_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/imx8mm_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/broadcom/brcmstb_thermal.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/broadcom/bcm2835_thermal.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/thermal/broadcom/bcm2711_thermal.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spidev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-sh-msiof.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-qcom-qspi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-meson-spifc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-meson-spicc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-geni-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-bitbang.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-bcm2835aux.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/spi/spi-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soundwire/soundwire-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soundwire/soundwire-bus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/socinfo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/rmtfs_mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/qmi_helpers.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/pdr_interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/mdt_loader.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/glink_ssr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/qcom/apr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/soc/amlogic/meson-canvas.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/slimbus/slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/slimbus/slim-qcom-ngd-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/slimbus/slim-qcom-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/scsi/ufs/ufs-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/scsi/raid_class.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/scsi/mpt3sas/mpt3sas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-snvs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-rx8581.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-rk808.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-pcf85363.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-pcf2127.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-meson-vrtc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-imx-sc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rtc/rtc-ds1307.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/rpmsg/qcom_glink_smem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/reset/reset-qcom-pdc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/reset/reset-meson-audio-arb.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/remoteproc/qcom_sysmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/remoteproc/qcom_q6v5_pas.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/remoteproc/qcom_q6v5_mss.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/remoteproc/qcom_q6v5_ipa_notify.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/remoteproc/qcom_q6v5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/remoteproc/qcom_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/regulator/vctrl-regulator.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pwm/pwm-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pwm/pwm-sun4i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pwm/pwm-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pwm/pwm-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pwm/pwm-cros-ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pwm/pwm-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/power/supply/sbs-battery.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/platform/chrome/cros_ec_typec.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/tegra/phy-tegra194-p2u.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/rockchip/phy-rockchip-pcie.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/rockchip/phy-rockchip-inno-hdmi.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/renesas/phy-rcar-gen3-usb3.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/qualcomm/phy-qcom-qusb2.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/qualcomm/phy-qcom-qmp.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/phy/allwinner/phy-sun6i-mipi-dphy.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/perf/thunderx2_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/perf/fsl_imx8_ddr_perf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/perf/arm_smmuv3_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pci/controller/pcie-rockchip-host.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pci/controller/pcie-brcmstb.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/pci/controller/dwc/pcie-tegra194.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/nvmem/nvmem_meson_efuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/nvme/host/nvme.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/nvme/host/nvme-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ti/wlcore/wlcore_sdio.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ti/wl18xx/wl18xx.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/marvell/mwifiex/mwifiex_pcie.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/marvell/mwifiex/mwifiex.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ath/ath10k/ath10k_pci.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ath/ath10k/ath10k_core.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/wireless/ath/ath.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/veth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/zaurus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/usbnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/sr9800.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/smsc95xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/smsc75xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/rtl8150.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/r8152.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/plusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/pegasus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/net1080.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/mcs7830.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/lan78xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/dm9601.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/cdc_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/cdc_ncm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/cdc_ether.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/ax88179_178a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/usb/asix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/tap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/realtek.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/microchip.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/meson-gxl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/mdio-xpcs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/mdio-mux-meson-g12a.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/mdio-bcm-unimac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/marvell10g.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/marvell.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/bcm7xxx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/phy/bcm-phy-lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/mdio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/macvtap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/macvlan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/stmmac.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/stmmac-platform.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-rk.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-meson.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-generic.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga.ko: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/qualcomm/emac/qcom-emac.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/mscc/mscc_ocelot_common.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/mellanox/mlx5/core/mlx5_core.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/mellanox/mlx4/mlx4_en.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/mellanox/mlx4/mlx4_core.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/broadcom/genet/genet.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/broadcom/bnx2x/bnx2x.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/ethernet/atheros/atl1c/atl1c.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/dsa/ocelot/mscc_felix.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/can/rcar/rcar_canfd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/can/rcar/rcar_can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/can/flexcan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/net/can/can-dev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/misc/eeprom/at25.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/misc/eeprom/at24.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/mfd/wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/mfd/exynos-lpass.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/v4l2-core/videodev.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/v4l2-core/v4l2-dv-timings.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/usb/uvc/uvcvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/usb/gspca/gspca_main.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/xc5000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/xc4000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tuner-xc2028.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tuner-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tda9887.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tda8290.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tda827x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/tda18271.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/mt20xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/tuners/mc44s803.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/sunxi-cir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/rc-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/meson-ir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-zx-irdec.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-xbox-dvd.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-x96max.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-winfast.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-winfast-usbii-deluxe.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-wetek-play2.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-wetek-hub.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-videostrong-kii-pro.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-videomate-tv-pvr.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-videomate-s350.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-videomate-m1f.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-vega-s9x.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-twinhan1027.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-twinhan-dtv-cab-ci.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tt-1500.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-trekstor.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-total-media-in-hand.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-total-media-in-hand-02.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tivo.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tevii-nec.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-terratec-slim.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-terratec-slim-2.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-terratec-cinergy-s2-hd.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-terratec-cinergy-c-pci.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-technisat-usb2.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-technisat-ts35.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tbs-nec.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tanix-tx5max.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tanix-tx3mini.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-tango.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-su3000.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-streamzap.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-snapstream-firefly.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-reddo.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-real-audio-220-32-keys.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-rc6-mce.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pv951.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-purpletv.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-proteus-2309.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-powercolor-real-angel.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pixelview.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pixelview-new.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pixelview-mk12.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pixelview-002t.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pinnacle-pctv-hd.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pinnacle-grey.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pinnacle-color.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-pctv-sedna.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-odroid.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-npgtech.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-norwood.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-nebula.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-msi-tvanywhere.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-msi-tvanywhere-plus.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-msi-digivox-iii.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-msi-digivox-ii.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-medion-x10.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-medion-x10-or2x.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-medion-x10-digitainer.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-manli.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-lme2510.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-leadtek-y04g0051.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-kworld-plus-tv-analog.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-kworld-pc150u.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-kworld-315u.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-khadas.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-kaiomy.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-it913x-v2.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-it913x-v1.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-iodata-bctv7e.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-imon-rsc.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-imon-pad.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-imon-mce.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-hisi-tv-demo.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-hisi-poplar.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-hauppauge.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-gotview7135.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-genius-tvgo-a11mce.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-geekbox.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-gadmei-rm008z.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-fusionhdtv-mce.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-flyvideo.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-flydvb.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-eztv.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-evga-indtube.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-encore-enltv2.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-encore-enltv.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-encore-enltv-fm53.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-em-terratec.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dvico-portable.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dvico-mce.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dvbsky.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dtt200u.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dntv-live-dvbt-pro.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dntv-live-dvb-t.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dm1105-nec.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-digittrade.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-digitalnow-tinytwin.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dib0700-rc5.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-dib0700-nec.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-delock-61959.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-d680-dmb.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-cinergy.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-cinergy-1400.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-budget-ci-old.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-behold.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-behold-columbus.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-beelink-gs1.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-azurewave-ad-tu700.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avertv-303.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia-rm-ks.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia-m733a-rm-k6.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia-m135a.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia-dvbt.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia-cardbus.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-avermedia-a16d.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-ati-x10.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-ati-tv-wonder-hd-600.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-asus-ps3-100.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-asus-pc39.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-astrometa-t2hybrid.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-apac-viewcomp.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-anysee.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-alink-dtu-m.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/rc/keymaps/rc-adstech-dvb-t-pci.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/mc/mc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/i2c/ir-kbd-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/dvb-core/dvb-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/common/videobuf2/videobuf2-vmalloc.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/common/videobuf2/videobuf2-v4l2.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/common/videobuf2/videobuf2-memops.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/common/videobuf2/videobuf2-common.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/media/cec/core/cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/md/md-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/md/dm-zero.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/md/dm-region-hash.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/md/dm-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/md/dm-mirror.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/md/dm-log.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/mailbox/bcm-flexrm-mailbox.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/input/touchscreen/atmel_mxt_ts.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/input/misc/pm8xxx-vibrator.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/input/keyboard/snvs_pwrkey.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/input/keyboard/imx_sc_key.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/input/keyboard/adc-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/pressure/mpl3115.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/pressure/cros_ec_baro.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/light/isl29018.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/light/cros_ec_light_prox.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/common/cros_ec_sensors/cros_ec_sensors_core.ko: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/common/cros_ec_sensors/cros_ec_sensors.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/buffer/kfifo_buf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/buffer/industrialio-triggered-buffer.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/adc/rockchip_saradc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/adc/qcom-vadc-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/adc/qcom-spmi-adc5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/iio/adc/max9611.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/i2c/busses/i2c-qcom-geni.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/i2c/busses/i2c-qcom-cci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/i2c/busses/i2c-gpio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/i2c/busses/i2c-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/hwmon/raspberrypi-hwmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/hwmon/pwm-fan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/hwmon/lm90.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/hwmon/ina3221.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/hwmon/ina2xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/hid/i2c-hid/i2c-hid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/host1x/host1x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/ttm/ttm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun8i_tcon_top.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun8i-mixer.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun8i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun6i_mipi_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun6i_drc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun4i_tv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun4i-tcon.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun4i-frontend.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun4i-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun4i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/sun4i/sun4i-backend.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/scheduler/gpu-sched.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/rockchip/rockchipdrm.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/rcar-du/rcar_lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/rcar-du/rcar_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/rcar-du/rcar_cmm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/rcar-du/rcar-du-drm.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/pl111/pl111_drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/panfrost/panfrost.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/panel/panel-truly-nt35597.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/panel/panel-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/panel/panel-lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/meson/meson_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/meson/meson-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/i2c/tda998x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/i2c/sil164.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/i2c/ch7006.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/hisilicon/kirin/kirin-drm.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/hisilicon/hibmc/hibmc-drm.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/exynos/exynosdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/etnaviv/etnaviv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/drm_vram_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/drm_ttm_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/drm_kms_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/ti-sn65dsi86.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/thc63lvd1024.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/synopsys/dw-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/sii902x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/analogix/analogix_dp.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/bridge/adv7511/adv7511.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpu/drm/arm/mali-dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpio/gpio-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpio/gpio-bd9571mwv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/gpio/gpio-altera.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/fpga/stratix10-soc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/fpga/of-fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/fpga/fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/fpga/fpga-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/fpga/altera-freeze-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/firmware/stratix10-rsu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/dma/sun6i-dma.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/dma/sh/usb-dmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/dma/bcm-sba-raid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/virtio/virtio_crypto.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/qcom-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/hisilicon/zip/hisi_zip.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/hisilicon/hisi_qm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/ccree/ccree.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/caam/error.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/caam/dpaa2_caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/caam/caamhash_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/caam/caamalg_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/caam/caam_jr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/caam/caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/bcm/bcm_crypto_spu.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/crypto/allwinner/sun8i-ce/sun8i-ce.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/cpufreq/sun50i-cpufreq-nvmem.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/cpufreq/raspberrypi-cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/cpufreq/imx-cpufreq-dt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/cpufreq/cpufreq_powersave.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/cpufreq/cpufreq_conservative.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/cpufreq/cppc_cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/clk/qcom/camcc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/clk/meson/sclk-div.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/clk/meson/clk-phase.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/clk/meson/axg-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/clk/bcm/clk-raspberrypi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/ipmi/ipmi_si.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/ipmi/ipmi_msghandler.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/ipmi/ipmi_devintf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/xgene-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/rng-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/optee-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/omap-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/mtk-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/meson-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/iproc-rng200.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/hisi-trng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/hisi-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/exynos-trng.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/cctrng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/cavium-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/cavium-rng-vf.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/char/hw_random/bcm2835-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/bluetooth/hci_uart.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/bluetooth/btusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/bluetooth/btrtl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/bluetooth/btqca.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/bluetooth/btintel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/bluetooth/btbcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/block/nbd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/base/regmap/regmap-slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/dr=
ivers/base/regmap/regmap-sdw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/xxhash_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/xts.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/xor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/sm4_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/sm3_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/sha512_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/sha3_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/seqiv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/md5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/ghash-generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/gcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/ecdh_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/ecc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/des_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/ctr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/cmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/ccm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/blake2b_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/authencesn.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/authenc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/algif_rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/cr=
ypto/af_alg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/lib/xor-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/sm3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/sha512-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/sha512-arm64.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/sha3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/crct10dif-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/chacha-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/aes-neon-bs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/ar=
ch/arm64/crypto/aes-neon-blk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-objdump: warning: drivers/firmware/efi/libstub/l=
ib-ctype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-objcopy: warning: drivers/firmware/efi/libstub/l=
ib-ctype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/sunxi/sun4i-spdif.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/sh/rcar/snd-soc-rcar.mod.=
oaarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-spdif.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-rt5645.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-pcm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-i2s.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rk3399-g=
ru-sound.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-sdm845.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-qcom-common.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6routing.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6asm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6asm-dai.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe-dai.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6adm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-g12a-=
tohdmitx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-codec=
-glue.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-card-=
utils.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
oddr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dmout.mod.o  LD [M]  sound/soc/meson/snd-soc-meson-g12a-tohdmitx.ko
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dmin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dm-interface.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dm-formatter.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-s=
pdifout.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-s=
pdifin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-s=
ound-card.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-p=
dm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-f=
rddr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-f=
ifo.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-ca=
rd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-ca=
rd-utils.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-audio-gra=
ph-card.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wsa881x.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wcd934x.mo=
d.o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: sound/so=
c/codecs/snd-soc-spdif-tx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-spdif-rx.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warni=
ng: sound/soc/codecs/snd-soc-tas571x.mod.o: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5663.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5645.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514-spi=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rl6231.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a-i=
2c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98927.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98357a.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-hdmi-codec=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7241.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7134.mod=
.o: unsupported GNU_PROPERTY_TYPE (5  LD [M]  sound/soc/codecs/snd-soc-es72=
41.ko
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-dmic.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-da7219.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-cros-ec-co=
dec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-ak4613.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/bcm/snd-soc-bcm2835-i2s.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-tegra.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec-hdmi.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/hda/trace.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warning: net/wir=
eless/cfg80211.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/trace.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/shipped-certs.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/rfkill/rfkill.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-tun.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-smd.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/ns.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_tcpudp.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_nat.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_conntrack.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_addrtype.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_MASQUERADE.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_LOG.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_CHECKSUM.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/x_tables.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/nf_nat.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/nf_log_common.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/nf_conntrack.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/mac80211/trace.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/llc/llc.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/sit.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_defrag_ipv6.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_nat.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_mangle.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_filter.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6t_REJECT.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6_tables.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/ipv6.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/tunnel4.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_reject_ipv4.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_log_ipv4.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_defrag_ipv4.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_nat.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_mangle.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_filter.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ipt_REJECT.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ip_tables.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/dsa/tag_ocelot.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/dsa/dsa_core.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can-raw.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can-gw.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can-bcm.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/bridge/bridge.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/bluetooth/hidp/hidp.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/bluetooth/bluetooth.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/8021q/8021q.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/stp.mod.o: unsupported GNU_=
PROPERTY_TYPE (5  LD [M]  net/bluetooth/hidp/hidp.ko
    1    aarch64-linux-gnu-ld: warning: net/802/psnap.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  net/bluetooth/bluetooth.ko
    1    aarch64-linux-gnu-ld: warning: net/802/p8022.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/mrp.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/garp.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/zstd/zstd_decompress.mod.o: uns=
upported GNU_PROPERTY_TYPE (  LD [M]  net/802/mrp.ko
    1    aarch64-linux-gnu-ld: warning: lib/zstd/zstd_compress.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/tables.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/int32.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/int16.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/libcrc32c.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crypto/libdes.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crypto/libchacha.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crypto/libarc4.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crc-ccitt.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/overlayfs/overlay.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/nfs/flexfilelayout/nfs_layout_fl=
exfiles.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/nfs/blocklayout/blocklayoutdrive=
r.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/fuse/cuse.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/watchdog/qcom-wdt.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warning: driv=
ers/watchdog/meson_wdt.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-ld: warning: drivers/watchdog/imx_sc_wdt.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/video/backlight/pwm_bl.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/video/backlight/generic_bl.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/typec/typec.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-ld: warning: drivers/video/ba=
cklight/lp855x_bl.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/typec/tcpm/tcpm.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/typec/tcpm/fusb302.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/typec/hd3ss3220.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/renesas_usbhs/renesas_u=
sbhs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/tegra-xudc.m=
od.o: unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/usb/typec/tcpm/fusb3=
02.ko
    1    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/renesas_usb3=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/tegra/tegra-bpmp-th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/rockchip_thermal.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/qoriq_thermal.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/qcom-spmi-temp=
-alarm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/imx_sc_thermal.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/imx8mm_thermal.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/brcmstb_th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2835_th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2711_th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spidev.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-sh-msiof.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-qcom-qspi.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spifc.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spicc.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-imx.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-geni-qcom.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bitbang.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835aux.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soundwire/soundwire-qcom.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soundwire/soundwire-bus.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/socinfo.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/rmtfs_mem.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/qmi_helpers.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/pdr_interface.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/mdt_loader.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/glink_ssr.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/apr.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/amlogic/meson-canvas.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ngd-ctrl.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ctrl.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/scsi/ufs/ufs-qcom.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/scsi/raid_class.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/scsi/mpt3sas/mpt3sas.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-snvs.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rx8581.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rk808.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-pcf85363.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-pcf2127.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-meson-vrtc.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-ds1307.mod.o: unsup=
ported GNU_PROPERTY_TYPE (  LD [M]  drivers/rtc/rtc-rx8581.ko
    1    aarch64-linux-gnu-ld: warning: drivers/rpmsg/qcom_glink_smem.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/reset/reset-qcom-pdc.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/reset/reset-meson-audio-arb=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_sysmon.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_pas.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_mss.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_ipa_no=
tify.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/regulator/vctrl-regulator.m=
od.o: unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/remoteproc/qcom_q6v5=
.ko
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-tegra.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-sun4i.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-rcar.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-meson.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-cros-ec.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-bcm2835.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/power/supply/sbs-battery.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_typ=
ec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/tegra/phy-tegra194-p2u.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-p=
cie.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-i=
nno-hdmi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/renesas/phy-rcar-gen3-u=
sb3.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/allwinner/phy-sun6i-mip=
i-dphy.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/perf/thunderx2_pmu.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/perf/fsl_imx8_ddr_perf.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/perf/arm_smmuv3_pmu.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-rockchi=
p-host.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-brcmstb=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pci/controller/dwc/pcie-teg=
ra194.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/nvmem/nvmem_meson_efuse.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme-core.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlco=
re_sdio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlco=
re.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifie=
x/mwifiex_pcie.mod.o: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-ld:=
 ) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifie=
x/mwifiex.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/broadcom/brcm8=
0211/brcmutil/brcmutil.mod.o: unsupported GNU_PROPERTY_TYPE (  LD [M]  driv=
ers/net/wireless/marvell/mwifiex/mwifiex_pcie.ko
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/broadcom/brcm8=
0211/brcmfmac/brcmfmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/qmi=
_wlfw_v01.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_snoc.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_snoc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/veth.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/zaurus.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/net/wireless/ath/ath=
10k/ath10k_core.ko
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/usbnet.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/sr9800.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc95xx.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc75xx.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/rtl8150.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/r8152.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/plusb.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/pegasus.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/net1080.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/mcs7830.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/lan78xx.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  drivers/net/usb/r81=
52.ko
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/dm9601.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_subset.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_ncm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_ether.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/ax88179_178a.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/asix.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/tap.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/realtek.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/microchip.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/meson-gxl.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-xpcs.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-mux-meson-g12a=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-bcm-unimac.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/marvell10g.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/marvell.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/bcm7xxx.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/bcm-phy-lib.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/macvlan.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/stmmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/stmmac-platform.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-sunxi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-qcom-ethqos.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-meson8b.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-generic.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-altr-socfpga.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/qualcomm/emac/=
qcom-emac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mscc/mscc_ocel=
ot_common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx5/=
core/mlx5_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx4/=
mlx4_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/broadcom/bnx2x=
/bnx2x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/atheros/atl1c/=
atl1c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/dsa/ocelot/mscc_felix.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_canfd.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_can.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/flexcan.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/can-dev.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at25.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at24.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/mfd/wcd934x.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/mfd/exynos-lpass.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-dv-tim=
ings.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/usb/uvc/uvcvideo.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/xc5000.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-xc2028.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-simple.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda8290.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda827x.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda18271.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/mc44s803.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/sunxi-cir.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/rc-core.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/meson-ir.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-zx-irde=
c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-xbox-dv=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-x96max.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu=
-ld:
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast=
-usbii-deluxe.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videost=
rong-kii-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videoma=
te-tv-pvr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videoma=
te-s350.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videoma=
te-m1f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-vega-s9=
x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-twinhan=
1027.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  dri=
vers/media/rc/keymaps/rc-videomate-m1f.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-twinhan=
-dtv-cab-ci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tt-1500=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-treksto=
r.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-total-m=
edia-in-hand.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-total-m=
edia-in-hand-02.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tivo.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tevii-n=
ec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-slim.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-slim-2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-cinergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/media/=
rc/keymaps/rc-tevii-nec.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-cinergy-s2-hd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-cinergy-c-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technis=
at-usb2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technis=
at-ts35.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tbs-nec=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tanix-t=
x5max.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tanix-t=
x3mini.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tango.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-streamz=
ap.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-snapstr=
eam-firefly.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-=
gnu-ld: c0000000warning: drivers/media/rc/keymaps/rc-reddo.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-real-au=
dio-220-32-keys.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-rc6-mce=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pv951.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-purplet=
v.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-proteus=
-2309.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-powerco=
lor-real-angel.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew-new.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-l=
d: c0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew-mk12.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew-002t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacl=
e-grey.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacl=
e-color.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pctv-se=
dna.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-odroid.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-npgtech=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-norwood=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-nec-ter=
ratec-cinergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-tva=
nywhere-plus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-dig=
ivox-iii.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-dig=
ivox-ii.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-=
x10.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-=
x10-or2x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-manli.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-lme2510=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-leadtek=
-y04g0051.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kworld-=
plus-tv-analog.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kworld-=
pc150u.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-khadas.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kaiomy.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-=
v2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-=
v1.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-iodata-=
bctv7e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-rs=
c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-pa=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-mc=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hisi-tv=
-demo.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hisi-po=
plar.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hauppau=
ge.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gotview=
7135.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-genius-=
tvgo-a11mce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-geekbox=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gadmei-=
rm008z.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-fusionh=
dtv-mce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flyvide=
o.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flydvb.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-eztv.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-evga-in=
dtube.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-=
enltv2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-=
enltv-fm53.mod.o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warn=
ing: drivers/media/rc/keymaps/rc-encore-enltv.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-em-terr=
atec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-p=
ortable.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-m=
ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvbsky.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dntv-li=
ve-dvb-t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dm1105-=
nec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digittr=
ade.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digital=
now-tinytwin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700=
-rc5.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700=
-nec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  dri=
vers/media/rc/keymaps/rc-dm1105-nec.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-d680-dm=
b.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy=
-1400.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cec.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-budget-=
ci-old.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/m=
edia/rc/keymaps/rc-cinergy.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold-=
columbus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-beelink=
-gs1.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-azurewa=
ve-ad-tu700.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avertv-=
303.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-m733a-rm-k6.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-m135a.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-dvbt.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-cardbus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drive=
rs/media/rc/keymaps/rc-avermedia-m733a-rm-k6.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-x10=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-tv-=
wonder-hd-600.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  dr=
ivers/media/rc/keymaps/rc-avermedia-a16d.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-asus-ps=
3-100.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-asus-pc=
39.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-astrome=
ta-t2hybrid.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-anysee.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-adstech=
-dvb-t-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/mc/mc.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/i2c/ir-kbd-i2c.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/dvb-core/dvb-core.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-vmalloc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-v4l2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-memops.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/cec/core/cec.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/md-mod.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/media/common/videobuf2/vi=
deobuf2-v4l2.ko
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-zero.mod.o  LD [M]  d=
rivers/media/common/videobuf2/videobuf2-common.ko
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-region-hash.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-mod.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-mirror.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-log.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/mailbox/bcm-flexrm-mailbox.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/touchscreen/atmel_mxt=
_ts.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/misc/pm8xxx-vibrator.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/snvs_pwrkey.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/imx_sc_key.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/adc-keys.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/mpl3115.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/cros_ec_baro.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/light/isl29018.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/light/cros_ec_light_pro=
x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/=
cros_ec_sensors_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/=
cros_ec_sensors.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/kfifo_buf.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/industrialio-tri=
ggered-buffer.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/adc/rockchip_saradc.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/adc/qcom-vadc-common.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-geni.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-cci.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-gpio.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-bcm2835.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/i2c/busses/i=
2c-qcom-cci.ko
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/raspberrypi-hwmon.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/pwm-fan.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/lm90.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/ina3221.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/ina2xx.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hid/i2c-hid/i2c-hid.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/host1x/host1x.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4_trace_point=
s.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/ttm/ttm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/trace.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i_tcon_to=
p.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i-mixer.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i-drm-hdm=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_mipi_ds=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i_tv.mod.=
oaarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_drc.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-tcon.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-fronten=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm-hdm=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-backend=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/scheduler/gpu-sched=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rockchip/rockchipdr=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_lvds.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_dw_hdm=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_cmm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar-du-drm=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/pl111/pl111_drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panfrost/panfrost.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-truly-n=
t35597.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-simple.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-lvds.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev=
/pci/agp.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev=
/bios/shadowof.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgp107.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgp104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgk208.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgk110b.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgf119.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgf110.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgf104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_gpu_tracepo=
ints.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_atomic_trac=
epoints.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/meson/meson_dw_hdmi=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/meson/meson-drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima_trace.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2c/tda998x.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2c/sil164.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2c/ch7006.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/kir=
in-drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/dw_=
drm_dsi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/hibmc/hib=
mc-drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/exynos/exynosdrm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/etnaviv/etnaviv.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_vram_helper.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_ttm_helper.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_trace_points.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_kms_helper.mod.=
o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers/gp=
u/drm/drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/ti-sn65dsi86=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/thc63lvd1024=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
mipi-dsi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi-i2s-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi-cec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi-ahb-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/sii902x.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/analogix/ana=
logix_dp.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/adv7511/adv7=
511.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/arm/mali-dp.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-wcd934x.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-bd9571mwv.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-altera.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/stratix10-soc.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/of-fpga-region.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-region.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-bridge.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/altera-freeze-bridge.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/firmware/stratix10-rsu.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/dma/sun6i-dma.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/dma/sh/usb-dmac.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/dma/bcm-sba-raid.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/virtio/virtio_crypto=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/qcom-rng.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/zip/hisi_z=
ip.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/hisi_qm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/ccree/ccree.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/error.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/dpaa2_caam.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamhash_desc.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamalg_desc.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam_jr.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/bcm/bcm_crypto_spu.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/allwinner/sun8i-ce/s=
un8i-ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/sun50i-cpufreq-nvme=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/raspberrypi-cpufreq=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/imx-cpufreq-dt.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cpufreq_conservativ=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/qcom/camcc-sdm845.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/meson/sclk-div.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/meson/clk-phase.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/meson/axg-audio.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/bcm/clk-raspberrypi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_si.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_msghandler.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_devintf.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/xgene-rng.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/rng-core.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/optee-rng.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/omap-rng.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/mtk-rng.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/meson-rng.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/iproc-rng200=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/hisi-trng-v2=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/hisi-rng.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cctrng.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cavium-rng-v=
f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/bcm2835-rng.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/hci_uart.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btrtl.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btbcm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/block/nbd.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-slimbus.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-sdw.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/xxhash_generic.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/xts.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/xor.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sm4_generic.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sm3_generic.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sha512_generic.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sha3_generic.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/seqiv.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/md5.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ghash-generic.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/gcm.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ecdh_generic.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ecc.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/des_generic.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ctr.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/cmac.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ccm.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/blake2b_generic.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/authencesn.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/authenc.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/algif_rng.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/af_alg.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/lib/xor-neon.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sm3-ce.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-ce.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-arm64.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha3-ce.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/crct10dif-ce.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/chacha-neon.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/aes-neon-blk.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: driv=
ers/bluetooth/btintel.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-ld: warning:   LD [M]  net/wireless/cfg80211.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/soc/qcom/glink_ss=
r.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/=
rc-pixelview.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/=
rc-medion-x10.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/=
rc-dib0700-rc5.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/=
rc-avertv-303.ko
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: sound/soc/qco=
m/qdsp6/q6dsp-common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: net/ipv6/netf=
ilter/nf_reject_ipv6.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/watch=
dog/meson_gxbb_wdt.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/remot=
eproc/qcom_q6v5.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/phy/q=
ualcomm/phy-qcom-qusb2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/m=
dio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/e=
thernet/stmicro/stmmac/dwmac-rk.mod.o: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/e=
thernet/stmicro/stmmac/dwmac-ipq806x.mod.o: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/e=
thernet/mellanox/mlx4/mlx4_en.mod.o: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media=
/tuners/xc4000.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media=
/rc/keymaps/rc-dntv-live-dvbt-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media=
/rc/keymaps/rc-alink-dtu-m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/iio/a=
dc/max9611.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/cpufr=
eq/cpufreq_powersave.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/char/=
hw_random/exynos-trng.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-ar: warning: lib/nmi_backtrace.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/irq_regs.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/ctype.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/clz_tab.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: drivers/firmware/efi/libstub/lib-ct=
ype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    2 warnings generated.
    1    /tmp/test-arm-ca0edb.s:18788: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-ca0edb.s:18713: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/ccLW1h5X.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccLW1h5X.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1167:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x2a74): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()
    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x2860): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()

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
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused variable=
 =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused variabl=
e =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    drivers/soundwire/intel_init.c:193:14: warning: =E2=80=98sdw_intel_init=
=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 45 warnings, 0 sect=
ion mismatches

Warnings:
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused variable=
 'kiq' [-Wunused-variable]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused variabl=
e 'kiq' [-Wunused-variable]
    1 warning generated.
    drivers/soundwire/intel_init.c:193:14: warning: unused function 'sdw_in=
tel_init' [-Wunused-function]
    1 warning generated.
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 69 warnings, 0 sectio=
n mismatches

Warnings:
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    security/integrity/ima/ima_crypto.c:592:12: warning: stack frame size o=
f 1152 bytes in function 'ima_calc_field_array_hash_tfm' [-Wframe-larger-th=
an=3D]
    1 warning generated.
    /tmp/test-arm-ca0edb.s:18713: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-ca0edb.s:18788: Warning: using r15 results in unpredictab=
le behaviour
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: stack f=
rame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-larger-=
than=3D]
    1 warning generated.
    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size of 1=
152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused variable=
 'kiq' [-Wunused-variable]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused variabl=
e 'kiq' [-Wunused-variable]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6: warn=
ing: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5648 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/net/dsa/sja1105/sja1105_ethtool.c:421:6: warning: stack frame s=
ize of 1104 bytes in function 'sja1105_get_ethtool_stats' [-Wframe-larger-t=
han=3D]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/debugfs.c:360:16: warning: stac=
k frame size of 1192 bytes in function 'dbg_read' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
allmodconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 34 warnings, 0 sec=
tion mismatches

Warnings:
    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call to __sta=
ck_chk_fail() with UACCESS enabled
    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0x=
1fa: call to memset() with UACCESS enabled
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x1c5:=
 call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1cb: c=
all to memset() with UACCESS enabled
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a st=
ruct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with v=
ariable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct =
or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
    3 warnings generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused variable=
 'kiq' [-Wunused-variable]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused variabl=
e 'kiq' [-Wunused-variable]
    1 warning generated.
    drivers/soundwire/intel_init.c:193:14: warning: unused function 'sdw_in=
tel_init' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 sectio=
n mismatches

Warnings:
    fs/erofs/data.c:149:18: warning: =E2=80=98last_block=E2=80=99 may be us=
ed uninitialized in this function [-Wmaybe-uninitialized]
    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused variable=
 =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused variabl=
e =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    drivers/soundwire/intel_init.c:193:14: warning: =E2=80=98sdw_intel_init=
=E2=80=99 defined but not used [-Wunused-function]
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings, 0 section =
mismatches

Warnings:
    /tmp/ccLW1h5X.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccLW1h5X.s:18191: Warning: using r15 results in unpredictable beha=
viour
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=E2=80=99=
 expects argument of type =E2=80=98long unsigned int=E2=80=99, but argument=
 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c:6396:21: warning: unused variable=
 =E2=80=98kiq=E2=80=99 [-Wunused-variable]
    drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:7608:21: warning: unused variabl=
e =E2=80=98kiq=E2=80=99 [-Wunused-variable]
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
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
allnoconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
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
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
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
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
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
aspeed_g5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

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
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

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
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    arch/mips/configs/ci20_defconfig:178:warning: override: reassigning to =
symbol LEDS_TRIGGER_ONESHOT
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x2a74): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x2860): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1763 warnings, 0 sect=
ion mismatches

Warnings:
    aarch64-linux-gnu-ar: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: drivers/firmware/efi/libstub/lib-ctyp=
e.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objdump: warning: drivers/firmware/efi/libstub/lib-ct=
ype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: drivers/firmware/efi/libstub/lib-ct=
ype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: drivers/firmware/efi/libstub/lib-ctype.s=
tub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/xen/preempt.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/xen/preempt.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms1: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms1: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/xen/preempt.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/xen/preempt.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: vmlinux: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: vmlinux: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/hda/trace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/tables.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/int16.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/int32.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima_trace.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/trace.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/shipped-certs.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/mac80211/trace.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4_trace_points.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_atomic_tracepoin=
ts.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_gpu_tracepoints.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/qmi_wlfw=
_v01.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_trace_points.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev/bios=
/shadowof.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev/pci/=
agp.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgf104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgf110.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgf119.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgk110b.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgk208.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgp104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgp107.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/aes-neon-blk.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: arch/arm64/crypto/aes-neon-bs.mod.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/crct10dif-ce.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/chacha-neon.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha3-ce.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-arm64.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-ce.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sm3-ce.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/lib/xor-neon.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/algif_rng.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/authenc.mod.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/af_alg.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/authencesn.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/blake2b_generic.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ccm.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/cmac.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ctr.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/des_generic.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ecc.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ecdh_generic.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/gcm.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ghash-generic.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/md5.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sha3_generic.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/seqiv.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sha512_generic.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sm3_generic.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sm4_generic.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/xor.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/xts.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/xxhash_generic.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-sdw.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-slimbus.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/block/nbd.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btbcm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: drivers/b=
luetooth/btintel.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btrtl.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/hci_uart.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/bcm2835-rng.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cavium-rng-vf.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/bluetooth/btusb.mod.o: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/char/hw_ra=
ndom/exynos-trng.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/char/hw_random/cavium-rng.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/hisi-rng.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/hisi-trng-v2.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cctrng.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/iproc-rng200.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/mtk-rng.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/meson-rng.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/omap-rng.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/rng-core.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/optee-rng.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/xgene-rng.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_msghandler.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_devintf.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_si.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/bcm/clk-raspberrypi.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/meson/axg-audio.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/meson/sclk-div.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/meson/clk-phase.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/qcom/camcc-sdm845.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/cpufreq/cp=
ufreq_powersave.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/cpufreq/cppc_cpufreq.mod.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cpufreq_conservative.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/imx-cpufreq-dt.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/sun50i-cpufreq-nvmem.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/raspberrypi-cpufreq.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/allwinner/sun8i-ce/sun8i-=
ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/bcm/bcm_crypto_spu.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam_jr.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamalg_desc.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamhash_desc.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/dpaa2_caam.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/error.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/ccree/ccree.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/hisi_qm.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/zip/hisi_zip.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/qcom-rng.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/virtio/virtio_crypto.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/bcm-sba-raid.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/sh/usb-dmac.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/sun6i-dma.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/firmware/stratix10-rsu.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/altera-freeze-bridge.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-region.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-bridge.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/of-fpga-region.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/stratix10-soc.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-altera.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-bd9571mwv.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-wcd934x.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/arm/mali-dp.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/adv7511/adv7511.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/analogix/analogix=
_dp.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/sii902x.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi-=
ahb-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi-=
cec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi-=
i2s-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-mipi-=
dsi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/thc63lvd1024.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/ti-sn65dsi86.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_kms_helper.mod.o: un=
supported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers/gpu/drm=
/drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_ttm_helper.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_vram_helper.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/etnaviv/etnaviv.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/exynos/exynosdrm.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/hibmc/hibmc-dr=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/dw_drm_d=
si.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/kirin-dr=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2c/ch7006.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2c/sil164.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2c/tda998x.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/gpu/drm/lima/lima.o: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/meson/meson_dw_hdmi.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/meson/meson-drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-lvds.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-simple.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panfrost/panfrost.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/pl111/pl111_drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar-du-drm.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-truly-nt3559=
7.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_cmm.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_dw_hdmi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_lvds.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rockchip/rockchipdrm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/scheduler/gpu-sched.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-backend.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm-hdmi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-frontend.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-tcon.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i_tv.mod.oaarc=
h64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_drc.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_mipi_dsi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i-drm-hdmi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i-mixer.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i_tcon_top.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/ttm/ttm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/host1x/host1x.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hid/i2c-hid/i2c-hid.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/ina2xx.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/lm90.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/pwm-fan.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/ina3221.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-bcm2835.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/i2c/busses/i2c-qc=
om-cci.ko
    aarch64-linux-gnu-ld: warning: drivers/hwmon/raspberrypi-hwmon.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-gpio.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-cci.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-geni.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/iio/adc/ma=
x9611.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/iio/adc/qcom-spmi-adc5.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/adc/qcom-vadc-common.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/adc/rockchip_saradc.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/industrialio-triggere=
d-buffer.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/cros_=
ec_sensors.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/kfifo_buf.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/light/cros_ec_light_prox.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/cros_=
ec_sensors_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/cros_ec_baro.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/light/isl29018.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/mpl3115.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/adc-keys.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/snvs_pwrkey.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/imx_sc_key.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/misc/pm8xxx-vibrator.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/touchscreen/atmel_mxt_ts.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-log.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-mod.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mailbox/bcm-flexrm-mailbox.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-mirror.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-region-hash.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-zero.mod.o  LD [M]  driver=
s/media/common/videobuf2/videobuf2-common.ko
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/md-mod.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/media/common/videobuf2/videobu=
f2-v4l2.ko
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-v4l2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/cec/core/cec.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-vmalloc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/dvb-core/dvb-core.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/i2c/ir-kbd-i2c.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/mc/mc.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-memops.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-adstech-dvb-=
t-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media/rc/k=
eymaps/rc-alink-dtu-m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    warning: drivers/media/rc/keymaps/rc-apac-viewcomp.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-anysee.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-astrometa-t2=
hybrid.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-asus-pc39.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-asus-ps3-100=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-x10.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-tv-wonde=
r-hd-600.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers=
/media/rc/keymaps/rc-avermedia-a16d.ko
    warning: drivers/media/rc/keymaps/rc-avermedia-a16d.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-ca=
rdbus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/me=
dia/rc/keymaps/rc-avermedia-m733a-rm-k6.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-m1=
35a.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/rc-av=
ertv-303.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-dv=
bt.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-m7=
33a-rm-k6.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avertv-303.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-azurewave-ad=
-tu700.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-beelink-gs1.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold-colum=
bus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-budget-ci-ol=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/media/=
rc/keymaps/rc-cinergy.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cec.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy-1400=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/rc-di=
b0700-rc5.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700-nec.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  drivers/=
media/rc/keymaps/rc-dm1105-nec.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digitalnow-t=
inytwin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700-rc5.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digittrade.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-d680-dmb.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dntv-live-dv=
b-t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dm1105-nec.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media/rc/k=
eymaps/rc-dntv-live-dvbt-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    warning: drivers/media/rc/keymaps/rc-dtt200u.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvbsky.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-portab=
le.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-em-terratec.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-mce.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-enltv=
-fm53.mod.o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: =
drivers/media/rc/keymaps/rc-encore-enltv.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-eztv.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-enltv=
2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-evga-indtube=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flydvb.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-fusionhdtv-m=
ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-geekbox.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gadmei-rm008=
z.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flyvideo.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-genius-tvgo-=
a11mce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gotview7135.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hauppauge.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hisi-poplar.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hisi-tv-demo=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-mce.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-pad.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-rsc.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-v1.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-iodata-bctv7=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-v2.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kaiomy.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-khadas.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-kworld-315u.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kworld-plus-=
tv-analog.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kworld-pc150=
u.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-leadtek-y04g=
0051.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-lme2510.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-manli.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/rc-me=
dion-x10.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-x10-o=
r2x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-x10.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-digivox-=
ii.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-tvanywhe=
re-plus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-digivox-=
iii.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi=
-tvanywhere.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-nec-terratec=
-cinergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-norwood.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-npgtech.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-odroid.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacle-col=
or.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pctv-sedna.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacle-gre=
y.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/rc-pi=
xelview.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview-00=
2t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview-mk=
12.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview-ne=
w.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: c0=
000000
    warning: drivers/media/rc/keymaps/rc-pixelview.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-powercolor-r=
eal-angel.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-proteus-2309=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-purpletv.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pv951.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-rc6-mce.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-real-audio-2=
20-32-keys.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-snapstream-f=
irefly.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-l=
d: c0000000warning: drivers/media/rc/keymaps/rc-reddo.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-streamzap.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-su3000.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tango.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tanix-tx3min=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tanix-tx5max=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tbs-nec.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technisat-us=
b2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technisat-ts=
35.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-cin=
ergy-c-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-cin=
ergy-s2-hd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-cin=
ergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/media/rc/ke=
ymaps/rc-tevii-nec.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-sli=
m-2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tevii-nec.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tivo.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-sli=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-total-media-=
in-hand-02.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-total-media-=
in-hand.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-trekstor.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tt-1500.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-twinhan-dtv-=
cab-ci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-twinhan1027.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  drivers/=
media/rc/keymaps/rc-videomate-m1f.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-vega-s9x.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videomate-m1=
f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videomate-s3=
50.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videomate-tv=
-pvr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videostrong-=
kii-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast-usbi=
i-deluxe.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    warning: drivers/media/rc/keymaps/rc-wetek-play2.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-xbox-dvd.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-wetek-hub.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-x96max.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-zx-irdec.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/meson-ir.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/rc-core.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/sunxi-cir.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/mc44s803.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda18271.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    warning: drivers/media/tuners/mt20xx.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda827x.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/tuners/tda9887.mod.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-simple.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-xc2028.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda8290.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/xc5000.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media/tune=
rs/xc4000.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/usb/gspca/gspca_main.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/usb/uvc/uvcvideo.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-dv-timings.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/v4l2-core/videodev.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mfd/wcd934x.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at24.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mfd/exynos-lpass.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at25.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/flexcan.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_canfd.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_can.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/can-dev.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/atheros/atl1c/atl1c=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/broadcom/bnx2x/bnx2=
x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx4/mlx4_=
core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/ethern=
et/mellanox/mlx4/mlx4_en.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    warning: drivers/net/ethernet/broadcom/genet/genet.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/dsa/ocelot/mscc_felix.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx5/core/=
mlx5_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mscc/mscc_ocelot_co=
mmon.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/qualcomm/emac/qcom-=
emac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-altr-socfpga.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-generic.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/ethern=
et/stmicro/stmmac/dwmac-ipq806x.mod.o: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    warning: drivers/net/ethernet/stmicro/stmmac/dwmac-meson.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-meson8b.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-qcom-ethqos.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/ethern=
et/stmicro/stmmac/dwmac-rk.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    warning: drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/stmm=
ac-platform.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-sunxi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/stmm=
ac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/macvlan.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/mdio.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/net/macvtap.mod.o: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/bcm-phy-lib.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/bcm7xxx.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/marvell.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/marvell10g.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-xpcs.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-bcm-unimac.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-mux-meson-g12a.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/meson-gxl.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/microchip.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/realtek.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/tap.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/ax88179_178a.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_ether.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/asix.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_ncm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/dm9601.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_subset.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/lan78xx.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  drivers/net/usb/r8152.ko
    aarch64-linux-gnu-ld: warning: drivers/net/usb/mcs7830.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/net1080.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/pegasus.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/plusb.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc75xx.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/r8152.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/rtl8150.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/sr9800.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc95xx.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/usbnet.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/zaurus.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/net/wireless/ath/ath10k/a=
th10k_core.ko
    aarch64-linux-gnu-ld: warning: drivers/net/veth.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_p=
ci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_c=
ore.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_s=
noc.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_s=
noc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/broadcom/brcm80211/=
brcmfmac/brcmfmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/broadcom/brcm80211/=
brcmutil/brcmutil.mod.o: unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/n=
et/wireless/marvell/mwifiex/mwifiex_pcie.ko
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifiex/mwi=
fiex.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifiex/mwi=
fiex_pcie.mod.o: unsupported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-ld: ) ty=
pe: 0xc0000000
    warning: drivers/net/wireless/ti/wl18xx/wl18xx.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlcore.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme-core.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlcore_sd=
io.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pci/controller/dwc/pcie-tegra194=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/nvmem/nvmem_meson_efuse.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-brcmstb.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-rockchip-hos=
t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/perf/fsl_imx8_ddr_perf.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/perf/arm_smmuv3_pmu.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/perf/thunderx2_pmu.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/allwinner/phy-sun6i-mipi-dph=
y.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/phy/qualco=
mm/phy-qcom-qusb2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/phy/qualcomm/phy-qcom-qmp.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/renesas/phy-rcar-gen3-usb3.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-inno-h=
dmi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-pcie.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/tegra/phy-tegra194-p2u.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_typec.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/power/supply/sbs-battery.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-bcm2835.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-cros-ec.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-meson.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-sun4i.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-rcar.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/regulator/vctrl-regulator.mod.o:=
 unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/remoteproc/qcom_q6v5.ko
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/remoteproc=
/qcom_q6v5.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/remoteproc/qcom_common.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-tegra.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_mss.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_sysmon.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_pas.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_ipa_notify.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/reset/reset-meson-audio-arb.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/reset/reset-qcom-pdc.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rpmsg/qcom_glink_smem.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-meson-vrtc.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-ds1307.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (  LD [M]  drivers/rtc/rtc-rx8581.ko
    warning: drivers/rtc/rtc-imx-sc.mod.o: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-pcf85363.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rk808.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-pcf2127.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rx8581.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-snvs.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/scsi/raid_class.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/scsi/mpt3sas/mpt3sas.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/scsi/ufs/ufs-qcom.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ctrl.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ngd-ctrl.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/amlogic/meson-canvas.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/soc/qcom/glink_ssr.ko
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/apr.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/glink_ssr.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/mdt_loader.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/pdr_interface.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/qmi_helpers.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/rmtfs_mem.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/socinfo.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soundwire/soundwire-qcom.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soundwire/soundwire-bus.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835aux.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bitbang.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-geni-qcom.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-imx.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spicc.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spifc.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-qcom-qspi.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spidev.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2711_thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-sh-msiof.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2835_thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/brcmstb_thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/qcom-spmi-temp-alar=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/imx_sc_thermal.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/imx8mm_thermal.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qoriq_thermal.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/rockchip_thermal.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/tegra/tegra-bpmp-thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/renesas_usb3.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/tegra-xudc.mod.o:=
 unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/usb/typec/tcpm/fusb302.ko
    aarch64-linux-gnu-ld: warning: drivers/usb/renesas_usbhs/renesas_usbhs.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/typec/tcpm/tcpm.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/typec/tcpm/fusb302.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/typec/hd3ss3220.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/backlight/generic_bl.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/typec/typec.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5aarch64-linux-gnu-ld: warning: drivers/video/backlig=
ht/lp855x_bl.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/backlight/pwm_bl.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/watchdog/imx_sc_wdt.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/watchdog/qcom-wdt.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warning: drivers/w=
atchdog/meson_wdt.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/watchdog/m=
eson_gxbb_wdt.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/watchdog/sunxi_wdt.mod.o: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/fuse/cuse.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    warning: fs/fuse/fuse.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/flexfilelayout/nfs_layout_flexfil=
es.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/blocklayout/blocklayoutdriver.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: fs/btrfs/btrfs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-ld: warning: lib/crc-ccitt.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/overlayfs/overlay.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/crypto/libarc4.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/crypto/libchacha.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/crypto/libdes.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/libcrc32c.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zstd/zstd_decompress.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (  LD [M]  net/802/mrp.ko
    aarch64-linux-gnu-ld: warning: lib/zstd/zstd_compress.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/garp.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/mrp.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/p8022.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/psnap.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000  LD [M]  net/bluetooth/bluetooth.ko
    aarch64-linux-gnu-ld: warning: net/802/stp.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5  LD [M]  net/bluetooth/hidp/hidp.ko
    aarch64-linux-gnu-ld: warning: net/bluetooth/bluetooth.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/8021q/8021q.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/bluetooth/hidp/hidp.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/bridge/bridge.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can-bcm.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can-gw.mod.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can-raw.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/dsa/dsa_core.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/dsa/tag_ocelot.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    warning: net/ipv4/ip_tunnel.mod.o: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ip_tables.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ipt_REJECT.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_filter.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_nat.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_defrag_ipv4.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_mangle.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_log_ipv4.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_reject_ipv4.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/ipv6.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6_tables.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6t_REJECT.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/tunnel4.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_filter.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_mangle.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_nat.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_defrag_ipv6.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: net/ipv6/netfilter=
/nf_reject_ipv6.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: net/ipv6/netfilter/nf_log_ipv6.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/sit.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/llc/llc.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/nf_conntrack.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/nf_log_common.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/nf_nat.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_CHECKSUM.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_LOG.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/x_tables.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_MASQUERADE.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_addrtype.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_conntrack.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_nat.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_tcpudp.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/qrtr/ns.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-smd.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/rfkill/rfkill.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  net/wireless/cfg80211.ko
    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-tun.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warning: net/wireless=
/cfg80211.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec-hdmi.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-tegra.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/bcm/snd-soc-bcm2835-i2s.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-ak4613.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-dmic.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7134.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5  LD [M]  sound/soc/codecs/snd-soc-es7241.ko
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-cros-ec-codec.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-da7219.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98357a.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98927.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7241.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a-i2c.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-hdmi-codec.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rl6231.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514-spi.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5645.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5663.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-spdif-rx.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warning: s=
ound/soc/codecs/snd-soc-tas571x.mod.o: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wsa881x.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wcd934x.mod.o: =
unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: sound/soc/cod=
ecs/snd-soc-spdif-tx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-audio-graph-ca=
rd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-card-ut=
ils.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-fifo.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-card.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-pdm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-frddr.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-sound-=
card.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-spdifi=
n.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-spdifo=
ut.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdmin.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdm-fo=
rmatter.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdm-in=
terface.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdmout=
.mod.o  LD [M]  sound/soc/meson/snd-soc-meson-g12a-tohdmitx.ko
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-toddr.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-card-utils=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-codec-glue=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-g12a-tohdm=
itx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6adm.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe-dai.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6asm-dai.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6asm.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: sound/soc/qcom/qds=
p6/q6dsp-common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: sound/soc/qcom/qdsp6/q6core.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000  LD [M]  sound/soc/qcom/snd-soc-qcom-common.ko
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-qcom-common.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6routing.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-sdm845.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rk3399-gru-so=
und.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-i2s.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-rt56=
45.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-pcm.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/sh/rcar/snd-soc-rcar.mod.oaarc=
h64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-spdif.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/sunxi/sun4i-spdif.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/aes-neon-blk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/aes-neon-bs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/chacha-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/crct10dif-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/sha3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/sha512-arm64.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/sha512-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/crypto/sm3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/arch/ar=
m64/lib/xor-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
af_alg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
algif_rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
authenc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
authencesn.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
blake2b_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
ccm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
cmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
ctr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
des_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
ecc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
ecdh_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
gcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
ghash-generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
md5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
seqiv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
sha3_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
sha512_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
sm3_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
sm4_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
xor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
xts.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/crypto/=
xxhash_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/base/regmap/regmap-sdw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/base/regmap/regmap-slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/block/nbd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/bluetooth/btbcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/bluetooth/btintel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/bluetooth/btqca.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/bluetooth/btrtl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/bluetooth/btusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/bluetooth/hci_uart.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/bcm2835-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/cavium-rng-vf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/cavium-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/cctrng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/exynos-trng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/hisi-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/hisi-trng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/iproc-rng200.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/meson-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/mtk-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/omap-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/optee-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/rng-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/hw_random/xgene-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/ipmi/ipmi_devintf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/ipmi/ipmi_msghandler.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/char/ipmi/ipmi_si.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/clk/bcm/clk-raspberrypi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/clk/meson/axg-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/clk/meson/clk-phase.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/clk/meson/sclk-div.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/clk/qcom/camcc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/cpufreq/cppc_cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/cpufreq/cpufreq_conservative.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/cpufreq/cpufreq_powersave.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/cpufreq/imx-cpufreq-dt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/cpufreq/raspberrypi-cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/cpufreq/sun50i-cpufreq-nvmem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/allwinner/sun8i-ce/sun8i-ce.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/bcm/bcm_crypto_spu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/caam/caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/caam/caam_jr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/caam/caamalg_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/caam/caamhash_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/caam/dpaa2_caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/caam/error.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/ccree/ccree.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/hisilicon/hisi_qm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/hisilicon/zip/hisi_zip.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/qcom-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/crypto/virtio/virtio_crypto.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/dma/bcm-sba-raid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/dma/sh/usb-dmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/dma/sun6i-dma.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/firmware/stratix10-rsu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/fpga/altera-freeze-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/fpga/fpga-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/fpga/fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/fpga/of-fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/fpga/stratix10-soc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpio/gpio-altera.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpio/gpio-bd9571mwv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpio/gpio-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/arm/mali-dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/adv7511/adv7511.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/analogix/analogix_dp.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/sii902x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/synopsys/dw-hdmi-cec.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/synopsys/dw-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/synopsys/dw-mipi-dsi.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/thc63lvd1024.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/bridge/ti-sn65dsi86.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/drm_kms_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/drm_ttm_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/drm_vram_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/etnaviv/etnaviv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/exynos/exynosdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/hisilicon/hibmc/hibmc-drm.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/hisilicon/kirin/dw_drm_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/hisilicon/kirin/kirin-drm.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/i2c/ch7006.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/i2c/sil164.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/i2c/tda998x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/lima/lima.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/lima/lima.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/meson/meson-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/meson/meson_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/panel/panel-lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/panel/panel-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/panel/panel-truly-nt35597.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/panfrost/panfrost.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/pl111/pl111_drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/rcar-du/rcar-du-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/rcar-du/rcar_cmm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/rcar-du/rcar_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/rcar-du/rcar_lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/rockchip/rockchipdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/scheduler/gpu-sched.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun4i-backend.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun4i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun4i-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun4i-frontend.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun4i-tcon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun4i_tv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun6i_drc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun6i_mipi_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun8i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun8i-mixer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/sun4i/sun8i_tcon_top.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/tegra/tegra-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/tegra/tegra-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/ttm/ttm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/vc4/vc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/drm/vc4/vc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/gpu/host1x/host1x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/hid/i2c-hid/i2c-hid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/hwmon/ina2xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/hwmon/ina3221.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/hwmon/lm90.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/hwmon/pwm-fan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/hwmon/raspberrypi-hwmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/i2c/busses/i2c-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/i2c/busses/i2c-gpio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/i2c/busses/i2c-qcom-cci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/i2c/busses/i2c-qcom-geni.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/adc/max9611.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/adc/qcom-spmi-adc5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/adc/qcom-vadc-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/adc/rockchip_saradc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/buffer/industrialio-triggered-buffer.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/buffer/kfifo_buf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/common/cros_ec_sensors/cros_ec_sensors.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/common/cros_ec_sensors/cros_ec_sensors_core.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/light/cros_ec_light_prox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/light/isl29018.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/pressure/cros_ec_baro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/iio/pressure/mpl3115.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/input/keyboard/adc-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/input/keyboard/imx_sc_key.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/input/keyboard/snvs_pwrkey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/input/misc/pm8xxx-vibrator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/input/touchscreen/atmel_mxt_ts.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/mailbox/bcm-flexrm-mailbox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/md/dm-log.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/md/dm-mirror.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/md/dm-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/md/dm-region-hash.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/md/dm-zero.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/md/md-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/cec/core/cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/common/videobuf2/videobuf2-common.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/common/videobuf2/videobuf2-memops.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/common/videobuf2/videobuf2-v4l2.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/common/videobuf2/videobuf2-vmalloc.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/dvb-core/dvb-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/i2c/ir-kbd-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/mc/mc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-adstech-dvb-t-pci.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-alink-dtu-m.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-anysee.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-apac-viewcomp.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-astrometa-t2hybrid.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-asus-pc39.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-asus-ps3-100.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-ati-tv-wonder-hd-600.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-ati-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia-a16d.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia-cardbus.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia-dvbt.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia-m135a.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia-m733a-rm-k6.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avermedia.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-avertv-303.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-azurewave-ad-tu700.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-beelink-gs1.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-behold-columbus.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-behold.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-budget-ci-old.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-cinergy-1400.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-cinergy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-d680-dmb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-delock-61959.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dib0700-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dib0700-rc5.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-digitalnow-tinytwin.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-digittrade.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dm1105-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dntv-live-dvb-t.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dntv-live-dvbt-pro.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dtt200u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dvbsky.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dvico-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-dvico-portable.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-em-terratec.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-encore-enltv-fm53.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-encore-enltv.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-encore-enltv2.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-evga-indtube.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-eztv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-flydvb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-flyvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-fusionhdtv-mce.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-gadmei-rm008z.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-geekbox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-genius-tvgo-a11mce.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-gotview7135.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-hauppauge.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-hisi-poplar.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-hisi-tv-demo.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-imon-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-imon-pad.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-imon-rsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-iodata-bctv7e.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-it913x-v1.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-it913x-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-kaiomy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-khadas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-kworld-315u.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-kworld-pc150u.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-kworld-plus-tv-analog.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-leadtek-y04g0051.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-lme2510.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-manli.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-medion-x10-digitainer.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-medion-x10-or2x.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-medion-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-msi-digivox-ii.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-msi-digivox-iii.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-msi-tvanywhere-plus.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-msi-tvanywhere.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-nebula.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-nec-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-norwood.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-npgtech.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-odroid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pctv-sedna.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pinnacle-color.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pinnacle-grey.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pinnacle-pctv-hd.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pixelview-002t.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pixelview-mk12.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pixelview-new.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pixelview.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-powercolor-real-angel.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-proteus-2309.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-purpletv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-pv951.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-rc6-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-real-audio-220-32-keys.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-reddo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-snapstream-firefly.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-streamzap.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-su3000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tango.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tanix-tx3mini.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tanix-tx5max.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tbs-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-technisat-ts35.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-technisat-usb2.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-terratec-cinergy-c-pci.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-terratec-cinergy-s2-hd.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-terratec-slim-2.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-terratec-slim.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tevii-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tivo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-total-media-in-hand-02.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-total-media-in-hand.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-trekstor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-tt-1500.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-twinhan-dtv-cab-ci.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-twinhan1027.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-vega-s9x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-videomate-m1f.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-videomate-s350.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-videomate-tv-pvr.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-videostrong-kii-pro.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-wetek-hub.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-wetek-play2.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-winfast-usbii-deluxe.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-winfast.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-x96max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-xbox-dvd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/keymaps/rc-zx-irdec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/meson-ir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/rc-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/rc/sunxi-cir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/mc44s803.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/mt20xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tda18271.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tda827x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tda8290.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tda9887.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tuner-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tuner-types.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tuner-types.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/tuner-xc2028.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/xc4000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/tuners/xc5000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/usb/gspca/gspca_main.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/usb/uvc/uvcvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/v4l2-core/v4l2-dv-timings.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/media/v4l2-core/videodev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/mfd/exynos-lpass.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/mfd/wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/misc/eeprom/at24.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/misc/eeprom/at25.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/can/can-dev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/can/flexcan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/can/rcar/rcar_can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/can/rcar/rcar_canfd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/dsa/ocelot/mscc_felix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/atheros/atl1c/atl1c.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/broadcom/bnx2x/bnx2x.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/broadcom/genet/genet.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/mellanox/mlx4/mlx4_core.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/mellanox/mlx4/mlx4_en.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/mellanox/mlx5/core/mlx5_core.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/mscc/mscc_ocelot_common.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/qualcomm/emac/qcom-emac.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-generic.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-ipq806x.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-meson.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-meson8b.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-sun8i.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/dwmac-sunxi.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/stmmac-platform.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/ethernet/stmicro/stmmac/stmmac.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/macvlan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/macvtap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/mdio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/bcm-phy-lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/bcm7xxx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/marvell.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/marvell10g.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/mdio-bcm-unimac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/mdio-mux-meson-g12a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/mdio-xpcs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/meson-gxl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/microchip.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/phy/realtek.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/tap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/asix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/ax88179_178a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/cdc_ether.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/cdc_ncm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/cdc_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/dm9601.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/lan78xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/mcs7830.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/net1080.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/pegasus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/plusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/r8152.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/rtl8150.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/smsc75xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/smsc95xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/sr9800.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/usbnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/usb/zaurus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/veth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ath/ath.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ath/ath10k/ath10k_core.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ath/ath10k/ath10k_pci.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ath/ath10k/ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ath/ath10k/ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/marvell/mwifiex/mwifiex.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/marvell/mwifiex/mwifiex_pcie.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ti/wl18xx/wl18xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/net/wireless/ti/wlcore/wlcore_sdio.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/nvme/host/nvme-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/nvme/host/nvme.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/nvmem/nvmem_meson_efuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pci/controller/dwc/pcie-tegra194.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pci/controller/pcie-brcmstb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pci/controller/pcie-rockchip-host.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/perf/arm_smmuv3_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/perf/fsl_imx8_ddr_perf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/perf/thunderx2_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/allwinner/phy-sun6i-mipi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/qualcomm/phy-qcom-qmp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/qualcomm/phy-qcom-qusb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/renesas/phy-rcar-gen3-usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/rockchip/phy-rockchip-inno-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/rockchip/phy-rockchip-pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/phy/tegra/phy-tegra194-p2u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/platform/chrome/cros_ec_typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/power/supply/sbs-battery.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pwm/pwm-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pwm/pwm-cros-ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pwm/pwm-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pwm/pwm-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pwm/pwm-sun4i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/pwm/pwm-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/regulator/vctrl-regulator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/remoteproc/qcom_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/remoteproc/qcom_q6v5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/remoteproc/qcom_q6v5_ipa_notify.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/remoteproc/qcom_q6v5_mss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/remoteproc/qcom_q6v5_pas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/remoteproc/qcom_sysmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/reset/reset-meson-audio-arb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/reset/reset-qcom-pdc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rpmsg/qcom_glink_smem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-ds1307.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-imx-sc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-meson-vrtc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-pcf2127.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-pcf85363.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-rk808.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-rx8581.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/rtc/rtc-snvs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/scsi/mpt3sas/mpt3sas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/scsi/raid_class.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/scsi/ufs/ufs-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/slimbus/slim-qcom-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/slimbus/slim-qcom-ngd-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/slimbus/slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/amlogic/meson-canvas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/apr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/glink_ssr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/mdt_loader.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/pdr_interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/qmi_helpers.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/rmtfs_mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soc/qcom/socinfo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soundwire/soundwire-bus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/soundwire/soundwire-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-bcm2835aux.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-bitbang.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-geni-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-meson-spicc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-meson-spifc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-qcom-qspi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spi-sh-msiof.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/spi/spidev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/broadcom/bcm2711_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/broadcom/bcm2835_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/broadcom/brcmstb_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/imx8mm_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/imx_sc_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/qcom/qcom-spmi-temp-alarm.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/qoriq_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/rockchip_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/thermal/tegra/tegra-bpmp-thermal.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/gadget/udc/renesas_usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/gadget/udc/tegra-xudc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/renesas_usbhs/renesas_usbhs.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/typec/hd3ss3220.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/typec/tcpm/fusb302.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/typec/tcpm/tcpm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/usb/typec/typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/video/backlight/generic_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/video/backlight/lp855x_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/video/backlight/pwm_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/watchdog/imx_sc_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/watchdog/meson_gxbb_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/watchdog/meson_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/watchdog/qcom-wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/drivers=
/watchdog/sunxi_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs/btrf=
s/btrfs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs/fuse=
/cuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs/fuse=
/fuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs/nfs/=
blocklayout/blocklayoutdriver.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs/nfs/=
flexfilelayout/nfs_layout_flexfiles.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/fs/over=
layfs/overlay.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/crc=
-ccitt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/cry=
pto/libarc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/cry=
pto/libchacha.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/cry=
pto/libdes.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/lib=
crc32c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/rai=
d6/raid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/rai=
d6/raid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/rai=
d6/raid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/rai=
d6/raid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/zst=
d/zstd_compress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/lib/zst=
d/zstd_decompress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/802=
/garp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/802=
/mrp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/802=
/p8022.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/802=
/psnap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/802=
/stp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/802=
1q/8021q.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/blu=
etooth/bluetooth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/blu=
etooth/hidp/hidp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/bri=
dge/bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/can=
/can-bcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/can=
/can-gw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/can=
/can-raw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/can=
/can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/dsa=
/dsa_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/dsa=
/tag_ocelot.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/ip_tunnel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/ip_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/ipt_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/iptable_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/iptable_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/iptable_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/nf_defrag_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/nf_log_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/netfilter/nf_reject_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
4/tunnel4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/ip6_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/ip6t_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/ip6table_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/ip6table_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/ip6table_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/nf_defrag_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/nf_log_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/netfilter/nf_reject_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/ipv=
6/sit.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/llc=
/llc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/mac=
80211/mac80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/mac=
80211/mac80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/nf_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/nf_log_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/nf_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/x_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_CHECKSUM.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_LOG.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_MASQUERADE.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_addrtype.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/net=
filter/xt_tcpudp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/qrt=
r/ns.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/qrt=
r/qrtr-smd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/qrt=
r/qrtr-tun.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/qrt=
r/qrtr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/rfk=
ill/rfkill.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/wir=
eless/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/wir=
eless/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/net/wir=
eless/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/h=
da/snd-hda-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/h=
da/snd-hda-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/p=
ci/hda/snd-hda-codec-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/p=
ci/hda/snd-hda-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/p=
ci/hda/snd-hda-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/bcm/snd-soc-bcm2835-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-ak4613.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-cros-ec-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-da7219.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-dmic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-es7134.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-es7241.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-hdmi-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-max98357a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-max98927.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-pcm3168a-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-pcm3168a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-rl6231.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-rt5514-spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-rt5514.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-rt5663.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-spdif-rx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-spdif-tx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-tas571x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/codecs/snd-soc-wsa881x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/generic/snd-soc-audio-graph-card.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/generic/snd-soc-simple-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/generic/snd-soc-simple-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-fifo.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-frddr.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-pdm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-spdifin.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-spdifout.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-tdm-formatter.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-tdm-interface.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-tdmin.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-tdmout.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-axg-toddr.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-codec-glue.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/meson/snd-soc-meson-g12a-tohdmitx.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6adm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6afe-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6afe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6asm-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6asm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/qdsp6/q6routing.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/snd-soc-qcom-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/qcom/snd-soc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/rockchip/snd-soc-rk3399-gru-sound.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/rockchip/snd-soc-rockchip-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/rockchip/snd-soc-rockchip-pcm.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/rockchip/snd-soc-rockchip-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/rockchip/snd-soc-rockchip-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/sh/rcar/snd-soc-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-rc2-next-20200423/kernel/sound/s=
oc/sunxi/sun4i-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 15 warnings, 0 section=
 mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 section m=
ismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 15 warnings, 0 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 15 warnings, 0 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0=
 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:987.10-993.7: Warning (coo=
ling_device_property): /thermal-zones/cpu-thermal/cooling-maps/map0: Missin=
g property '#cooling-cells' in node /cpus/cpu@0 or bad phandle (referred fr=
om cooling-device[0])
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning (dma=
_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but =
its #address-cells (2) differs from /soc (1)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

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
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/media/tuners/mxl5005s.c:3953:1: warning: the frame size of 1120=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

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
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

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
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
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
multi_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 18 warnings, 0 =
section mismatches

Warnings:
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 18 warnings, 0=
 section mismatches

Warnings:
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
 errors, 19 warnings, 0 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 19 warnings, 0 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19=
 warnings, 0 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 20 warn=
ings, 0 section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]
    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes is =
larger than 1024 bytes [-Wframe-larger-than=3D]
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
    arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_format)=
: /soc/firmware:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (2) differs from /soc (1)
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
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 section =
mismatches

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

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
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

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
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1167:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

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
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 =
section mismatches

Errors:
    /tmp/cpudeadline-2dc49d.s:76: Error: `%ecx' not allowed with `orb'
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warn=
ings, 0 section mismatches

Warnings:
    samples/ftrace/ftrace-direct.o: warning: objtool: .text+0x0: unreachabl=
e instruction
    samples/ftrace/ftrace-direct-too.o: warning: objtool: .text+0x0: unreac=
hable instruction
    samples/ftrace/ftrace-direct-modify.o: warning: objtool: .text+0x0: unr=
eachable instruction

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/futex.c:1679:17: warning: =E2=80=98oldval=E2=80=99 may be used u=
ninitialized in this function [-Wmaybe-uninitialized]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5ea190c2.1c69fb81.1ac57.9119%40mx.google.com.
