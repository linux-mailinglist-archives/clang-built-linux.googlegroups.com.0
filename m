Return-Path: <clang-built-linux+bncBDT6TV45WMPRBX7NVLVAKGQE2HY7X2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7FD84AB7
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 13:32:49 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id 17sf18136828ljc.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 04:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565177568; cv=pass;
        d=google.com; s=arc-20160816;
        b=feXNnYUesG5g9kwy3UA16dC1bE1lahq1OY2DKSQM+jy3iMs/c3LmFqfxjRVp8QL6gZ
         ZdUZ8iLrA7+kPIQMQYIoDI0oNQdIjD3eGJpSvbiH5qmmYbP+7Fyo3HtwaLBFPg0zlR1b
         sCrsbb5hL7iVSLKCQFV/MHG+Zy1jeVEoI15Z0iVHpYQ/85YIs+Fzpe51sZ5cYm/9741g
         48NCQs4wr4VkKfMCI2J6bBIueA+w832viUB3Loo9qJnR/DQC4SkU3asSoVvGDlo+3ECf
         ClHeAaVzDRsqpeAxQ7WIqvnJpME5zumU9DEqDUOhFR4yGAIyKKNCc3h5sCMwDeOLuJqH
         CzMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=r9uQHBCtiCDSuM+rCQrERGtuiDN/ntCLDPIh1UR1Eno=;
        b=0JVrEgHtGoKiReIHbqCyukGIVf0dWAWbNs5yPmxOler0Wqv0nC+trJmJdWUx77OSsA
         600RtlS3DMrE2MzfzrIHTdUceg6goBRKRNycUj5ewTbv8ZUZ1taBsWAAmoh4XbCElRzT
         Ff0OatL6wR2WPEFFL86rb2uqWTWx9Xke4sbDqAFXCJOcqV4RbTt2XdCWwf6uulXxIxGr
         wKY3qJRLVnYM+Vzcb6UbpWybtnEZP0LQnIlWwlfT6ByfOAmqQjcT5hyvRVQ95YAP0dau
         9SfMUREI8l7XSCmeg4+Xx3rchN3Rc6OZXyTBjtgcCXdOLaxYLcEiVqR5fYbgBNxbBHp+
         09bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=G4u310ks;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9uQHBCtiCDSuM+rCQrERGtuiDN/ntCLDPIh1UR1Eno=;
        b=QlKifiyr0C4gZLq0iBODBTwVF0MEim90PKL669v7LRaM4xZ92lAqYy/OvU6RNu3TFt
         5BKN2JCuswpnigjfcDaWYO5XrXCgGpuG4Brnbj6kDLOJriDPAHfDIEe8gW49bfMs/tat
         qMYok9X3yEZGegkE+dXjQ79az8Ci6dUESno6Clpk9O4OitYT8luT83YqCJvU9Cn5GEvC
         7syuOs9FQypXDSUAksDQMPidsTEyRl5Ttvqq3J1i4b6w9K+Y98XazLPuxIgT6DsZCBBL
         G+6n/XR9yrj1vmIpVQxXYaMGPCvCe558TG9yZ/nTxmuElTnatbZZySwtUQnS9VJtbGim
         vX0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9uQHBCtiCDSuM+rCQrERGtuiDN/ntCLDPIh1UR1Eno=;
        b=Ta25U9559q0va6pya08+6h7/LuEb032Cd6zbASwZHa/gblnFPftGVXDvHSzAWv9zn0
         ki0lmNeosD4/sC4AX0Lkx3i+GpcVdKUEQ0NsS9vagp4ChvwcCpCLhzSro7W9yYzlZ+js
         grDjRwr4BLhqpQkVqFfxBpGGwE3YbBtUgm7IYm98mqEfmKEQ20VRaU9NRL7ZEspxGyUX
         ZQEwJdXAxnrTWROORFBdIonYnKLAqia6D3iOROu/ywUMMT+uCyZzrUzgGAEB1/Er3GYF
         b5iLfyvanMrPtIe/dWpgx//3LIHCiWJurq/ycE0qVmSKtWfKhdTNT+KPOm8Rj0e9kdvq
         p6EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMV/kj3muiNnNONzPidrBS4r9U/uIqU8EccOzcvBtoAipDzv48
	9bTiiZ5WR0wBpocsq0EXv0A=
X-Google-Smtp-Source: APXvYqzm7TnW6kTJu4X8x4XkMCAGOh9ErtGyYjHOvrkxCT67twpEO8dBGOL28lu+ECAT58Vzm4fPbA==
X-Received: by 2002:a2e:9858:: with SMTP id e24mr4461646ljj.91.1565177568329;
        Wed, 07 Aug 2019 04:32:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:553:: with SMTP id 80ls10216420ljf.4.gmail; Wed, 07 Aug
 2019 04:32:47 -0700 (PDT)
X-Received: by 2002:a2e:9192:: with SMTP id f18mr4566065ljg.52.1565177567337;
        Wed, 07 Aug 2019 04:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565177567; cv=none;
        d=google.com; s=arc-20160816;
        b=HPh8KskM6WvWRd97gn8PC6fJZjCndPAy3KUi8UwyUwOaZXFnLR6+5phfQqBHqwKKi/
         aTdDJUdnlMFSB/axOWxRJrkp8+3OrerFcqKjr+bbYxS2ihLt3NvZ18DDdPLlK20yN5SG
         Uf/DtR3v55MvSAJh8LE82XNhHz5wB1mpNaW8lNq131m0dTwbTIwNMlI7khZsd3UY5vbA
         508M32sYolltQoSTE9QCKZZSouETXoLYeeTrCC1J7mYYASx1VsfDm5LIrHJnf8Dq1dSU
         lfh5Iyc5zR7fp6vakWE9at2Vk7cmC/cjPCQrQgHqnL3sSJld4zGS1t8vIPC15qrPDCM6
         sMCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=A35+idTwYAbg50Gd1eufi/9pzgPCgArLaEUf2eYEUqA=;
        b=oZYxoKQCEtt31kr+KJ5/WK/CqRah50QM/geOLabC799NF2b4ZnGausqniCDoUHPsDk
         WkT1OsTicV6xaFCOEzOVRhSRmWMzhy0hVRsnM+ljkRyZOTZIT3VRK2N6dISMDVEJcIF+
         Z8j6jdXCXuMxrC/mZICW9mp2eVFbB16icQW7zYmZrDx33oODOu8qJWBJGSJDKkB70HY5
         SulEgw7wzyqGM62igk/XsIvySs34PcasiC5CiDcra6hNesWS/rQdBoEJylarwPAk13MS
         rOGwfL5Yx49g4JnW46pXFK8Spd3k8/cpb1FvVMzroByyVXH+CnRwcogiGNq1HtM+waMD
         EQmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=G4u310ks;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id t23si645953lfk.2.2019.08.07.04.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 04:32:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id s3so81443975wms.2
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 04:32:46 -0700 (PDT)
X-Received: by 2002:a1c:3c04:: with SMTP id j4mr9719339wma.37.1565177564637;
        Wed, 07 Aug 2019 04:32:44 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id f2sm82972265wrq.48.2019.08.07.04.32.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 04:32:43 -0700 (PDT)
Message-ID: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
Date: Wed, 07 Aug 2019 04:32:43 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20190807
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
Subject: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=G4u310ks;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 230 builds: 12 failed, 218 passed, 15 errors, 1179 warni=
ngs (next-20190807)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190807/

Tree: next
Branch: master
Git Describe: next-20190807
Git Commit: 3880be629e26f6c407593602398c6651860d5fae
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-8) FAIL
    defconfig: (clang-8) FAIL
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy: (clang-8) FAIL
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy: (clang-8) FAIL
    defconfig+kselftest: (clang-8) FAIL
    allmodconfig: (gcc-8) FAIL
    defconfig: (gcc-8) FAIL
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy: (gcc-8) FAIL
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy: (gcc-8) FAIL
    defconfig+kselftest: (gcc-8) FAIL

arm:
    allmodconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 2 warnings
    axs103_defconfig (gcc-8): 4 warnings
    axs103_smp_defconfig (gcc-8): 4 warnings
    haps_hs_defconfig (gcc-8): 4 warnings
    haps_hs_smp_defconfig (gcc-8): 4 warnings
    hsdk_defconfig (gcc-8): 4 warnings
    nsim_hs_defconfig (gcc-8): 4 warnings
    nsim_hs_defconfig (gcc-8): 12 warnings
    nsim_hs_smp_defconfig (gcc-8): 4 warnings
    nsimosci_hs_defconfig (gcc-8): 4 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 4 warnings
    tinyconfig (gcc-8): 2 warnings
    vdk_hs38_defconfig (gcc-8): 3 warnings
    vdk_hs38_smp_defconfig (gcc-8): 3 warnings

arm64:
    allmodconfig (clang-8): 1 error, 34 warnings
    allmodconfig (gcc-8): 1 error, 136 warnings
    allnoconfig (gcc-8): 1 warning
    defconfig (clang-8): 1 error
    defconfig (gcc-8): 1 error, 135 warnings
    defconfig (gcc-8): 1 error, 135 warnings
    defconfig (clang-8): 1 error
    defconfig (gcc-8): 1 error, 135 warnings
    defconfig (clang-8): 1 error
    defconfig (clang-8): 1 error
    defconfig (gcc-8): 1 error, 135 warnings
    tinyconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 error, 2 warnings
    allnoconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 2 warnings
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 9 warnings
    badge4_defconfig (gcc-8): 2 warnings
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 2 warnings
    clps711x_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 2 warnings
    davinci_all_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 2 warnings
    hisi_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 2 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 3 warnings
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 13 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 2 warnings
    nhk8815_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 2 warnings
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 2 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 2 warnings
    shannon_defconfig (gcc-8): 2 warnings
    shmobile_defconfig (gcc-8): 3 warnings
    simpad_defconfig (gcc-8): 2 warnings
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 3 warnings
    tango4_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 3 warnings
    tegra_defconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:
    allnoconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 2 warnings
    i386_defconfig (gcc-8): 10 warnings
    tinyconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 4 warnings
    32r2el_defconfig (gcc-8): 12 warnings
    allnoconfig (gcc-8): 2 warnings
    ar7_defconfig (gcc-8): 2 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 3 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 1 warning
    bigsur_defconfig (gcc-8): 6 warnings
    bmips_be_defconfig (gcc-8): 2 warnings
    bmips_stb_defconfig (gcc-8): 2 warnings
    capcella_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 4 errors, 7 warnings
    ci20_defconfig (gcc-8): 3 warnings
    cobalt_defconfig (gcc-8): 2 warnings
    db1xxx_defconfig (gcc-8): 2 warnings
    decstation_64_defconfig (gcc-8): 6 warnings
    decstation_defconfig (gcc-8): 2 warnings
    decstation_r4k_defconfig (gcc-8): 2 warnings
    e55_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 6 warnings
    gcw0_defconfig (gcc-8): 2 warnings
    gpr_defconfig (gcc-8): 3 warnings
    ip22_defconfig (gcc-8): 2 warnings
    ip27_defconfig (gcc-8): 7 warnings
    ip28_defconfig (gcc-8): 6 warnings
    ip32_defconfig (gcc-8): 7 warnings
    jazz_defconfig (gcc-8): 2 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 6 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 6 warnings
    malta_defconfig (gcc-8): 3 warnings
    malta_kvm_defconfig (gcc-8): 3 warnings
    malta_kvm_guest_defconfig (gcc-8): 3 warnings
    malta_qemu_32r6_defconfig (gcc-8): 4 warnings
    maltaaprp_defconfig (gcc-8): 3 warnings
    maltasmvp_defconfig (gcc-8): 3 warnings
    maltasmvp_eva_defconfig (gcc-8): 3 warnings
    maltaup_defconfig (gcc-8): 3 warnings
    maltaup_xpa_defconfig (gcc-8): 3 warnings
    markeins_defconfig (gcc-8): 3 warnings
    mips_paravirt_defconfig (gcc-8): 6 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 3 warnings
    nlm_xlp_defconfig (gcc-8): 8 warnings
    nlm_xlr_defconfig (gcc-8): 11 warnings
    omega2p_defconfig (gcc-8): 2 warnings
    pic32mzda_defconfig (gcc-8): 3 warnings
    pistachio_defconfig (gcc-8): 3 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 4 warnings
    rb532_defconfig (gcc-8): 3 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 3 warnings
    sb1250_swarm_defconfig (gcc-8): 4 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 3 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 2 warnings
    vocore2_defconfig (gcc-8): 2 warnings
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 3 warnings

riscv:
    allnoconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings
    tinyconfig (gcc-8): 1 warning

x86_64:
    allmodconfig (gcc-8): 11 warnings
    allnoconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 2 warnings
    x86_64_defconfig (gcc-8): 2 warnings
    x86_64_defconfig (gcc-8): 2 warnings

Errors summary:

    5    include/linux/build_bug.h:16:45: error: negative width in bit-fiel=
d '<anonymous>'
    5    drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anon=
ymous bit-field has negative width (-1)
    2    arch/mips/include/asm/octeon/cvmx-ipd.h:331:36: error: 'CVMX_PIP_S=
FT_RST' undeclared (first use in this function); did you mean 'CVMX_CIU_SOF=
T_RST'?
    2    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: error: storage siz=
e of 'pip_sft_rst' isn't known
    1    drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: initiali=
zation of 'int (*)(struct aspeed_pinmux_data *, const struct aspeed_sig_exp=
r *, _Bool)' from incompatible pointer type 'int (*)(const struct aspeed_pi=
nmux_data *, const struct aspeed_sig_expr *, _Bool)' [-Werror=3Dincompatibl=
e-pointer-types]

Warnings summary:

    315  arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    193  <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    122  drivers/of/platform.c:650:18: warning: ?: using integer constants =
in boolean context [-Wint-in-bool-context]
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
    12   include/linux/compiler.h:328:5: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    12   1 warning generated.
    11   drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    9    printk(KERN_WARNING "SA1100 flash: unknown base address "
    9    include/linux/printk.h:309:2: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    9    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined
    9    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    7    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statem=
ent may fall through [-Wimplicit-fallthrough=3D]
    6    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    6    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    5    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    5    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects arg=
ument of type 'long unsigned int', but argument 5 has type 'unsigned int' [=
-Wformat=3D]
    5    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to inte=
ger of different size [-Wpointer-to-int-cast]
    5    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to inte=
ger of different size [-Wpointer-to-int-cast]
    5    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects arg=
ument of type 'long unsigned int', but argument 5 has type 'unsigned int' [=
-Wformat=3D]
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
    5    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    3    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    3    2 warnings generated.
    2    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret=
' [-Wunused-variable]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: warning: unused va=
riable 'pip_sft_rst' [-Wunused-variable]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2734:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used =
uninitialized whenever 'for' loop exits because its condition is false [-Ws=
ometimes-uninitialized]
    1    fs/ocfs2/dlm/dlmdomain.c:1952:9: note: initialize the variable 're=
t' to silence this warning
    1    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3136:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1646:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/acornfb.c:860:9: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    1    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:366:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:360:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:354:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:348:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:341:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:331:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:323:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/soc/qcom/socinfo.c:231:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x36: redundant UACCESS disable
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x34: redundant UACCESS disable
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x1c: redundant UACCESS disable
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info=
' [-Wunused-variable]
    1    cc1: some warnings being treated as errors
    1    arch/mips/include/asm/octeon/cvmx-sli-defs.h:47:6: warning: this s=
tatement may fall through [-Wimplicit-fallthrough=3D]
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
    1    .config:1177:warning: override: UNWINDER_GUESS changes choice stat=
e

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 12 warni=
ngs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
acs5k_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
acs5k_tiny_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section mi=
smatches

Errors:
    drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: initializatio=
n of 'int (*)(struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, =
_Bool)' from incompatible pointer type 'int (*)(const struct aspeed_pinmux_=
data *, const struct aspeed_sig_expr *, _Bool)' [-Werror=3Dincompatible-poi=
nter-types]

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, 0 secti=
on mismatches

Errors:
    drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous=
 bit-field has negative width (-1)

Warnings:
    mm/shmem.c:2734:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1646:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3136:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used unini=
tialized whenever 'for' loop exits because its condition is false [-Wsometi=
mes-uninitialized]
    fs/ocfs2/dlm/dlmdomain.c:1952:9: note: initialize the variable 'ret' to=
 silence this warning
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
    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 136 warnings, 0 sectio=
n mismatches

Errors:
    include/linux/build_bug.h:16:45: error: negative width in bit-field '<a=
nonymous>'

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
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 secti=
on mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x1c: redundant UACCESS disable
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/soc/qcom/socinfo.c:323:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:331:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:231:2: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:341:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:348:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:354:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:360:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/soc/qcom/socinfo.c:366:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section m=
ismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sect=
ion mismatches

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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 7 warnings,=
 0 section mismatches

Errors:
    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: error: storage size of =
'pip_sft_rst' isn't known
    arch/mips/include/asm/octeon/cvmx-ipd.h:331:36: error: 'CVMX_PIP_SFT_RS=
T' undeclared (first use in this function); did you mean 'CVMX_CIU_SOFT_RST=
'?
    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: error: storage size of =
'pip_sft_rst' isn't known
    arch/mips/include/asm/octeon/cvmx-ipd.h:331:36: error: 'CVMX_PIP_SFT_RS=
T' undeclared (first use in this function); did you mean 'CVMX_CIU_SOFT_RST=
'?

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/include/asm/octeon/cvmx-sli-defs.h:47:6: warning: this statem=
ent may fall through [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: warning: unused variabl=
e 'pip_sft_rst' [-Wunused-variable]
    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: warning: unused variabl=
e 'pip_sft_rst' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mismatch =
in conditional expression

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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section m=
ismatches

Errors:
    drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous=
 bit-field has negative width (-1)

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 135 warnings, 0 section m=
ismatches

Errors:
    include/linux/build_bug.h:16:45: error: negative width in bit-field '<a=
nonymous>'

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
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 FAIL, 1 error,=
 135 warnings, 0 section mismatches

Errors:
    include/linux/build_bug.h:16:45: error: negative width in bit-field '<a=
nonymous>'

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
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, clang-8) =E2=80=94 FAIL, 1 erro=
r, 0 warnings, 0 section mismatches

Errors:
    drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous=
 bit-field has negative width (-1)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 FAIL, 1 error,=
 135 warnings, 0 section mismatches

Errors:
    include/linux/build_bug.h:16:45: error: negative width in bit-field '<a=
nonymous>'

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
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, clang-8) =E2=80=94 FAIL, 1 erro=
r, 0 warnings, 0 section mismatches

Errors:
    drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous=
 bit-field has negative width (-1)

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, clang-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0=
 section mismatches

Errors:
    drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous=
 bit-field has negative width (-1)

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 135 warnings, 0=
 section mismatches

Errors:
    include/linux/build_bug.h:16:45: error: negative width in bit-field '<a=
nonymous>'

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
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:808:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall throu=
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
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

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
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 10 warning=
s, 0 section mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
iop13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
iop33x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sectio=
n mismatches

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
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
ks8695_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]

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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    {standard input}:134: Warning: macro instruction expanded into multiple=
 instructions
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 5 warnings, 0 section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 5 warnings, 0 section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 =
warnings, 0 section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 13 warn=
ings, 0 section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 12 warni=
ngs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
nsim_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nuc910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
nuc950_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
nuc960_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
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
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    arch/arm/mach-rpc/riscpc.c:48:13: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/acornfb.c:860:9: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    .config:1177:warning: override: UNWINDER_GUESS changes choice state
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x34: redundant UACCESS disable
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x36: redundant UACCESS disable
    include/linux/build_bug.h:49: warning: "BUILD_BUG_ON" redefined

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5d4ab6db.1c69fb81.8f6ca.5b76%40mx.google.com.
