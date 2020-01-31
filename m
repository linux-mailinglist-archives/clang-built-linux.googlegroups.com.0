Return-Path: <clang-built-linux+bncBDT6TV45WMPRB4HTZ7YQKGQER7T2W2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B214EA4F
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 10:57:04 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id z7sf1860357wmi.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 01:57:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580464624; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZAQKtDu6ZHjaG7Sl1FnTtk3Awm5gU2J3heYDYHZxvPBxRX2l5Zyi/Bo3tZwMzTy7G
         wC6KvQ1C7w2Azqc6XlxyR4PUhg/znQQcVrLjgmPnbFl3MfDm6uV5Nk4JAZVPqIvdtXp1
         vg+1l3kpg6yF+1BB42hR+XmDAIcAgiISjYgbXkJOs7jqX4lzYAeSfiD5XYTA6AceNDtW
         zeWZPCyls74rJaF0HW/PP9XWKUlcIw5KMzfpWG86YGh6aqDH7QDrPo9kQFLbM4eGpX8L
         FyjIaMqfo7yV8jieAqq1zc5uBaQyRVAXRYSFExHFCCMTHKTCEsNyQC8hJzmqfXfuLNzW
         ArFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=tt+RMZo60GVopGAqaGryKTnGPpeNYifrNgS3tDDXvI8=;
        b=BGPBXsZnh0gegsBWftpI2YTaL5b1lp+3EtES1lvv+tsTBAlCUViYZlxnNKPb6ph9vT
         u8SsWZequjdY+vfyAyQc2/KhNIIelwMoILbc/DvJpzpnXUaluTeJxU3FXV9Nat00C7tx
         BjiZONKzWrKu/9vLzw0KhqnHyywY2DlHLBASwKSYiP37WUiGrxd8Y2+3pRBHinwRUPTG
         J6JItbbxyrF1Q530sN+69Qai1ovzg3xmc81qOtY41WJ9qxndB4RfN81kCqRbJ+sjynjk
         g8SO2eHdZSVKtMdJA8B3JKYZmdyORrE+fpGQAWOxZLMseN6/XLGrmXgf320Ziv+QOAJY
         k7gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=AqLXVHP8;
       spf=neutral (google.com: 2a00:1450:4864:20::32e is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tt+RMZo60GVopGAqaGryKTnGPpeNYifrNgS3tDDXvI8=;
        b=pK6N4T08vW9QS2LMj1zVs1rhGYfrxotnJgyVFaKaskfwDeZ5eR2PCJROAfFijPwFTN
         pMO7zJU03y/NuqMZFN+ePRm7SiX8lIhNh67KTO7xezOuh7cxyR4EKm+jxmAKYVtlZBCU
         jIRBitRZ5Ji7C4PAOtUJZCbLTKw88iPgIj9zcKw7R47xQ+lLPl8HmbOJbF8nowWNwgfT
         j4NHSJK0b6bf56107Oe5PRTYP8SlU2FRifBTXJoDfoZgRq+hBBAOi3KwuOgirqEjkw2G
         AyRpuHiFDeAFfkJ6cNpY6IcxaWDEU9h4fCPj3P4+IrN9/PwNL3BJUk/d9nWVraKo2aII
         06zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tt+RMZo60GVopGAqaGryKTnGPpeNYifrNgS3tDDXvI8=;
        b=Eb2Ks+L4zBypvRdNeyakwv2IdDFKNZ4Q5IDJPxyGOdMLHvRIq7DXZyMEQtlxpec+nx
         oc13R/8zAvAbmpLL12c/rvBbRQifkriIBOxOWpWmEMzk8nEn/4bNG/+stPviN1Q//0Ja
         vsKX6bzcxF6bPdYs6dcrWWEPvz1VcBuEwoVvYipqMuH9ABZ5x9U93mTfomyxOSh//NQi
         HCjlYWXk7Wh4mF+2zREd/y1GznoNSQWiZMEz7gXT5NW+lEtaZmyQTxuysKEPKU+JUqee
         1oRPTRVdb1h0HweDaEs/TqwSh5hh1SHNV582lZbBAjEyYIpYrx0pVAQFcsEaKW/DK86v
         C8rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVqDM4baJN6Ph+KAzByIeYBF/F2hTV5v+VbNPTbH0gMlP76rp7y
	yH9UaDkiCgNL90QWs5B8ggQ=
X-Google-Smtp-Source: APXvYqyTh80fm2SSRKOPXAMvej1FtQh1EOCMobpUbCpcSL8bxPYXt3rSNXvDpc8PXNcV3Q1uowVjkw==
X-Received: by 2002:a1c:3b0a:: with SMTP id i10mr11772913wma.177.1580464624440;
        Fri, 31 Jan 2020 01:57:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf15:: with SMTP id l21ls4683941wmg.0.canary-gmail; Fri,
 31 Jan 2020 01:57:03 -0800 (PST)
X-Received: by 2002:a7b:c416:: with SMTP id k22mr11606952wmi.25.1580464623870;
        Fri, 31 Jan 2020 01:57:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580464623; cv=none;
        d=google.com; s=arc-20160816;
        b=XPXwZFsWsyoYwuKuD8PU0yjQzaq7/yg0kU7ncC4v7QerJl4v65eH2tJjDWGFWpb4XV
         EFPSO7f5T8EkpVvL1fEc29qvuaEXHYaR1c98hOsEkplcoIJcSq0TPstw91pY7btGgmMF
         oDXOPDpg1TQqxSsP4R5xnx+0W8YccxgNc98WR0U6HW3Y+Hb1ZssqHNrFjO87dKjBglAM
         w1/9lqOTboFttw8mr8w/zG/CrqiAaz5g+US8BxT2I1sYs1Ql2XazpQfxkzT8UazdIDs3
         nfXOGPSZ4PFK9BRyFK4D/1peNOnFiP+tO2rudVHBsEFHR6ASloU1EQp5Y3pjvd0t3S2p
         J1AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=G+4YOutcL/Zze9p2nrNVtzm6S+rM04wn3QI1RI95PR8=;
        b=rTCJ7u88duv+zdl8jT3/NQjr8p0e2/6JdutQ2kn8lHeM2emDsEz5qkv4Y62ZYTr5vq
         e3pd9B4tr0/F83ybx/YgnG1Q5gnWSjKX4GGfriZvQnVwkmrwxHsUeeXb5yOViQ8+bdT/
         rScAOoUGUhZks7GZupj6F7V6Mn2yyJkj/hfDGx6Fi2v61SgblNosK2XfnjpCjzC7UqcH
         u3P+InfhkZDLXvSegcAvyo2GlBEwI6lZ2PkWFYgzFt+ftYinGwxZ2SSwqjazG8AK+ZMZ
         L/H0y1siLFzotaUzROTFTseQjKt2HIHvHfycRIuKdOgC45UF+OnvJtj1ShrgP+sPAhU6
         D28g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=AqLXVHP8;
       spf=neutral (google.com: 2a00:1450:4864:20::32e is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id w11si456276wmk.0.2020.01.31.01.57.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 01:57:03 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::32e is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::32e;
Received: by mail-wm1-x32e.google.com with SMTP id s10so7180423wmh.3
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jan 2020 01:57:03 -0800 (PST)
X-Received: by 2002:a1c:7907:: with SMTP id l7mr10811208wme.37.1580464621499;
        Fri, 31 Jan 2020 01:57:01 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id d204sm10067488wmd.30.2020.01.31.01.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2020 01:57:00 -0800 (PST)
Message-ID: <5e33f9ec.1c69fb81.6d939.d00e@mx.google.com>
Date: Fri, 31 Jan 2020 01:57:00 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20200131
X-Kernelci-Report-Type: build
Subject: next/master build: 198 builds: 2 failed, 196 passed, 3 errors,
 222 warnings (next-20200131)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=AqLXVHP8;       spf=neutral (google.com: 2a00:1450:4864:20::32e is
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

next/master build: 198 builds: 2 failed, 196 passed, 3 errors, 222 warnings=
 (next-20200131)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200131/

Tree: next
Branch: master
Git Describe: next-20200131
Git Commit: c8e31a0fc39797784e4b9acae3bd2e0c7bade36e
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm:
    allmodconfig: (gcc-8) FAIL

mips:
    malta_kvm_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    axs103_defconfig (gcc-8): 1 warning
    axs103_smp_defconfig (gcc-8): 1 warning
    haps_hs_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 warning
    hsdk_defconfig (gcc-8): 1 warning
    nsimosci_hs_defconfig (gcc-8): 1 warning
    nsimosci_hs_smp_defconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:

arm:
    allmodconfig (gcc-8): 1 error, 17 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 2 warnings
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 3 warnings
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 2 warnings
    mini2440_defconfig (gcc-8): 3 warnings
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    mv78xx0_defconfig (gcc-8): 2 warnings
    mvebu_v5_defconfig (gcc-8): 5 warnings
    mvebu_v7_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 4 warnings
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 2 warnings
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 3 warnings
    s3c6400_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 1 warning
    shmobile_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 1 warning
    tango4_defconfig (gcc-8): 3 warnings
    tct_hammer_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 3 warnings
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 17 warnings

mips:
    32r2el_defconfig (gcc-8): 1 warning
    32r2el_defconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 1 warning
    ath79_defconfig (gcc-8): 1 warning
    bcm47xx_defconfig (gcc-8): 1 warning
    bcm63xx_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 1 warning
    cu1000-neo_defconfig (gcc-8): 1 warning
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
    malta_kvm_defconfig (gcc-8): 2 errors, 1 warning
    malta_kvm_guest_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 2 warnings
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    markeins_defconfig (gcc-8): 1 warning
    mpc30x_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 1 warning
    pnx8335_stb225_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    rt305x_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0226_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 1 warning

riscv:
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    tinyconfig (gcc-8): 1 warning

Errors summary:

    1    arch/mips/kvm/mips.c:303:43: error: =E2=80=98kvm_mips_comparecount=
_wakeup=E2=80=99 undeclared (first use in this function); did you mean =E2=
=80=98kvm_mips_count_timeout=E2=80=99?
    1    arch/mips/kvm/mips.c:1224:29: error: =E2=80=98kvm_mips_comparecoun=
t_wakeup=E2=80=99 defined but not used [-Werror=3Dunused-function]
    1    ERROR: "__aeabi_uldivmod" [drivers/net/ethernet/mellanox/mlxsw/mlx=
sw_spectrum.ko] undefined!

Warnings summary:

    159  fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expec=
ts argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has=
 type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wform=
at=3D]
    22   include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_=
lookup_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    16   arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width o=
f type [-Wshift-count-overflow]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    cc1: all warnings being treated as errors
    1    /tmp/ccllzIet.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccllzIet.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1163:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: vmlinux.o(.text.unlikely+0x3a78): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3718): Section mismatch in ref=
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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 17 warnings, 0 section m=
ismatches

Errors:
    ERROR: "__aeabi_uldivmod" [drivers/net/ethernet/mellanox/mlxsw/mlxsw_sp=
ectrum.ko] undefined!

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    /tmp/ccllzIet.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccllzIet.s:18191: Warning: using r15 results in unpredictable beha=
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

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
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
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3a78): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3718): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 17 warning=
s, 0 section mismatches

Warnings:
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/kvm/mips.c:303:43: error: =E2=80=98kvm_mips_comparecount_wake=
up=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98=
kvm_mips_count_timeout=E2=80=99?
    arch/mips/kvm/mips.c:1224:29: error: =E2=80=98kvm_mips_comparecount_wak=
eup=E2=80=99 defined but not used [-Werror=3Dunused-function]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1163:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e33f9ec.1c69fb81.6d939.d00e%40mx.google.com.
