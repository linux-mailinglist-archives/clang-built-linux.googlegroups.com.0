Return-Path: <clang-built-linux+bncBDT6TV45WMPRBQ6DYGBAMGQEZVWF5SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C163B33CEC5
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 08:44:04 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id v133sf9323761vsv.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 00:44:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615880643; cv=pass;
        d=google.com; s=arc-20160816;
        b=IVeeI2MfK1TPoTPLGWWpgHl8Rto9ntRsL86M6kMMiCoVlXhsgM8t4d+bucN/eE5Y22
         9iAuhfYWwieep5Uq5+89USQ3F+dK9Gu783ptAN25NAnpJtUY5RwztFf+ix+4dxEnkfDr
         NzvXMG8ksGB+oQbOnorLep416Yf+YZABtqWYHdPApZs25f9B+CPQdMdYWc6/w84wm3c5
         gojq6xNcFuwIE4eCAZdyeT63pu7Q9ywjJToDht9Egph6N9/fxmavSvOeGmxmBId8SiBZ
         j9E/sVBMMp/jDMmOE4ObHu5qjphKfwXOusucNu5Y265Yxxzqm/8AZMd0Bed6JfLIH3vD
         FjHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=E7zI46KGwa9Quy3MhLSUS15Kl7CBK4t7eN6ytum5sKM=;
        b=kFdL3Oh/FXIjAFa0qbkbGRGlx57mlFwaAJfx/AZ8NzUJc7jNZQ8VWn0H3Y1kkXr86g
         7SIwgX+MayUqmhSjaYpQXi3Q2+za2GeQa5U0sfTqK9rst3ue/Lqprsr9iQYMSCLXNwyb
         HxcwNrV5OWqzWvnDEmQwWp38boDtWwfYx+QWtEIKZwGpYTHbdw8+L7KubJscRkAuSxJ8
         FJDFtgD5Lek33YgNSAsd6Rfqze4aekeEu8etlqoN1jQErYBNacLonW1CmeEZIeCJUG4H
         jpGBFTFEpUFPHF+vDrd10dJHoMNRo02Jx5QcoeFgSf1oZxNLhZv8/YwDnNR9fhHqyQ3N
         p57Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="UDer/UM4";
       spf=neutral (google.com: 2607:f8b0:4864:20::1034 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E7zI46KGwa9Quy3MhLSUS15Kl7CBK4t7eN6ytum5sKM=;
        b=r+n/J/jLW5bFDruAnIRFeFieoUiAQYOjE6ELYOdcX0Ekg/SbuPLBscrFiOyvkGbOc2
         xyJaQoJdAe+ZedLbOCJ0MFcGL1GWVoOlS3Xbh0mn72Cx5PiGhuLIy/Cv9tkvjhDCYlsI
         LOU5qzJV37xatnixChUxeYPgjm7fWgVbaVIE6xCDjUQnVt/slC3qHlBAvXtbzSqnADqf
         DrbxnrrRL8BXlR8hv5cuWA8Pl4kG4bzlyXFfCKXoKh4ykqwUtwALhF9dp4FRxW8Lg0la
         NGXB3wuxEUEprjf9Tyt7kidBBl9lROFG7anKnuY7SgXC2ruFpD5VLXyijCEBIfd5Afom
         ywVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E7zI46KGwa9Quy3MhLSUS15Kl7CBK4t7eN6ytum5sKM=;
        b=sGezkMqH6p9kZUDjqIEBCvqZEL7mgVCUyyYhDi4FtqJE5LngP+j1ErL3g+EEPYOihi
         bSSlh57stdRfgmhbzsCdzbWDf8BSSHw+dDRhro554PXCwQ/o27iq62rDxlfb4AD4oJhI
         rr3oKYDYiMdUO0xStvSPwpgpqHpwHaIdcsr1Bc+151T3Ktiwy3eHekRCwVqZ64lXx0a+
         pOoG4un6B0y9rFG/J01+wu6kXAbArRLTXi9Bwet2WUl5yuOGqoE1yt21CxgNeaW5ZS7O
         Z/+9kHKDhS7AXWS9GRNcd1VvTEwuDeva8kRNuKtjsxtNrLOJTpGsIErJY9CVQ/poqoOp
         01XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vtjbOcTzAssmfjD/P+LvDDYHvkNRomRCsocj0Hdvi4N9A25+U
	SOoiCf93VJoi+5usNvH/VxI=
X-Google-Smtp-Source: ABdhPJxtJdkJFLPLNnzJpfRxrD5tEPW/JiJAmgdNCzoDuo9vjBexnyBE8wJKkRFSI+/ssK/fu0CCvg==
X-Received: by 2002:a67:3055:: with SMTP id w82mr17645431vsw.2.1615880643774;
        Tue, 16 Mar 2021 00:44:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:475b:: with SMTP id i27ls1455143uac.7.gmail; Tue, 16 Mar
 2021 00:44:03 -0700 (PDT)
X-Received: by 2002:ab0:2458:: with SMTP id g24mr7538590uan.24.1615880643089;
        Tue, 16 Mar 2021 00:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615880643; cv=none;
        d=google.com; s=arc-20160816;
        b=FqHZdNLWLHJJO5U+RyQXWdz+cABiVCaccJ91+qCWR0F1AFhequU1pdDXNVeZznZoA1
         kTPpS5gA/LYyiuViB8zRS7molP5C3By6wVY0+2VnH7mrlCpC2AQftTsc2dN79jWQ2b3v
         k1NMDVr7zaSm1uU2UhylZoYLju5zsTfUkXEXx1CAbZO49k4poOoH4IjKmLQ054KE41RC
         yMxCN4UOrp2J51wS21ePPhpU3xHlJElbmlm2iPvc5s5+/tZRvCOBkpKjkdwi91acMv+k
         xMHbjY+vVon9EisxLVxew8LdKJ8iYASYGQEQNx9szHVPUHUxzlxcsC+HzojpaPpkdhdG
         aMeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=slGzPggmB5jw4dSRo00j/SQLxs0gSSApJwSyBAHlkTE=;
        b=0p26jl5b1BKPnSLWnqiZMNOKiI/uuimqgDpNxGPzi0lSMOtWSJBMesGu4fyKnTswNE
         bLX3oWHkbux4m7pAMUzvLTxRy4YjsSTN7Wg4P1NExiwNBayv/GX5GyVS8OXZOkiXnp5j
         z+RmV1lDBz4SLMRnSI+4UzT+Y+nmh54zzX2Yqg0lxw623A8kRxeM5kRgfiyUqalvdl4S
         cIcwrPBE49KoXIHZZMroDqmcHN3OHqfjleqspOMgfdLAkQvmDZAO657s13Wg1zBxo+EX
         8rNGrEcH5M0UfnHGGCRtoA5zC3mvKNIMbBakG0Dg+U3mEqZQvV/+8Nko+ceIJEZNBDQb
         H5eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="UDer/UM4";
       spf=neutral (google.com: 2607:f8b0:4864:20::1034 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id n3si1115909uad.0.2021.03.16.00.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 00:44:02 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1034 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id gb6so10178267pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 00:44:02 -0700 (PDT)
X-Received: by 2002:a17:90a:6ba3:: with SMTP id w32mr3529172pjj.226.1615880640165;
        Tue, 16 Mar 2021 00:44:00 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id x19sm15457359pfi.220.2021.03.16.00.43.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 00:43:59 -0700 (PDT)
Message-ID: <605061bf.1c69fb81.74f88.6a1e@mx.google.com>
Date: Tue, 16 Mar 2021 00:43:59 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20210316
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 231 builds: 5 failed, 226 passed, 13 errors,
 415 warnings (next-20210316)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b="UDer/UM4";       spf=neutral (google.com: 2607:f8b0:4864:20::1034
 is neither permitted nor denied by best guess record for domain of
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

next/master build: 231 builds: 5 failed, 226 passed, 13 errors, 415 warning=
s (next-20210316)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210316/

Tree: next
Branch: master
Git Describe: next-20210316
Git Commit: 0f4b0bb396f6f424a7b074d00cb71f5966edcb8a
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-10) FAIL

arm:
    aspeed_g5_defconfig: (clang-10) FAIL

mips:
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

x86_64:
    allmodconfig: (clang-10) FAIL

Errors and Warnings Detected:

arc:
    hsdk_defconfig (gcc-8): 4 warnings
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-10): 1 error, 7 warnings
    allmodconfig (clang-11): 7 warnings
    allnoconfig (clang-10): 2 warnings
    allnoconfig (gcc-8): 1 warning
    allnoconfig (clang-11): 2 warnings
    defconfig (clang-11): 1 warning
    defconfig (clang-10): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 1 warning
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-11): 1 warning
    tinyconfig (gcc-8): 1 warning

arm:
    allmodconfig (clang-10): 33 warnings
    allmodconfig (gcc-8): 6 warnings
    allmodconfig (clang-11): 31 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (clang-10): 11 errors, 2 warnings
    aspeed_g5_defconfig (clang-11): 2 warnings
    aspeed_g5_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 2 warnings
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 5 warnings
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 4 warnings
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hackkit_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 6 warnings
    lart_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 2 warnings
    lpc32xx_defconfig (gcc-8): 2 warnings
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 4 warnings
    mmp2_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (clang-10): 3 warnings
    multi_v5_defconfig (clang-11): 3 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 5 warnings
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 2 warnings
    neponset_defconfig (gcc-8): 2 warnings
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 3 warnings
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 2 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 2 warnings
    shannon_defconfig (gcc-8): 2 warnings
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 3 warnings
    spear13xx_defconfig (gcc-8): 2 warnings
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 2 warnings
    tct_hammer_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 2 warnings
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning

i386:
    allmodconfig (clang-11): 26 warnings
    allmodconfig (clang-10): 24 warnings
    i386_defconfig (gcc-8): 4 warnings
    i386_defconfig (clang-11): 11 warnings
    i386_defconfig (clang-10): 11 warnings

mips:
    32r2el_defconfig (gcc-8): 2 warnings
    ar7_defconfig (gcc-8): 1 warning
    bcm63xx_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    cavium_octeon_defconfig (gcc-8): 2 warnings
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    e55_defconfig (gcc-8): 1 warning
    fuloong2e_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 5 warnings
    gpr_defconfig (gcc-8): 1 warning
    ip22_defconfig (gcc-8): 3 warnings
    ip27_defconfig (gcc-8): 3 warnings
    ip32_defconfig (gcc-8): 1 warning
    jazz_defconfig (gcc-8): 1 warning
    jmr3927_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 4 warnings
    malta_qemu_32r6_defconfig (gcc-8): 2 warnings
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    mpc30x_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 3 warnings
    pistachio_defconfig (gcc-8): 5 warnings
    qi_lb60_defconfig (gcc-8): 2 warnings
    rb532_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0226_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 3 warnings

riscv:
    defconfig+CONFIG_EFI=3Dn (clang-11): 1 warning
    nommu_k210_defconfig (gcc-8): 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 warning
    nommu_virt_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (clang-10): 1 error, 7 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-10): 13 warnings
    x86_64_defconfig (clang-11): 13 warnings
    x86_64_defconfig (gcc-8): 4 warnings
    x86_64_defconfig+kvm_guest (gcc-8): 4 warnings
    x86_64_defconfig+x86-chromebook (gcc-8): 4 warnings

Errors summary:

    2    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefi=
ned!
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x379C4): reloca=
tion R_ARM_PREL31 out of range: 2135588724 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37924): reloca=
tion R_ARM_PREL31 out of range: 2135588884 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37914): reloca=
tion R_ARM_PREL31 out of range: 2135588900 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x378C4): reloca=
tion R_ARM_PREL31 out of range: 2135588980 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x378B4): reloca=
tion R_ARM_PREL31 out of range: 2135588996 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3789C): reloca=
tion R_ARM_PREL31 out of range: 2135589020 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37884): reloca=
tion R_ARM_PREL31 out of range: 2135589044 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37854): reloca=
tion R_ARM_PREL31 out of range: 2135589092 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37824): reloca=
tion R_ARM_PREL31 out of range: 2135589140 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x377DC): reloca=
tion R_ARM_PREL31 out of range: 2135589212 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x351A8): reloca=
tion R_ARM_PREL31 out of range: 2135533456 is not in [-1073741824, 10737418=
23]

Warnings summary:

    177  ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_regi=
ster_set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    71   1 warning generated.
    18   ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_=
opp_register_set_opp_helper' [-Wunused-function]
    16   kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=
=E2=80=99 defined but not used [-Wunused-function]
    13   drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized =
when used here [-Wuninitialized]
    13   drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to sil=
ence this warning
    10   2 warnings generated.
    5    drivers/platform/surface/surface_aggregator_registry.c:496:25: war=
ning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') change=
s value from 65535 to 255 [-Wconstant-conversion]
    4    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    4    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-rc3-next-20210316/kernel/drivers/media/tuners/tuner-types.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    #warning This code requires at least version 4.6 of GCC
    2    kernel/sched/fair.c:8387:13: warning: unused function 'update_nohz=
_stats' [-Wunused-function]
    2    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 1828 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    2    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame si=
ze of 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-la=
rger-than=3D]
    2    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1748 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    2    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame si=
ze of 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    2    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:137:6: warni=
ng: stack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-l=
arger-than=3D]
    2    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack fra=
me size of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13:=
 warning: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5704 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3005:6:=
 warning: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    2    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame si=
ze of 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: s=
tack frame size of 1060 bytes in function 'atomisp_set_fmt' [-Wframe-larger=
-than=3D]
    1    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: s=
tack frame size of 1044 bytes in function 'atomisp_set_fmt' [-Wframe-larger=
-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3344 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame siz=
e of 1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1856 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1848 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1871:12: warning: stack frame =
size of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/mtd/chips/cfi_cmdset_0001.c:1871:12: warning: stack frame =
size of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=
=3D]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+=
0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_prefault_relocations()+0xb8: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+=
0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x259: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:519:44: =
warning: cast from pointer to integer of different size [-Wpointer-to-int-c=
ast]
    1    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:519:35: =
warning: cast to pointer from integer of different size [-Wint-to-pointer-c=
ast]
    1    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:511:38: =
warning: cast from pointer to integer of different size [-Wpointer-to-int-c=
ast]
    1    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:511:28: =
warning: cast to pointer from integer of different size [-Wint-to-pointer-c=
ast]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:979:6: warning: stack frame size of 1228 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:979:6: warning: stack frame size of 1180 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_=
calc_30.c:963:13: warning: stack frame size of 1068 bytes in function 'dml_=
rq_dlg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1548 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1532 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1196 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1148 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1452 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1212 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1196 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1436 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1228 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1196 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in =
function 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1    crypto/wp512.c:782:13: warning  LD [M]  sound/drivers/snd-virmidi.=
o
    1    clang: warning: argument unused during compilation: '-no-pie' [-Wu=
nused-command-line-argument]
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    WARNING: modpost: Symbol info of vmlinux is missing. Unresolved sy=
mbol check will be entirely skipped.
    1    /tmp/test-arm-f42926.s:18794: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-f42926.s:18719: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-0f0671.s:18792: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-0f0671.s:18717: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/ccWU6mqj.s:18195: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccWU6mqj.s:18123: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1190:warning: override: UNWINDER_GUESS changes choice stat=
e

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
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    WARNING: modpost: Symbol info of vmlinux is missing. Unresolved symbol =
check will be entirely skipped.

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-11) =E2=80=94 PASS, 0 errors, 26 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
748 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:979:6: warning: stack frame size of 1228 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_=
30.c:963:13: warning: stack frame size of 1068 bytes in function 'dml_rq_dl=
g_get_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1228 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1436 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1212 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1452 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1196 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1532 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack =
frame size of 1044 bytes in function 'atomisp_set_fmt' [-Wframe-larger-than=
=3D]
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:496:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1828 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 FAIL, 1 error, 7 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:496:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 24 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
748 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack =
frame size of 1060 bytes in function 'atomisp_set_fmt' [-Wframe-larger-than=
=3D]
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:496:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:979:6: warning: stack frame size of 1180 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1196 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1148 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1196 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1548 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    2 warnings generated.
    2 warnings generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1828 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:496:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3344 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 33 warnings, 0 secti=
on mismatches

Warnings:
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    /tmp/test-arm-f42926.s:18719: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-f42926.s:18794: Warning: using r15 results in unpredictab=
le behaviour
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning: stack frame size of 1192 bytes in funct=
ion 'wp512_process_buffer' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
848 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/staging/wlan-ng/cfg80211.c:272:12: warning: stack frame size of=
 1032 bytes in function 'prism2_scan' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3005:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5704 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1216 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:137:6: warning: s=
tack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-larger=
-than=3D]
    1 warning generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1871:12: warning: stack frame size =
of 1056 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-10) =E2=80=94 FAIL, 1 error, 7 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "__field_overflow" [drivers/net/ipa/ipa.ko] undefined!

Warnings:
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:496:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 section m=
ismatches

Warnings:
    /tmp/ccWU6mqj.s:18123: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccWU6mqj.s:18195: Warning: using r15 results in unpredictable beha=
viour
    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:511:38: warni=
ng: cast from pointer to integer of different size [-Wpointer-to-int-cast]
    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:511:28: warni=
ng: cast to pointer from integer of different size [-Wint-to-pointer-cast]
    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:519:44: warni=
ng: cast from pointer to integer of different size [-Wpointer-to-int-cast]
    drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.c:519:35: warni=
ng: cast to pointer from integer of different size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 31 warnings, 0 secti=
on mismatches

Warnings:
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.
    /tmp/test-arm-0f0671.s:18717: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-0f0671.s:18792: Warning: using r15 results in unpredictab=
le behaviour
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    crypto/wp512.c:782:13: warning  LD [M]  sound/drivers/snd-virmidi.o
    1 warning generated.
    drivers/gpu/drm/selftests/test-drm_mm.c:372:12: warning: stack frame si=
ze of 1040 bytes in function '__igt_reserve' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
856 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/wireless/cisco/airo.c:3076:12: warning: stack frame size of=
 1056 bytes in function 'airo_thread' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3005:6: warn=
ing: stack frame size of 1384 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5704 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/staging/fbtft/fbtft-core.c:995:5: warning: stack frame size of =
1208 bytes in function 'fbtft_init_display' [-Wframe-larger-than=3D]
    drivers/staging/fbtft/fbtft-core.c:903:12: warning: stack frame size of=
 1072 bytes in function 'fbtft_init_display_from_property' [-Wframe-larger-=
than=3D]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:137:6: warning: s=
tack frame size of 1040 bytes in function 'mlx5i_get_stats' [-Wframe-larger=
-than=3D]
    1 warning generated.
    drivers/mtd/chips/cfi_cmdset_0001.c:1871:12: warning: stack frame size =
of 1064 bytes in function 'cfi_intelext_writev' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: unused function 'update_nohz_stat=
s' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: unused function 'update_nohz_stat=
s' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 11 errors, 2 warnings, =
0 section mismatches

Errors:
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x351A8): relocation =
R_ARM_PREL31 out of range: 2135533456 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x377DC): relocation =
R_ARM_PREL31 out of range: 2135589212 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37824): relocation =
R_ARM_PREL31 out of range: 2135589140 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37854): relocation =
R_ARM_PREL31 out of range: 2135589092 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37884): relocation =
R_ARM_PREL31 out of range: 2135589044 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x3789C): relocation =
R_ARM_PREL31 out of range: 2135589020 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x378B4): relocation =
R_ARM_PREL31 out of range: 2135588996 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x378C4): relocation =
R_ARM_PREL31 out of range: 2135588980 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37914): relocation =
R_ARM_PREL31 out of range: 2135588900 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37924): relocation =
R_ARM_PREL31 out of range: 2135588884 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x379C4): relocation =
R_ARM_PREL31 out of range: 2135588724 is not in [-1073741824, 1073741823]

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

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
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-11) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc3-next-20210316/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc3-next-20210316/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc3-next-20210316/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-11) =E2=80=94 PASS, 0 er=
rors, 1 warning, 0 section mismatches

Warnings:
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc3-next-20210316/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_EFI=3Dn (riscv, clang-11) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    clang: warning: argument unused during compilation: '-no-pie' [-Wunused=
-command-line-argument]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-11) =E2=80=94 PASS, 0 errors, 11 warnings, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 11 warnings, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    {standard input}:39: Warning: macro instruction expanded into multiple =
instructions
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-11) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

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
    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpiod_=
table=E2=80=99 defined but not used [-Wunused-variable]
    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_del=
ta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 s=
ection mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1190:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

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
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 13 warnings, =
0 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xc6: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x249: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-11) =E2=80=94 PASS, 0 errors, 13 warnings, =
0 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xb8: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x259: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    drivers/scsi/sg.c:2990:34: warning: variable 'k' is uninitialized when =
used here [-Wuninitialized]
    drivers/scsi/sg.c:2977:7: note: initialize the variable 'k' to silence =
this warning
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.
    ./include/linux/pm_opp.h:341:1: warning: unused function 'devm_pm_opp_r=
egister_set_opp_helper' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warn=
ings, 0 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4=
 warnings, 0 section mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    kernel/sched/fair.c:8387:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]
    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    ./include/linux/pm_opp.h:341:1: warning: =E2=80=98devm_pm_opp_register_=
set_opp_helper=E2=80=99 defined but not used [-Wunused-function]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/605061bf.1c69fb81.74f88.6a1e%40mx.google.com.
