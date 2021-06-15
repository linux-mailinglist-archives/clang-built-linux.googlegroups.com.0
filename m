Return-Path: <clang-built-linux+bncBDT6TV45WMPRB7EVUKDAMGQEVWAQYII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5D53A7CEA
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 13:11:57 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id c25-20020a4ad7990000b029020e67cc1879sf8845980oou.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 04:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623755516; cv=pass;
        d=google.com; s=arc-20160816;
        b=xl9tdcAPKT3W4Cw7MwkEAoLAVX/Cj7L2GSVIf/+SCmNGUkQM9IaeSrDlA65Hr58bMQ
         Eq+iaQKtYf/iY1FKp93ENX5i1yPuf+9qOIpAHGRIaZyUC66QFZNvOboIcWRyISZEbK5Z
         XUfi6p7IQ4nj35wsaQBRVg1dKgJpTa2MYO0OMGJNMhOarySlrom1HiY8RFQ8SZfo1jgM
         nrN/jk+qIP2ZK/yhmJjIrtzRwyJKJypr59PtguDYofH3BIJ2z1r8STey66M/NWAW2cX8
         kr50Uf7fS2wKHKoWgRpSDxQa1LXXqCT6rBquMuC8CcKrCCRTWA+SjS1SczUZruBNmKaX
         qHHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=p484eWdZj8J+I738zuqNteT2mmPEFcltwOyQvhd0ATE=;
        b=tDe3Y8C1CKrbtteLwmNmrfAkXKzge/leBARH0DiPlh9szwK8OyU/bFoQTJiQfrKgM+
         7HaJYLlGStgkaiMXP+fRgrFGaCnCHesxOI5xbFj+nmeUO+luW6tjI8SEul77ekmmxLaj
         hxE//oNHQZn2TLWxq4eZkSByQGpfsHGdW+q0NAehGLUkLPQPuKb/3KnVzuRSGvSk4osf
         10a9UzXmZJzIyWzxN9t9OSjieBR6SctW2SXBgTQbLFNjwUaf7MfjxrvvcDh4c0utDf3i
         Smg3W1lrqitkUZcDr9+j7jCDRYnZVqbS2e9Q/fdgExDaCp5jklQJqzLy1MSqcQKD3Lku
         sB9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=02TQV5tK;
       spf=neutral (google.com: 2607:f8b0:4864:20::102c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p484eWdZj8J+I738zuqNteT2mmPEFcltwOyQvhd0ATE=;
        b=IgW0tFKjNecK7gjUMzYtYqeS6gruNxuP0TXBIOTYcrbarbERExLw4SfATMwVcL+IrW
         lYtrXaWOWfafg1RWMg/YsQhZcc2jcdO6+9zKYPDrf1SGSvkwAM6nMwjZ+yk4bCl+/FQK
         cDJXr7AAKbrSb82Y84BkXOOBZTXo/s1apgX7rJv1OHnktqcs+ge0tAYMODwCun/qi6YE
         0coBlcG/YbCe4YdSv3K5p+wFtvAL20ilJ0Snq6m7+86yqHJDkfsv8FGAhffaxJCbC+VM
         P8OuaR/ThRYXC+X9ajg4/W/WhxUAVfAfRzpjIwvZTg5MeJMrXgfCYVJ+SUbibXyu4fVz
         U8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p484eWdZj8J+I738zuqNteT2mmPEFcltwOyQvhd0ATE=;
        b=ejCHbm2by/LvhakloYsEZ1EhaGp/bBBWHdnUWQoufbr1wkEFMSdSQgkw9PaAlRT5GA
         Q4Z50HY2dX47uEgBWDvK05xH14CPBsuTBsGbjnQdJnoJEKg2wJCR7DFmqiVVai0UOipv
         ixc41vHjSUHmYMLnF9QEDSoZ37QCOUymc7l+8jYj2y32WSRIMiw1RQfThY/gf/R76x/t
         KbeanrXxw/inh26Sxe92CIYfsQtdAF0D+zo0wrB6AXTJESVO6ih5PpnVzox/D7os21XX
         CKrw42OvfZ+9eH3m0Gcql8ccxbF6T+uslViqFt8VcWB5Lp6LZjqDfFZrBEV7vwFHzqbY
         cQmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319QUTtEBjMokcy1U+ggmhcii1KxqweBVusZsaOIHjEFzNlwrYA
	XwJO65wXvmMzBrprHtBiyNk=
X-Google-Smtp-Source: ABdhPJxgeZXeyftPaF9xzL2JUDLJ+Yy3Y5M+0B0UIJPeYKqXvlroO7AY055EMYsVpkhMPvTRLpyDqQ==
X-Received: by 2002:aca:c492:: with SMTP id u140mr2886532oif.20.1623755516399;
        Tue, 15 Jun 2021 04:11:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e45:: with SMTP id e5ls7237721otj.6.gmail; Tue, 15
 Jun 2021 04:11:56 -0700 (PDT)
X-Received: by 2002:a9d:426:: with SMTP id 35mr16863196otc.162.1623755515832;
        Tue, 15 Jun 2021 04:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623755515; cv=none;
        d=google.com; s=arc-20160816;
        b=b2dy0wT3Yoj9HwFicoBwZilpq1MAryFE2JyiqdrzckGBA2LT/ADWniab6EkU83JHj9
         DlRsfgAX5b5GCsI14ZDavzKButRpzscgH0jMxkn4gEJw+LzEEYqtoHdNUhKS7ZdOHmqo
         wTZnL7gQM8wqfxDiXHbB8XA658rPobxZSYKjbvPQ9Wr4NOfxs8Y5T80VegrnJ96LKiUu
         6JwjOj5sF4odq/qzUs34oXUFSqAZW2NJvSVoIOsj01ykrVgFgIuYOUhj1BwNjgi0mY/t
         zuoe8M4p1M3SJLsHGgd80GAulAPKYAgjNYQWJPGSvGiNRl56OOyHBZaT12aJkZIBwiDw
         bfrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=Y53v54suRM7ZgGeCxJcV/LkZb58KeknbPxjnD3hL7/A=;
        b=e5PCOhKNPZJaNowiSESZV6VLOpgDE0o1YigPxMdRPKcCQwPQZj6RjRWlp005SnIpNY
         YitVMSb+ILxPNOfQgIHX0N2Qvda9BQ22VCAzN9heEZa6aTE7XIPuuezX3zv6P0GY4y54
         UF/2nkYfai686WrwasZvMYhdrgLzNtLlnxxnrd/QcEg/3+oFRizOqMxS+5aLKrvZJrKS
         4LbDm/TaGgmM3U6WDdPEnr8QQk4o2WKpb4t8aMmccSSiTExUtL6aYxYVOqnxerUC5Zer
         x9sxNZBImrv8f6SX/Fl5jHxN3GjgnmBHShMEdz6R1qQUiMz35av2ds0lQ6cEVg0UA5aU
         5Yuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=02TQV5tK;
       spf=neutral (google.com: 2607:f8b0:4864:20::102c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id m16si283571oih.4.2021.06.15.04.11.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 04:11:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::102c is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id o10-20020a17090aac0ab029016e92770073so1992021pjq.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 04:11:55 -0700 (PDT)
X-Received: by 2002:a17:903:2307:b029:11d:60c0:9e with SMTP id d7-20020a1709032307b029011d60c0009emr3106117plh.66.1623755512848;
        Tue, 15 Jun 2021 04:11:52 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id h4sm2682488pjv.55.2021.06.15.04.11.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 04:11:52 -0700 (PDT)
Message-ID: <60c88af8.1c69fb81.cb7e.7d94@mx.google.com>
Date: Tue, 15 Jun 2021 04:11:52 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20210615
X-Kernelci-Branch: master
X-Kernelci-Tree: next
Subject: next/master build: 213 builds: 5 failed, 208 passed, 32 errors,
 250 warnings (next-20210615)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=02TQV5tK;       spf=neutral (google.com: 2607:f8b0:4864:20::102c is
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

next/master build: 213 builds: 5 failed, 208 passed, 32 errors, 250 warning=
s (next-20210615)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210615/

Tree: next
Branch: master
Git Describe: next-20210615
Git Commit: 19ae1f2bd9c091059f80646604ccef8a1e614f57
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arc:
    allnoconfig: (gcc-8) FAIL
    nsimosci_hs_smp_defconfig: (gcc-8) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

riscv:
    rv32_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 8 errors, 1 warning
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 2 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig+kselftest (gcc-8): 3 warnings
    hsdk_defconfig (gcc-8): 1 warning
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 8 errors, 2 warnings
    vdk_hs38_defconfig (gcc-8): 2 warnings
    vdk_hs38_smp_defconfig (gcc-8): 2 warnings

arm64:
    allmodconfig (clang-12): 2 warnings
    defconfig (clang-10): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 warning

arm:
    allmodconfig (gcc-8): 1 warning
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (clang-10): 2 warnings
    aspeed_g5_defconfig (clang-12): 2 warnings
    assabet_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 4 warnings
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 2 warnings
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 1 warning
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
    keystone_defconfig (gcc-8): 3 warnings
    lart_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 2 warnings
    lpc32xx_defconfig (gcc-8): 1 warning
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 2 warnings
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 2 warnings
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (clang-12): 2 warnings
    multi_v5_defconfig (clang-10): 2 warnings
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (clang-12): 4 warnings
    multi_v7_defconfig (clang-10): 4 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 warning
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 3 warnin=
gs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 1 warning
    multi_v7_defconfig+kselftest (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 2 warnings
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 1 warning
    shmobile_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 2 warnings
    sunxi_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 2 warnings
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 2 warnings
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 2 warnings
    zeus_defconfig (gcc-8): 1 warning

i386:
    allmodconfig (clang-12): 4 warnings
    allnoconfig (clang-10): 2 warnings
    allnoconfig (gcc-8): 1 warning
    allnoconfig (clang-12): 2 warnings
    i386_defconfig (clang-10): 2 warnings
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (clang-12): 2 warnings
    i386_defconfig+kselftest (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 1 warning
    32r2el_defconfig+kselftest (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 1 warning
    ath25_defconfig (gcc-8): 1 warning
    ath79_defconfig (gcc-8): 1 warning
    bcm47xx_defconfig (gcc-8): 1 warning
    bcm63xx_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 2 warnings
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 2 warnings
    cu1000-neo_defconfig (gcc-8): 1 warning
    cu1830-neo_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    decstation_defconfig (gcc-8): 1 warning
    decstation_r4k_defconfig (gcc-8): 1 warning
    e55_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 1 warning
    ip22_defconfig (gcc-8): 1 warning
    jazz_defconfig (gcc-8): 1 warning
    jmr3927_defconfig (gcc-8): 1 warning
    loongson1b_defconfig (gcc-8): 1 warning
    loongson1c_defconfig (gcc-8): 1 warning
    malta_defconfig (gcc-8): 1 warning
    malta_kvm_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    mpc30x_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 1 warning
    pistachio_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rb532_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 9 warnings
    rt305x_defconfig (gcc-8): 1 warning
    sb1250_swarm_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0226_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 2 warnings

riscv:
    nommu_k210_defconfig (gcc-8): 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 16 errors, 11 warnings

x86_64:
    x86_64_defconfig (clang-10): 2 warnings

Errors summary:

    8    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types =
when returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =
=E2=80=98struct <anonymous>=E2=80=99} was expected
    8    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaratio=
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

Warnings summary:

    162  include/linux/minmax.h:20:28: warning: comparison of distinct poin=
ter types lacks a cast
    20   net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=
=E2=80=99 defined but not used [-Wunused-function]
    15   1 warning generated.
    11   fs/io_uring.c:7095:28: warning: comparison of distinct pointer typ=
es ('typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *'=
 (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    8    cc1: some warnings being treated as errors
    6    include/linux/rmap.h:293:34: warning: statement with no effect [-W=
unused-value]
    3    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=
=80=99 expects argument of type =E2=80=98unsigned int=E2=80=99, but argumen=
t 3 has type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned=
 int=E2=80=99} [-Wformat=3D]
    3    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=
=80=99 expects argument of type =E2=80=98unsigned int=E2=80=99, but argumen=
t 2 has type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned=
 int=E2=80=99} [-Wformat=3D]
    2    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:976:48: warning: implici=
t conversion from 'unsigned long long' to 'unsigned long' changes value fro=
m 5000000000 to 705032704 [-Wconstant-conversion]
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1332 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    fs/cifs/dfs_cache.c:1433:1: warning: the frame size of 1120 bytes =
is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBYFS_CallBack=
_name=E2=80=99 defined but not used [-Wunused-variable]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBTellMeAboutY=
ourself_name=E2=80=99 defined but not used [-Wunused-variable]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBProbe_name=
=E2=80=99 defined but not used [-Wunused-variable]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBProbeUuid_na=
me=E2=80=99 defined but not used [-Wunused-variable]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBInitCallBack=
State_name=E2=80=99 defined but not used [-Wunused-variable]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBInitCallBack=
State3_name=E2=80=99 defined but not used [-Wunused-variable]
    1    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBCallBack_nam=
e=E2=80=99 defined but not used [-Wunused-variable]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
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
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc6-next-20210615/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/l=
ib/modules/5.13.0-rc6-next-20210615/kernel/drivers/media/tuners/tuner-types=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x  STRIP   /tmp/kci/linux/bui=
ld/_modules_/lib/modules/5.13.0-rc6-next-20210615/kernel/drivers/media/tune=
rs/xc5000.ko
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
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1332 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3312 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 8 errors, 1 warning, 0 section mis=
matches

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

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=80=99 =
expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 2 has=
 type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned int=E2=
=80=99} [-Wformat=3D]
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=80=99 =
expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 3 has=
 type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned int=E2=
=80=99} [-Wformat=3D]
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc6-next-20210615/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0x  STRIP   /tmp/kci/linux/build/_m=
odules_/lib/modules/5.13.0-rc6-next-20210615/kernel/drivers/media/tuners/xc=
5000.ko

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/build/_modules_/lib/mo=
dules/5.13.0-rc6-next-20210615/kernel/drivers/media/tuners/tuner-types.ko: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-12) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

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
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 wa=
rnings, 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    arch/arc/include/asm/perf_event.h:126:23: warning: =E2=80=98arc_pmu_cac=
he_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]
    arch/arc/include/asm/perf_event.h:91:27: warning: =E2=80=98arc_pmu_ev_h=
w_map=E2=80=99 defined but not used [-Wunused-const-variable=3D]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=80=99 =
expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 2 has=
 type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned int=E2=
=80=99} [-Wformat=3D]
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=80=99 =
expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 3 has=
 type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned int=E2=
=80=99} [-Wformat=3D]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

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
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/rmap.h:293:34: warning: statement with no effect [-Wunuse=
d-value]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    include/linux/rmap.h:293:34: warning: statement with no effect [-Wunuse=
d-value]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:976:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    fs/io_uring.c:7095:28: warning: comparison of distinct pointer types ('=
typeof (size) *' (aka 'unsigned int *') and 'typeof (((1UL) << 12)) *' (aka=
 'unsigned long *')) [-Wcompare-distinct-pointer-types]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:976:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 3 warnings, 0 section mismatches

Warnings:
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=80=99 =
expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 2 has=
 type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned int=E2=
=80=99} [-Wformat=3D]
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%x=E2=80=99 =
expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 3 has=
 type =E2=80=98phys_addr_t=E2=80=99 {aka =E2=80=98long long unsigned int=E2=
=80=99} [-Wformat=3D]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/cifs/dfs_cache.c:1433:1: warning: the frame size of 1120 bytes is la=
rger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    include/linux/rmap.h:293:34: warning: statement with no effect [-Wunuse=
d-value]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    include/linux/rmap.h:293:34: warning: statement with no effect [-Wunuse=
d-value]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 8 errors, 2 warnings=
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

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBYFS_CallBack_name=
=E2=80=99 defined but not used [-Wunused-variable]
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBTellMeAboutYourse=
lf_name=E2=80=99 defined but not used [-Wunused-variable]
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBProbeUuid_name=E2=
=80=99 defined but not used [-Wunused-variable]
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBProbe_name=E2=80=
=99 defined but not used [-Wunused-variable]
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBInitCallBackState=
3_name=E2=80=99 defined but not used [-Wunused-variable]
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBInitCallBackState=
_name=E2=80=99 defined but not used [-Wunused-variable]
    fs/afs/cmservice.c:34:21: warning: =E2=80=98_afs_SRXCBCallBack_name=E2=
=80=99 defined but not used [-Wunused-variable]
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 FAIL, 16 errors, 11 warnings, 0 sec=
tion mismatches

Errors:
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
returning type =E2=80=98int=E2=80=99 but =E2=80=98pmd_t=E2=80=99 {aka =E2=
=80=98struct <anonymous>=E2=80=99} was expected
    arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of =
function =E2=80=98pfn_pmd=E2=80=99; did you mean =E2=80=98pfn_pgd=E2=80=99?=
 [-Werror=3Dimplicit-function-declaration]
    arch/riscv/include/asm/pgtable.h:521:9: error: incompatible types when =
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
    cc1: some warnings being treated as errors
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/rmap.h:293:34: warning: statement with no effect [-Wunuse=
d-value]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

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
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/rmap.h:293:34: warning: statement with no effect [-Wunuse=
d-value]
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast
    net/xfrm/xfrm_output.c:140:12: warning: =E2=80=98xfrm6_hdr_offset=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/minmax.h:20:28: warning: comparison of distinct pointer t=
ypes lacks a cast

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/60c88af8.1c69fb81.cb7e.7d94%40mx.google.com.
