Return-Path: <clang-built-linux+bncBDT6TV45WMPRBCENXPXAKGQE3ETXJ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEFAFE19D
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 16:38:48 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id o1sf6254006edd.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 07:38:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573832328; cv=pass;
        d=google.com; s=arc-20160816;
        b=fjqS510jaXDCtqXDaI3ecpLbvEp28MlUnKvZe8N/WNnPGoLq6ASdje/weLSQvzf457
         OwkqBDx9l+v08jffjYvOptAqto6T9RnLxPrCeo6q5tyxExq7GdkVa6XN2MneRXynqjIj
         O0cL+Dvznu9JIhNVb8dHaEzNfGsye8ipRRTjXrYDJjY7DAjHmJKWxjHqEC97bsn/qeVb
         budLH5+A+dA9meVHX0L26IjfkJ4B3TmohDd7Q0HO4wVsi7k/kIMAB7MojbEOYMHdKlfl
         ZS1MW9Tfpq0df1i5pV+BjUBXM4TY31UrA/qZ6CNsobn75DFOB7j9i362Eoy2ksAhId3d
         N5PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=rhWOhy+FKMVqOBWkXX7ecJF76Tj4DL+qOLdbQ1NlRcc=;
        b=Vq3KeZbvBZBuLFvaDvP1ASqUkpYmHIAY/9S2X1b8E/MVDwtVsEzWbAcZXtDcQg+mjM
         LQMhbqZlkp3hdwtKDr1OgJjn/U9+zI7NLGDEyjPa28Z166mYh1bsQBd2pWDdr61QlbUk
         279qnziiWYsiew7VMDLI411g1c7saM3VgLY0CmQwJW/Yfsh4Gu1JC9c/7+qW8Vx5Cgex
         8Fr8aAaCmArnU3ldnsbnAvi8cFwdJnNufJJvpIoSTjnxhd6RaoHj0x1v0pwCKM72pBB1
         Yr/CSSVGmWSYAKjxI//2dbstp3F0tOxvU/fYKxQ1u6JPJ7e6eFcgaDw3oMcVLm+IONtQ
         +8og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=XaSLOKyc;
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhWOhy+FKMVqOBWkXX7ecJF76Tj4DL+qOLdbQ1NlRcc=;
        b=mDc4dkgd9pdZVRbvykflbAufaIL7KKXSVoBjotacHdsyQ6Ad9xSr/WfMMSjxnB2rUz
         +i4iHu4qT3rIcay91woldXLScWgh3rGunugjup7fGd8qhrADQgBAAXtnbSXrc3U+G42J
         hxWFcqud6mKjY2e5KjO5pPodkMvNbwOBpg0L+fsZIkUSMp9MBNgEls0YKDdgZ8Taflz6
         Y5FaRJjNnWQgA8hhMo1FXl7rSIt2mcAagjgEc3oN6SD9TM75DkBJW00NUCM4BsQWcWt6
         9mRdB4UqVp1yTfN3KwqOnwN1f/jQ0B7cT+jUZgKez7yKVoDYnLkUXMw9QS5OsbOclonH
         M+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhWOhy+FKMVqOBWkXX7ecJF76Tj4DL+qOLdbQ1NlRcc=;
        b=EdGZonCF39uj/E006bBcPP7U/QWe/tYpegSi7iy/psUA5faLME2bOeN8atlpUgkgcT
         oRbguilLaUWD/aHQE9YZa4vCdbAEZcdoDntV7J7MpthEsBCMqUsvas2e54EX+tni29Yc
         Q1/86h8IKtiZTpJSPFbshlgfsODJDtOK3KhUWK/3/IgnnyilVgUpD2dJE2DfrlUqadwJ
         3oomvmLZ29SXGRSfOZFzRnBvu+A0Ui5oaB4qD/z5/Zo9wWX2Bdv93T2Re2msVL24KxfX
         cZkGc6rWjoisbOxJG2bEm25JfS/nBMUgIxhzjKpvqmH9AHoU0HlRFKAsbjuVMQKAakgW
         AQJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXayLEpASb4MAjYDnJN8TE74apDLDFktfTXZWE6VPpG5GHSux5m
	YLwPJObYhSo4iT+5rAL+40g=
X-Google-Smtp-Source: APXvYqxOKFhO6hVEJKcgO2nF/f7iF4hCrKWnfE5/y9ZomRhBzd39U9867wj7pFjn8edKTMUT01ymyg==
X-Received: by 2002:a17:906:5586:: with SMTP id y6mr1737017ejp.76.1573832328428;
        Fri, 15 Nov 2019 07:38:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b857:: with SMTP id ga23ls264392ejb.6.gmail; Fri, 15
 Nov 2019 07:38:47 -0800 (PST)
X-Received: by 2002:a17:906:a38d:: with SMTP id k13mr1677502ejz.213.1573832327767;
        Fri, 15 Nov 2019 07:38:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573832327; cv=none;
        d=google.com; s=arc-20160816;
        b=suba610FzdG+1FCA4R/sCzgOJdsyZvasOvLN+LF5zM56E25alecJs/QNPGy5jLtBlT
         QzawU5qfyiPPFCQvEnM6pA5DLhwPxZ5NvPvBmQWkW1/1j9CJiscsPXZbis4XvLtooh68
         pyFxY/6N8iy5zwpsVp/wK/NR1os+cp0HtGe5+FO65mo3vSKstNBQGx3wpEmFD0MXSlSP
         c44AMPIitMbAd4qm49xYYgQDVflX14lecjJmVL6U+Dn//Sn/GmWiaAYlbUGB3rUqNRcL
         K2K/IME5tbN9lEIgPQljgkPqq/rSepV1vn1F7z3rP3JctKYk0g/kG6Iqgi8h44Nutl6e
         mLoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=pgcKeWDTcQ/BJm2PKHKcVn75/fYMymOblle9esCY+Qw=;
        b=uwpka74nx0r1kA8CEne7tV1WUfkf5EV3IEjGZ92KK0QdSrXzCwaEaxbs9Venl7LWXo
         KCv8/44d1QASLqjLjt844sJ5mkvCm6ImRTR20GdIY0tRaM9l1RW4lNmTEy4DxbWioeFf
         v9pBNcg37RZs2oY/jfw7d+udfPPw45VNxWesfKLATU7N4CeQ6AyjGznHFYwddZfTHZ/3
         VMsEzU5TkaP4KvJV+WykxAxQjPXbA0QvZfBmCLgDM9bOzs6ur7I3N9vYkQnAZFx4rTpD
         4zBg5baILT8t+O1jCXwPIygPBTgGB7wcZmtqDfIVVPZk6eo4dikC9IBuE8YpG66GA1LI
         H9bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=XaSLOKyc;
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l26si476140ejr.0.2019.11.15.07.38.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2019 07:38:47 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id i12so11458895wro.5
        for <clang-built-linux@googlegroups.com>; Fri, 15 Nov 2019 07:38:47 -0800 (PST)
X-Received: by 2002:adf:b746:: with SMTP id n6mr15655212wre.65.1573832325035;
        Fri, 15 Nov 2019 07:38:45 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id l1sm11859822wrw.33.2019.11.15.07.38.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2019 07:38:43 -0800 (PST)
Message-ID: <5dcec683.1c69fb81.96146.988a@mx.google.com>
Date: Fri, 15 Nov 2019 07:38:43 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20191115
Subject: next/master build: 216 builds: 3 failed, 213 passed, 11 errors,
 866 warnings (next-20191115)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=XaSLOKyc;       spf=neutral (google.com: 2a00:1450:4864:20::444 is
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

next/master build: 216 builds: 3 failed, 213 passed, 11 errors, 866 warning=
s (next-20191115)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191115/

Tree: next
Branch: master
Git Describe: next-20191115
Git Commit: 5a6fcbeabe3e20459ed8504690b2515dacc5246f
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm:
    allmodconfig: (gcc-8) FAIL
    pxa_defconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 3 warnings
    axs103_smp_defconfig (gcc-8): 3 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 3 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 2 warnings
    vdk_hs38_smp_defconfig (gcc-8): 2 warnings

arm64:
    allmodconfig (clang-8): 64 warnings
    allmodconfig (gcc-8): 4 warnings
    allnoconfig (clang-8): 4 warnings
    defconfig (clang-8): 4 warnings

arm:
    allmodconfig (gcc-8): 1 error, 20 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 19 warnings
    aspeed_g5_defconfig (gcc-8): 19 warnings
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 2 warnings
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 2 warnings
    cm_x300_defconfig (gcc-8): 2 warnings
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 2 warnings
    davinci_all_defconfig (gcc-8): 2 warnings
    dove_defconfig (gcc-8): 2 warnings
    em_x270_defconfig (gcc-8): 2 warnings
    ep93xx_defconfig (gcc-8): 2 warnings
    eseries_pxa_defconfig (gcc-8): 2 warnings
    exynos_defconfig (gcc-8): 18 warnings
    ezx_defconfig (gcc-8): 14 warnings
    h5000_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 14 warnings
    imx_v4_v5_defconfig (gcc-8): 18 warnings
    imx_v6_v7_defconfig (gcc-8): 14 warnings
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 2 warnings
    keystone_defconfig (gcc-8): 18 warnings
    lart_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 17 warnings
    mini2440_defconfig (gcc-8): 2 warnings
    mmp2_defconfig (gcc-8): 2 warnings
    moxart_defconfig (gcc-8): 13 warnings
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 17 warnings
    multi_v7_defconfig (gcc-8): 17 warnings
    multi_v7_defconfig (gcc-8): 17 warnings
    multi_v7_defconfig (gcc-8): 17 warnings
    multi_v7_defconfig (gcc-8): 2 warnings
    mv78xx0_defconfig (gcc-8): 18 warnings
    mvebu_v5_defconfig (gcc-8): 2 warnings
    mvebu_v7_defconfig (gcc-8): 17 warnings
    mxs_defconfig (gcc-8): 18 warnings
    nhk8815_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 17 warnings
    omap2plus_defconfig (gcc-8): 17 warnings
    orion5x_defconfig (gcc-8): 2 warnings
    oxnas_v6_defconfig (gcc-8): 17 warnings
    palmz72_defconfig (gcc-8): 2 warnings
    pcm027_defconfig (gcc-8): 2 warnings
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 error, 21 warnings
    qcom_defconfig (gcc-8): 18 warnings
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 2 warnings
    shmobile_defconfig (gcc-8): 15 warnings
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 19 warnings
    spear13xx_defconfig (gcc-8): 2 warnings
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 2 warnings
    tango4_defconfig (gcc-8): 2 warnings
    tegra_defconfig (gcc-8): 17 warnings
    trizeps4_defconfig (gcc-8): 2 warnings
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 2 warnings
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 17 warnings
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 2 warnings
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 2 warnings
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 16 warnings
    i386_defconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 1 warning
    32r2el_defconfig (gcc-8): 2 warnings
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    cavium_octeon_defconfig (gcc-8): 9 errors, 8 warnings
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    decstation_64_defconfig (gcc-8): 1 warning
    decstation_defconfig (gcc-8): 1 warning
    decstation_r4k_defconfig (gcc-8): 1 warning
    e55_defconfig (gcc-8): 1 warning
    fuloong2e_defconfig (gcc-8): 16 warnings
    gpr_defconfig (gcc-8): 15 warnings
    ip27_defconfig (gcc-8): 1 warning
    ip32_defconfig (gcc-8): 15 warnings
    jazz_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 15 warnings
    loongson1b_defconfig (gcc-8): 1 warning
    loongson1c_defconfig (gcc-8): 1 warning
    malta_kvm_defconfig (gcc-8): 16 warnings
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    markeins_defconfig (gcc-8): 1 warning
    mips_paravirt_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 15 warnings
    nlm_xlp_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 1 warning
    pistachio_defconfig (gcc-8): 19 warnings
    qi_lb60_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 warning

riscv:
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (gcc-8): 4 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 16 warnings
    x86_64_defconfig (gcc-8): 16 warnings

Errors summary:

    1    drivers/staging/octeon/ethernet.c:516:29: error: type of formal pa=
rameter 2 is incomplete
    1    drivers/staging/octeon/ethernet.c:499:30: error: storage size of '=
link_info' isn't known
    1    drivers/staging/octeon/ethernet.c:463:30: error: storage size of '=
link_info' isn't known
    1    drivers/staging/octeon/ethernet.c:177:21: error: dereferencing poi=
nter to incomplete type 'struct cvmx_wqe'
    1    drivers/staging/octeon/ethernet-mdio.c:84:30: error: storage size =
of 'link_info' isn't known
    1    drivers/staging/octeon/ethernet-mdio.c:68:34: error: parameter 2 (=
'li') has incomplete type
    1    drivers/staging/octeon/ethernet-mdio.c:127:30: error: type of form=
al parameter 2 is incomplete
    1    drivers/staging/octeon/ethernet-mdio.c:109:30: error: storage size=
 of 'link_info' isn't known
    1    drivers/staging/octeon/ethernet-mdio.c:101:30: error: type of form=
al parameter 2 is incomplete
    1    arch/arm/mach-pxa/icontrol.c:92:23: error: 'mcp251x_info' undeclar=
ed here (not in a function); did you mean 'mcp251x_board_info'?
    1    ERROR: "__aeabi_uldivmod" [drivers/md/dm-integrity.ko] undefined!

Warnings summary:

    558  kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined b=
ut not used [-Wunused-function]
    105  fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-=
variable]
    64   WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    20   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    16   1 warning generated.
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    6    2 warnings generated.
    5    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argu=
ment of type 'long unsigned int', but argument 5 has type 'unsigned int' [-=
Wformat=3D]
    5    3 warnings generated.
    4    drivers/vhost/vhost.c:2574:1: warning: no return statement in func=
tion returning non-void [-Wreturn-type]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    3    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration=
 type 'enum lru_list' to different enumeration type 'enum node_stat_item' [=
-Wenum-conversion]
    3    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration=
 type 'enum lru_list' to different enumeration type 'enum node_stat_item' [=
-Wenum-conversion]
    3    mm/vmscan.c:2216:39: warning: implicit conversion from enumeration=
 type 'enum lru_list' to different enumeration type 'enum node_stat_item' [=
-Wenum-conversion]
    2    security/integrity/platform_certs/load_uefi.c:17:19: warning: 'efi=
_cert_sha256_guid' defined but not used [-Wunused-variable]
    2    security/integrity/platform_certs/load_uefi.c:15:19: warning: 'efi=
_cert_x509_sha256_guid' defined but not used [-Wunused-variable]
    2    security/integrity/platform_certs/load_uefi.c:14:19: warning: 'efi=
_cert_x509_guid' defined but not used [-Wunused-variable]
    2    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cv=
mx_helper_link_info' declared inside parameter list will not be visible out=
side of this definition or declaration
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-=
Wunused-variable]
    1    security/integrity/platform_certs/load_uefi.c:17:19: warning: unus=
ed variable 'efi_cert_sha256_guid' [-Wunused-variable]
    1    security/integrity/platform_certs/load_uefi.c:15:19: warning: unus=
ed variable 'efi_cert_x509_sha256_guid' [-Wunused-variable]
    1    security/integrity/platform_certs/load_uefi.c:14:19: warning: unus=
ed variable 'efi_cert_x509_guid' [-Wunused-variable]
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    net/netfilter/nf_flow_table_offload.c:80:21: warning: unsigned con=
version from 'int' to '__be16' {aka 'short unsigned int'} changes value fro=
m '327680' to '0' [-Woverflow]
    1    net/netfilter/nf_flow_table_offload.c:290:2: warning: variable 'of=
fset' is used uninitialized whenever switch default is taken [-Wsometimes-u=
ninitialized]
    1    net/netfilter/nf_flow_table_offload.c:279:12: note: initialize the=
 variable 'offset' to silence this warning
    1    net/netfilter/nf_flow_table_offload.c:264:2: warning: variable 'of=
fset' is used uninitialized whenever switch default is taken [-Wsometimes-u=
ninitialized]
    1    net/netfilter/nf_flow_table_offload.c:253:12: note: initialize the=
 variable 'offset' to silence this warning
    1    mm/shmem.c:2741:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    include/linux/kern_levels.h:5:18: warning: format '%ld' expects ar=
gument of type 'long int', but argument 5 has type 'size_t' {aka 'unsigned =
int'} [-Wformat=3D]
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
    1    drivers/vhost/vhost.c:2574:1: warning: control reaches end of non-=
void function [-Wreturn-type]
    1    drivers/staging/octeon/ethernet.c:499:30: warning: unused variable=
 'link_info' [-Wunused-variable]
    1    drivers/staging/octeon/ethernet.c:463:30: warning: unused variable=
 'link_info' [-Wunused-variable]
    1    drivers/staging/octeon/ethernet-mdio.c:84:30: warning: unused vari=
able 'link_info' [-Wunused-variable]
    1    drivers/staging/octeon/ethernet-mdio.c:68:12: warning: 'union cvmx=
_helper_link_info' declared inside parameter list will not be visible outsi=
de of this definition or declaration
    1    drivers/staging/octeon/ethernet-mdio.c:109:30: warning: unused var=
iable 'link_info' [-Wunused-variable]
    1    drivers/scsi/lpfc/lpfc_sli.c:11909:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4726:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/net/usb/lan78xx.c:2665:34: warning: variable 'unlink_wakeu=
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
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:303=
:53: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:112=
:62: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:4=
1: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/bus/fsl-mc/fsl-mc-bus.c:720:37: warning: suggest braces ar=
ound initialization of subobject [-Wmissing-braces]
    1    drivers/bus/fsl-mc/fsl-mc-bus.c:719:37: warning: suggest braces ar=
ound initialization of subobject [-Wmissing-braces]
    1    drivers/bus/fsl-mc/fsl-mc-bus.c:718:43: warning: suggest braces ar=
ound initialization of subobject [-Wmissing-braces]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    1    /tmp/ccK3EySn.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccK3EySn.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1171:warning: override: UNWINDER_GUESS changes choice stat=
e

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
    1    WARNING: vmlinux.o(.text.unlikely+0x3980): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x363c): Section mismatch in ref=
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
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnin=
gs, 0 section mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 64 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
    1 warning generated.
    mm/shmem.c:2741:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    mm/vmscan.c:2216:39: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    3 warnings generated.
    security/integrity/platform_certs/load_uefi.c:14:19: warning: unused va=
riable 'efi_cert_x509_guid' [-Wunused-variable]
    security/integrity/platform_certs/load_uefi.c:15:19: warning: unused va=
riable 'efi_cert_x509_sha256_guid' [-Wunused-variable]
    security/integrity/platform_certs/load_uefi.c:17:19: warning: unused va=
riable 'efi_cert_sha256_guid' [-Wunused-variable]
    3 warnings generated.
    drivers/bus/fsl-mc/fsl-mc-bus.c:718:43: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    drivers/bus/fsl-mc/fsl-mc-bus.c:719:37: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    drivers/bus/fsl-mc/fsl-mc-bus.c:720:37: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    3 warnings generated.
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
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    net/netfilter/nf_flow_table_offload.c:264:2: warning: variable 'offset'=
 is used uninitialized whenever switch default is taken [-Wsometimes-uninit=
ialized]
    net/netfilter/nf_flow_table_offload.c:253:12: note: initialize the vari=
able 'offset' to silence this warning
    net/netfilter/nf_flow_table_offload.c:290:2: warning: variable 'offset'=
 is used uninitialized whenever switch default is taken [-Wsometimes-uninit=
ialized]
    net/netfilter/nf_flow_table_offload.c:279:12: note: initialize the vari=
able 'offset' to silence this warning
    2 warnings generated.
    drivers/net/usb/lan78xx.c:2665:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/scsi/lpfc/lpfc_sli.c:11909:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4726:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/vhost/vhost.c:2574:1: warning: control reaches end of non-void =
function [-Wreturn-type]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:112:62: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:303:53: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    security/integrity/platform_certs/load_uefi.c:17:19: warning: 'efi_cert=
_sha256_guid' defined but not used [-Wunused-variable]
    security/integrity/platform_certs/load_uefi.c:15:19: warning: 'efi_cert=
_x509_sha256_guid' defined but not used [-Wunused-variable]
    security/integrity/platform_certs/load_uefi.c:14:19: warning: 'efi_cert=
_x509_guid' defined but not used [-Wunused-variable]
    drivers/vhost/vhost.c:2574:1: warning: no return statement in function =
returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    security/integrity/platform_certs/load_uefi.c:17:19: warning: 'efi_cert=
_sha256_guid' defined but not used [-Wunused-variable]
    security/integrity/platform_certs/load_uefi.c:15:19: warning: 'efi_cert=
_x509_sha256_guid' defined but not used [-Wunused-variable]
    security/integrity/platform_certs/load_uefi.c:14:19: warning: 'efi_cert=
_x509_guid' defined but not used [-Wunused-variable]
    drivers/vhost/vhost.c:2574:1: warning: no return statement in function =
returning non-void [-Wreturn-type]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 20 warnings, 0 section m=
ismatches

Errors:
    ERROR: "__aeabi_uldivmod" [drivers/md/dm-integrity.ko] undefined!

Warnings:
    /tmp/ccK3EySn.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccK3EySn.s:18191: Warning: using r15 results in unpredictable beha=
viour
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]
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
    net/netfilter/nf_flow_table_offload.c:80:21: warning: unsigned conversi=
on from 'int' to '__be16' {aka 'short unsigned int'} changes value from '32=
7680' to '0' [-Woverflow]
    drivers/vhost/vhost.c:2574:1: warning: no return statement in function =
returning non-void [-Wreturn-type]
    include/linux/kern_levels.h:5:18: warning: format '%ld' expects argumen=
t of type 'long int', but argument 5 has type 'size_t' {aka 'unsigned int'}=
 [-Wformat=3D]

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
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    mm/vmscan.c:2216:39: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    3 warnings generated.

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

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
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
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
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

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
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 9 errors, 8 warnings,=
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
    drivers/staging/octeon/ethernet-mdio.c:68:34: error: parameter 2 ('li')=
 has incomplete type
    drivers/staging/octeon/ethernet-mdio.c:84:30: error: storage size of 'l=
ink_info' isn't known
    drivers/staging/octeon/ethernet-mdio.c:101:30: error: type of formal pa=
rameter 2 is incomplete
    drivers/staging/octeon/ethernet-mdio.c:109:30: error: storage size of '=
link_info' isn't known
    drivers/staging/octeon/ethernet-mdio.c:127:30: error: type of formal pa=
rameter 2 is incomplete

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_he=
lper_link_info' declared inside parameter list will not be visible outside =
of this definition or declaration
    drivers/staging/octeon/ethernet.c:463:30: warning: unused variable 'lin=
k_info' [-Wunused-variable]
    drivers/staging/octeon/ethernet.c:499:30: warning: unused variable 'lin=
k_info' [-Wunused-variable]
    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_he=
lper_link_info' declared inside parameter list will not be visible outside =
of this definition or declaration
    drivers/staging/octeon/ethernet-mdio.c:68:12: warning: 'union cvmx_help=
er_link_info' declared inside parameter list will not be visible outside of=
 this definition or declaration
    drivers/staging/octeon/ethernet-mdio.c:84:30: warning: unused variable =
'link_info' [-Wunused-variable]
    drivers/staging/octeon/ethernet-mdio.c:109:30: warning: unused variable=
 'link_info' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
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
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3980): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x363c): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section =
mismatches

Warnings:
    mm/vmscan.c:2216:39: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration type=
 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenu=
m-conversion]
    3 warnings generated.

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
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 section=
 mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 =
section mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

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
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sectio=
n mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

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
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 se=
ction mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
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
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 =
section mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    drivers/vhost/vhost.c:2574:1: warning: no return statement in function =
returning non-void [-Wreturn-type]

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
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings,=
 0 section mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 13 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

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
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 17 warnings, 0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 17 warnings, 0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17=
 warnings, 0 section mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warni=
ngs, 0 section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
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
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 secti=
on mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 =
section mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

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
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
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
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 21 warnings, 0 section =
mismatches

Errors:
    arch/arm/mach-pxa/icontrol.c:92:23: error: 'mcp251x_info' undeclared he=
re (not in a function); did you mean 'mcp251x_board_info'?

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sectio=
n mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

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
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

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
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
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
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

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
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 se=
ction mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

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
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1171:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 se=
ction mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 s=
ection mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 16 war=
nings, 0 section mismatches

Warnings:
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]
    kernel/trace/trace.h:804:13: warning: 'latency_fsnotify' defined but no=
t used [-Wunused-function]

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
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    fs/ext4/super.c:2068:23: warning: unused variable 'sbi' [-Wunused-varia=
ble]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5dcec683.1c69fb81.96146.988a%40mx.google.com.
