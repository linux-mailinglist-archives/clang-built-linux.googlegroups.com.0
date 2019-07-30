Return-Path: <clang-built-linux+bncBDT6TV45WMPRBWUIQDVAKGQECTAKKFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DFF7A358
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 10:48:26 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id z20sf39938068edr.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 01:48:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564476506; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPVxfGZiq6G7fNdIwxJsa3NUhSsfggCgKRhatPk3CO773agSXdqJFAkeqY8339cB2d
         rVC7lRYIe7bPdtHiFAOprJLpgqivRppoH3wU8N90XU7QZfsSkxaziKPYGlz7f4wpS2OD
         WkwKY32rvWm5PC4eBgQpA9A9oA3Ap5nqN/iC6WEnceGVqRLVMB8xHmYaN+FkbPLY7UA+
         l0eP2GYsNlUiQuVm2G2FBq8s+5CF5ugV+/YVZT2AwIJ4QsFwPNn7wq5fvBGetzCq17wT
         fPTIz357o//AucgBij1HHftsdFzzzbq/cL0eNt0cLy5NMTWO+3FTtNUruW/jdhPgMeFf
         1b+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=PHYeAVlV2ZaqPOmczMzv9B+b26kcNhWBmsR6H2fLSl4=;
        b=t9GOZqDXkinuFynxdrnQttLbakPjxLEroVqUbrfhP7g9rpfcza3UZkcQix995eJBb7
         wIaoATRFk1Cji/lXqS5Cit+dHHY5HbbX7+OgUXUkHVKTz14wo1zetRAI+gz3wwIe8yC1
         3nX+fofa6jnfdrxHGTeEnIfGJizVlbZhHjxTZ0wVuyZWr/zvPHdp4rXmSKBI54jBsgFO
         /1IaiTTGEGT8/RL4oRmCN1Q/DoXdJ+dT0/gdemYUT5B5K+JpNIbvr7IUUgHGJBD6NjZY
         hE+zAflSsSjOmLd+9T1OnJwI/oRH12yGU2tgLyqtmb1ZaDEpArJFEfRerbIBiNdlMSjm
         5jtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=jgblOb4Q;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PHYeAVlV2ZaqPOmczMzv9B+b26kcNhWBmsR6H2fLSl4=;
        b=NST4P871w+8/lMB64Hh29PA+ShRDepydakV8++oPpZYozBMqc9p04klY/LZhLM2V77
         ty4Xyb/4eS8G2tnt+qzhZE4n9RU/9SML9nDv0nHUTi3k4qbyxg9WW8LCDJX1ZqrMf77d
         TyfbvUQFXiaIzrtaey1P8YLHHG+XPqQtqi7DIJnb2tNky/QoL67Nw5aJxgg31v5vs8Q3
         YYZKbraTrO2jINo3jokSdMWCqyBRB4c7fhx0w4HvH5GSlv8Sc+YmRIuAPsRzz8we/aF8
         gK+gDi/mi+/3rrCcr+xQDC8PCgHlwBxUOydPQlft83+LuOo70ygBmtzy3j2FP1+pFyQZ
         CEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PHYeAVlV2ZaqPOmczMzv9B+b26kcNhWBmsR6H2fLSl4=;
        b=XdI2Iq2SWgTyacmIJCZH/xWICpm3s4YT8uhD2jIZJMAzh0XG1aEZ+t45tgDzhhqQ0H
         8bgDWt9VXb+IZVJgt+kzUVU7ZxabBxC8nZ2WtmOiMK5vsVLxzv7Cvm0/VrTjgAnOVGL6
         BzQqYEzXJ9W3REl8g42NMEganJ9KbND+lx6T30fKgxA3wUCbanmn2cnAh8Mwxa8FNFLK
         CuUzgDU9z092AYljyvNBUVITkhjnE8v38Jkb3XndSPWrsGRiToY/fS5yLJh5efYOjUAD
         fSIybyVYlJRyCwDwuDln4FqLq57kMvMvBJ2UQoPiyPgy6hElKAB1PckXrLelKMHIUcq/
         uxSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvQIBuO/IXL5UV2ftLiHBDPq10HwQsXJsGYVJNtmps3sEjXqFV
	bJ0qBKGiM/X/HojKkMvEPAQ=
X-Google-Smtp-Source: APXvYqyt+vsm+L5nwzT6dPVlVvCdiwm5CRZd/2DY9jdJroeu84u/tobqOk4Wbp7hZM6AzeLJB0x6Xw==
X-Received: by 2002:aa7:df8b:: with SMTP id b11mr48980661edy.6.1564476506281;
        Tue, 30 Jul 2019 01:48:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:b61d:: with SMTP id b29ls15023986ede.8.gmail; Tue, 30
 Jul 2019 01:48:25 -0700 (PDT)
X-Received: by 2002:a50:9116:: with SMTP id e22mr101235624eda.161.1564476505638;
        Tue, 30 Jul 2019 01:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564476505; cv=none;
        d=google.com; s=arc-20160816;
        b=enal1+twg9f7clbwTIz39IQNqW0vhx/OqyeC0NNY7oAoUPEzgRXUHS5BehXPOouXyq
         3hW5A7BAiz5eyp8w3mlz1b3fyIRuhAW1xM374kf7OXHob/r0RDiV6Fpk9AxT2EQMloTn
         fuB2pTQK5W9KRhb7HOtBzP3odkNFXnAMgmFUgXrlZ8B2KR24HSD4fpEFrlsgb5B8vmhr
         /O/4+uEDoFXb3ETK27lq4N1rhT54WpV6KXnfWaZtWqAzhSfAy73fFUPh1zkExuHADSH7
         VNADiLCcvXintWmVhHMRFN92qySgU0rakCdz+BpStby/yn4V5YCG9qaj3eYyBRsspC4s
         +6iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=utS9qBGw3uUVKlEEwYeqMNtBP97MrPx5xtxrjp+S/Jg=;
        b=cgRuPwbm5XI95+0c2GphbWZGNxkjHJB+UiJLDgzQQrJnBB2/a1b0F1jnu6raLp8bHz
         Nj09sAFne455hLjLz+5UBNp3jJc8QlMPXir8jkTjro4Ks0vVJHY7T/MN7LVv4ok3I4Hw
         PY9zj+LqaUb06YXP3IJWmyzUWyGhj2kXD+X7DF5VPdPMOfU0NhDR7ozDBS+CfKqtU2+l
         kE8VKjfnN1IibhOcEWRJb7/SfcsJBv0HRegBaAomND8mU/XdCC/HKXAfdzAfukEgH19M
         +VA8u2WyKx9Ov8NRfcOggxhKOoC9SMSWAjmbpMFg65w+wHVqJvfROgBEhVkk/wOI5Zt9
         Qklg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=jgblOb4Q;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id jz14si2803671ejb.0.2019.07.30.01.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 01:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Received: by mail-wr1-x42e.google.com with SMTP id 31so64840651wrm.1
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 01:48:25 -0700 (PDT)
X-Received: by 2002:a5d:5450:: with SMTP id w16mr78445897wrv.128.1564476503446;
        Tue, 30 Jul 2019 01:48:23 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id u2sm55604088wmc.3.2019.07.30.01.48.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 01:48:22 -0700 (PDT)
Message-ID: <5d400456.1c69fb81.74c54.3d8b@mx.google.com>
Date: Tue, 30 Jul 2019 01:48:22 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20190730
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
Subject: next/master build: 230 builds: 73 failed, 157 passed, 73 errors,
 2498 warnings (next-20190730)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=jgblOb4Q;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 230 builds: 73 failed, 157 passed, 73 errors, 2498 warni=
ngs (next-20190730)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190730/

Tree: next
Branch: master
Git Describe: next-20190730
Git Commit: 70f4b4ac1655dffd33cb38f369b31bdecc588daa
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm:
    acs5k_defconfig: (gcc-8) FAIL
    acs5k_tiny_defconfig: (gcc-8) FAIL
    allmodconfig: (gcc-8) FAIL
    am200epdkit_defconfig: (gcc-8) FAIL
    assabet_defconfig: (gcc-8) FAIL
    badge4_defconfig: (gcc-8) FAIL
    cerfcube_defconfig: (gcc-8) FAIL
    cm_x2xx_defconfig: (gcc-8) FAIL
    cm_x300_defconfig: (gcc-8) FAIL
    colibri_pxa270_defconfig: (gcc-8) FAIL
    colibri_pxa300_defconfig: (gcc-8) FAIL
    collie_defconfig: (gcc-8) FAIL
    corgi_defconfig: (gcc-8) FAIL
    dove_defconfig: (gcc-8) FAIL
    em_x270_defconfig: (gcc-8) FAIL
    ep93xx_defconfig: (gcc-8) FAIL
    eseries_pxa_defconfig: (gcc-8) FAIL
    ezx_defconfig: (gcc-8) FAIL
    h3600_defconfig: (gcc-8) FAIL
    h5000_defconfig: (gcc-8) FAIL
    hackkit_defconfig: (gcc-8) FAIL
    imote2_defconfig: (gcc-8) FAIL
    iop32x_defconfig: (gcc-8) FAIL
    iop33x_defconfig: (gcc-8) FAIL
    jornada720_defconfig: (gcc-8) FAIL
    ks8695_defconfig: (gcc-8) FAIL
    lart_defconfig: (gcc-8) FAIL
    lpd270_defconfig: (gcc-8) FAIL
    lubbock_defconfig: (gcc-8) FAIL
    magician_defconfig: (gcc-8) FAIL
    mainstone_defconfig: (gcc-8) FAIL
    neponset_defconfig: (gcc-8) FAIL
    nuc910_defconfig: (gcc-8) FAIL
    nuc950_defconfig: (gcc-8) FAIL
    nuc960_defconfig: (gcc-8) FAIL
    omap1_defconfig: (gcc-8) FAIL
    palmz72_defconfig: (gcc-8) FAIL
    pcm027_defconfig: (gcc-8) FAIL
    pleb_defconfig: (gcc-8) FAIL
    pxa255-idp_defconfig: (gcc-8) FAIL
    pxa3xx_defconfig: (gcc-8) FAIL
    pxa_defconfig: (gcc-8) FAIL
    shannon_defconfig: (gcc-8) FAIL
    simpad_defconfig: (gcc-8) FAIL
    spitz_defconfig: (gcc-8) FAIL
    trizeps4_defconfig: (gcc-8) FAIL
    viper_defconfig: (gcc-8) FAIL
    xcep_defconfig: (gcc-8) FAIL
    zeus_defconfig: (gcc-8) FAIL

i386:
    i386_defconfig+kselftest: (gcc-8) FAIL

mips:
    ar7_defconfig: (gcc-8) FAIL
    bcm47xx_defconfig: (gcc-8) FAIL
    bcm63xx_defconfig: (gcc-8) FAIL
    capcella_defconfig: (gcc-8) FAIL
    cavium_octeon_defconfig: (gcc-8) FAIL
    db1xxx_defconfig: (gcc-8) FAIL
    e55_defconfig: (gcc-8) FAIL
    fuloong2e_defconfig: (gcc-8) FAIL
    gpr_defconfig: (gcc-8) FAIL
    jmr3927_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL
    loongson1b_defconfig: (gcc-8) FAIL
    loongson1c_defconfig: (gcc-8) FAIL
    loongson3_defconfig: (gcc-8) FAIL
    mpc30x_defconfig: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL
    rb532_defconfig: (gcc-8) FAIL
    rbtx49xx_defconfig: (gcc-8) FAIL
    tb0219_defconfig: (gcc-8) FAIL
    tb0226_defconfig: (gcc-8) FAIL
    tb0287_defconfig: (gcc-8) FAIL
    workpad_defconfig: (gcc-8) FAIL

x86_64:
    x86_64_defconfig+kselftest: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 22 warnings
    axs103_smp_defconfig (gcc-8): 22 warnings
    haps_hs_defconfig (gcc-8): 22 warnings
    haps_hs_smp_defconfig (gcc-8): 22 warnings
    hsdk_defconfig (gcc-8): 22 warnings
    nsim_hs_defconfig (gcc-8): 22 warnings
    nsim_hs_defconfig (gcc-8): 24 warnings
    nsim_hs_smp_defconfig (gcc-8): 22 warnings
    nsimosci_hs_defconfig (gcc-8): 22 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 22 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 4 warnings
    vdk_hs38_smp_defconfig (gcc-8): 4 warnings

arm64:
    allmodconfig (clang-8): 58 warnings
    allmodconfig (gcc-8): 166 warnings
    allnoconfig (gcc-8): 4 warnings
    defconfig (gcc-8): 151 warnings
    defconfig (clang-8): 7 warnings
    defconfig (gcc-8): 151 warnings
    defconfig (clang-8): 7 warnings
    defconfig (gcc-8): 151 warnings
    defconfig (clang-8): 7 warnings
    defconfig (clang-8): 7 warnings
    defconfig (gcc-8): 153 warnings
    tinyconfig (gcc-8): 4 warnings

arm:
    acs5k_defconfig (gcc-8): 1 error, 4 warnings
    acs5k_tiny_defconfig (gcc-8): 1 error, 4 warnings
    allmodconfig (gcc-8): 1 error, 48 warnings
    am200epdkit_defconfig (gcc-8): 1 error, 9 warnings
    assabet_defconfig (gcc-8): 1 error, 10 warnings
    at91_dt_defconfig (gcc-8): 4 warnings
    axm55xx_defconfig (gcc-8): 15 warnings
    badge4_defconfig (gcc-8): 1 error, 10 warnings
    bcm2835_defconfig (gcc-8): 3 warnings
    cerfcube_defconfig (gcc-8): 1 error, 10 warnings
    cm_x2xx_defconfig (gcc-8): 1 error, 9 warnings
    cm_x300_defconfig (gcc-8): 1 error, 9 warnings
    cns3420vb_defconfig (gcc-8): 3 warnings
    colibri_pxa270_defconfig (gcc-8): 1 error, 9 warnings
    colibri_pxa300_defconfig (gcc-8): 1 error, 9 warnings
    collie_defconfig (gcc-8): 1 error, 2 warnings
    corgi_defconfig (gcc-8): 1 error, 8 warnings
    davinci_all_defconfig (gcc-8): 20 warnings
    dove_defconfig (gcc-8): 1 error, 2 warnings
    ebsa110_defconfig (gcc-8): 15 warnings
    em_x270_defconfig (gcc-8): 1 error, 9 warnings
    ep93xx_defconfig (gcc-8): 1 error, 5 warnings
    eseries_pxa_defconfig (gcc-8): 1 error, 9 warnings
    exynos_defconfig (gcc-8): 5 warnings
    ezx_defconfig (gcc-8): 1 error, 10 warnings
    footbridge_defconfig (gcc-8): 17 warnings
    h3600_defconfig (gcc-8): 1 error, 10 warnings
    h5000_defconfig (gcc-8): 1 error, 9 warnings
    hackkit_defconfig (gcc-8): 1 error, 8 warnings
    imote2_defconfig (gcc-8): 1 error, 10 warnings
    imx_v4_v5_defconfig (gcc-8): 17 warnings
    imx_v6_v7_defconfig (gcc-8): 21 warnings
    integrator_defconfig (gcc-8): 3 warnings
    iop13xx_defconfig (gcc-8): 15 warnings
    iop32x_defconfig (gcc-8): 1 error, 8 warnings
    iop33x_defconfig (gcc-8): 1 error, 8 warnings
    ixp4xx_defconfig (gcc-8): 17 warnings
    jornada720_defconfig (gcc-8): 1 error, 8 warnings
    keystone_defconfig (gcc-8): 7 warnings
    ks8695_defconfig (gcc-8): 1 error, 4 warnings
    lart_defconfig (gcc-8): 1 error, 8 warnings
    lpc32xx_defconfig (gcc-8): 18 warnings
    lpd270_defconfig (gcc-8): 1 error, 8 warnings
    lubbock_defconfig (gcc-8): 1 error, 8 warnings
    magician_defconfig (gcc-8): 1 error, 9 warnings
    mainstone_defconfig (gcc-8): 1 error, 8 warnings
    milbeaut_m10v_defconfig (gcc-8): 5 warnings
    mini2440_defconfig (gcc-8): 9 warnings
    mmp2_defconfig (gcc-8): 3 warnings
    multi_v5_defconfig (gcc-8): 6 warnings
    multi_v7_defconfig (gcc-8): 29 warnings
    multi_v7_defconfig (gcc-8): 29 warnings
    multi_v7_defconfig (gcc-8): 29 warnings
    multi_v7_defconfig (gcc-8): 29 warnings
    multi_v7_defconfig (gcc-8): 27 warnings
    mv78xx0_defconfig (gcc-8): 9 warnings
    mvebu_v5_defconfig (gcc-8): 9 warnings
    mvebu_v7_defconfig (gcc-8): 7 warnings
    mxs_defconfig (gcc-8): 19 warnings
    neponset_defconfig (gcc-8): 1 error, 10 warnings
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 17 warnings
    nuc910_defconfig (gcc-8): 1 error
    nuc950_defconfig (gcc-8): 1 error
    nuc960_defconfig (gcc-8): 1 error
    omap1_defconfig (gcc-8): 1 error, 11 warnings
    omap2plus_defconfig (gcc-8): 15 warnings
    orion5x_defconfig (gcc-8): 7 warnings
    oxnas_v6_defconfig (gcc-8): 5 warnings
    palmz72_defconfig (gcc-8): 1 error, 9 warnings
    pcm027_defconfig (gcc-8): 1 error, 9 warnings
    pleb_defconfig (gcc-8): 1 error, 10 warnings
    prima2_defconfig (gcc-8): 3 warnings
    pxa168_defconfig (gcc-8): 3 warnings
    pxa255-idp_defconfig (gcc-8): 1 error, 8 warnings
    pxa3xx_defconfig (gcc-8): 1 error, 9 warnings
    pxa910_defconfig (gcc-8): 3 warnings
    pxa_defconfig (gcc-8): 1 error, 2 warnings
    qcom_defconfig (gcc-8): 12 warnings
    realview_defconfig (gcc-8): 3 warnings
    rpc_defconfig (gcc-8): 27 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 15 warnings
    s5pv210_defconfig (gcc-8): 3 warnings
    sama5_defconfig (gcc-8): 4 warnings
    shannon_defconfig (gcc-8): 1 error, 10 warnings
    shmobile_defconfig (gcc-8): 2 warnings
    simpad_defconfig (gcc-8): 1 error, 10 warnings
    socfpga_defconfig (gcc-8): 3 warnings
    spear13xx_defconfig (gcc-8): 5 warnings
    spear3xx_defconfig (gcc-8): 15 warnings
    spear6xx_defconfig (gcc-8): 15 warnings
    spitz_defconfig (gcc-8): 1 error, 8 warnings
    sunxi_defconfig (gcc-8): 7 warnings
    tango4_defconfig (gcc-8): 3 warnings
    tct_hammer_defconfig (gcc-8): 7 warnings
    tegra_defconfig (gcc-8): 7 warnings
    trizeps4_defconfig (gcc-8): 1 error, 9 warnings
    u300_defconfig (gcc-8): 17 warnings
    u8500_defconfig (gcc-8): 9 warnings
    versatile_defconfig (gcc-8): 17 warnings
    vexpress_defconfig (gcc-8): 5 warnings
    viper_defconfig (gcc-8): 1 error, 9 warnings
    xcep_defconfig (gcc-8): 1 error, 9 warnings
    zeus_defconfig (gcc-8): 1 error, 9 warnings

i386:
    allnoconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 13 warnings
    i386_defconfig (gcc-8): 1 error, 8 warnings
    tinyconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 5 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 1 error, 2 warnings
    ath25_defconfig (gcc-8): 3 warnings
    ath79_defconfig (gcc-8): 3 warnings
    bcm47xx_defconfig (gcc-8): 1 error, 2 warnings
    bcm63xx_defconfig (gcc-8): 1 error, 2 warnings
    bigsur_defconfig (gcc-8): 7 warnings
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 error, 2 warnings
    cavium_octeon_defconfig (gcc-8): 1 error, 3 warnings
    ci20_defconfig (gcc-8): 2 warnings
    cobalt_defconfig (gcc-8): 3 warnings
    db1xxx_defconfig (gcc-8): 1 error, 4 warnings
    decstation_64_defconfig (gcc-8): 9 warnings
    decstation_defconfig (gcc-8): 5 warnings
    decstation_r4k_defconfig (gcc-8): 5 warnings
    e55_defconfig (gcc-8): 1 error, 2 warnings
    fuloong2e_defconfig (gcc-8): 1 error, 3 warnings
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 1 error, 4 warnings
    ip22_defconfig (gcc-8): 3 warnings
    ip27_defconfig (gcc-8): 8 warnings
    ip28_defconfig (gcc-8): 7 warnings
    ip32_defconfig (gcc-8): 11 warnings
    jazz_defconfig (gcc-8): 3 warnings
    jmr3927_defconfig (gcc-8): 1 error, 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 1 error, 3 warnings
    loongson1b_defconfig (gcc-8): 1 error, 2 warnings
    loongson1c_defconfig (gcc-8): 1 error, 2 warnings
    loongson3_defconfig (gcc-8): 1 error, 3 warnings
    malta_defconfig (gcc-8): 3 warnings
    malta_kvm_defconfig (gcc-8): 6 warnings
    malta_kvm_guest_defconfig (gcc-8): 3 warnings
    malta_qemu_32r6_defconfig (gcc-8): 5 warnings
    maltaaprp_defconfig (gcc-8): 3 warnings
    maltasmvp_defconfig (gcc-8): 3 warnings
    maltasmvp_eva_defconfig (gcc-8): 3 warnings
    maltaup_defconfig (gcc-8): 3 warnings
    maltaup_xpa_defconfig (gcc-8): 3 warnings
    markeins_defconfig (gcc-8): 4 warnings
    mips_paravirt_defconfig (gcc-8): 7 warnings
    mpc30x_defconfig (gcc-8): 1 error, 2 warnings
    msp71xx_defconfig (gcc-8): 3 warnings
    mtx1_defconfig (gcc-8): 1 error, 19 warnings
    nlm_xlp_defconfig (gcc-8): 14 warnings
    nlm_xlr_defconfig (gcc-8): 7 warnings
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 3 warnings
    pistachio_defconfig (gcc-8): 6 warnings
    pnx8335_stb225_defconfig (gcc-8): 3 warnings
    qi_lb60_defconfig (gcc-8): 5 warnings
    rb532_defconfig (gcc-8): 1 error, 3 warnings
    rbtx49xx_defconfig (gcc-8): 1 error, 2 warnings
    rm200_defconfig (gcc-8): 4 warnings
    rt305x_defconfig (gcc-8): 3 warnings
    sb1250_swarm_defconfig (gcc-8): 5 warnings
    tb0219_defconfig (gcc-8): 1 error, 2 warnings
    tb0226_defconfig (gcc-8): 1 error, 3 warnings
    tb0287_defconfig (gcc-8): 1 error, 2 warnings
    tinyconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 error, 2 warnings
    xway_defconfig (gcc-8): 3 warnings

riscv:
    defconfig (gcc-8): 10 warnings
    defconfig (gcc-8): 16 warnings
    rv32_defconfig (gcc-8): 16 warnings

x86_64:
    allmodconfig (gcc-8): 27 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 13 warnings
    x86_64_defconfig (gcc-8): 1 error, 5 warnings

Errors summary:

    16   gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_=
from_of_node'
    15   gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_=
from_of_node'
    7    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_=
from_of_node'
    7    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'
    4    include/linux/page-flags-layout.h:95:2: error: #error "Not enough =
bits in page flags"
    3    gpiolib-devres.c:(.text+0x1e8): undefined reference to `gpiod_get_=
from_of_node'
    3    gpiolib-devres.c:(.text+0x18c): undefined reference to `gpiod_get_=
from_of_node'
    3    /home/buildslave/workspace/kernel-build/linux/build/../drivers/gpi=
o/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_node'
    2    /home/buildslave/workspace/workspace/kernel-build@10/linux/build/.=
./drivers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from=
_of_node'
    2    /home/buildslave/workspace/workspace/kernel-build/linux/build/../d=
rivers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of=
_node'
    2    (.text+0x1b0): undefined reference to `gpiod_get_from_of_node'
    1    gpiolib-devres.c:(.text+0x1ea): undefined reference to `gpiod_get_=
from_of_node'
    1    gpiolib-devres.c:(.text+0x1d8): undefined reference to `gpiod_get_=
from_of_node'
    1    gpiolib-devres.c:(.text+0x1bf): undefined reference to `gpiod_get_=
from_of_node'
    1    drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration =
of function 'writeq'; did you mean 'writel'? [-Werror=3Dimplicit-function-d=
eclaration]
    1    /home/buildslave/workspace/workspace/kernel-build@8/linux/build/..=
/drivers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_=
of_node'
    1    /home/buildslave/workspace/workspace/kernel-build@6/linux/build/..=
/drivers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_=
of_node'
    1    /home/buildslave/workspace/workspace/kernel-build@2/linux/build/..=
/drivers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_=
of_node'
    1    /home/buildslave/workspace/kernel-build@2/linux/build/../drivers/g=
pio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_node'
    1    (.text+0x1e8): undefined reference to `gpiod_get_from_of_node'

Warnings summary:

    315  arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    175  WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    169  <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    110  WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GP=
L
    84   WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYM=
BOL_GPL
    64   WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_=
GPL
    29   WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    29   WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    28   arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    28   arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    25   WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static E=
XPORT_SYMBOL
    25   WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXP=
ORT_SYMBOL
    25   WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static E=
XPORT_SYMBOL
    25   WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXP=
ORT_SYMBOL
    25   WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPO=
RT_SYMBOL
    25   WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_S=
YMBOL
    25   WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EX=
PORT_SYMBOL
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
    20   WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    20   WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_S=
YMBOL_GPL
    17   WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXP=
ORT_SYMBOL
    17   WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPOR=
T_SYMBOL
    17   WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXP=
ORT_SYMBOL
    17   WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPOR=
T_SYMBOL
    17   WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT=
_SYMBOL
    16   WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    16   WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_S=
YMBOL
    16   WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EX=
PORT_SYMBOL
    16   WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static E=
XPORT_SYMBOL
    16   WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXP=
ORT_SYMBOL
    16   WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static E=
XPORT_SYMBOL
    16   WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXP=
ORT_SYMBOL
    16   WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPO=
RT_SYMBOL
    15   1 warning generated.
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
    12   drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    12   arch/arc/kernel/unwind.c:836:20: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    12   arch/arc/kernel/unwind.c:827:20: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    12   WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBO=
L_GPL
    11   drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    11   WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    11   WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_S=
YMBOL
    11   WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EX=
PORT_SYMBOL
    10   WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the s=
tatic EXPORT_SYMBOL
    9    printk(KERN_WARNING "SA1100 flash: unknown base address "
    9    include/linux/printk.h:309:2: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    9    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    8    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statem=
ent may fall through [-Wimplicit-fallthrough=3D]
    8    drivers/dma/imx-dma.c:542:6: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    7    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    7    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    7    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    6    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    6    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    6    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    6    arch/arm/include/asm/io.h:92:22: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    6    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SY=
MBOL
    6    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXP=
ORT_SYMBOL
    6    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT=
_SYMBOL
    6    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static =
EXPORT_SYMBOL
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
    5    WARNING: "xsc3_flush_user_cache_range" [vmlinux] is the static EXP=
ORT_SYMBOL
    5    WARNING: "xsc3_flush_user_cache_all" [vmlinux] is the static EXPOR=
T_SYMBOL
    5    WARNING: "xsc3_flush_kern_dcache_area" [vmlinux] is the static EXP=
ORT_SYMBOL
    5    WARNING: "xsc3_flush_kern_cache_all" [vmlinux] is the static EXPOR=
T_SYMBOL
    5    WARNING: "xsc3_coherent_kern_range" [vmlinux] is the static EXPORT=
_SYMBOL
    5    WARNING: "imx_ssi_fiq_tx_buffer" [vmlinux] is the static EXPORT_SY=
MBOL
    5    WARNING: "imx_ssi_fiq_start" [vmlinux] is the static EXPORT_SYMBOL
    5    WARNING: "imx_ssi_fiq_rx_buffer" [vmlinux] is the static EXPORT_SY=
MBOL
    5    WARNING: "imx_ssi_fiq_end" [vmlinux] is the static EXPORT_SYMBOL
    5    WARNING: "imx_ssi_fiq_base" [vmlinux] is the static EXPORT_SYMBOL
    5    WARNING: "cpu_xsc3_set_pte_ext" [vmlinux] is the static EXPORT_SYM=
BOL
    5    WARNING: "cpu_xsc3_dcache_clean_area" [vmlinux] is the static EXPO=
RT_SYMBOL
    5    WARNING: "cpu_arm920_set_pte_ext" [vmlinux] is the static EXPORT_S=
YMBOL
    5    WARNING: "cpu_arm920_dcache_clean_area" [vmlinux] is the static EX=
PORT_SYMBOL
    5    WARNING: "ahci_em_messages" [drivers/ata/libahci] is the static EX=
PORT_SYMBOL_GPL
    5    2 warnings generated.
    4    lib/rbtree_test.c:220:18: warning: unused variable 'rb' [-Wunused-=
variable]
    4    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    4    WARNING: "torture_shuffle_cleanup" [kernel/torture] is the static =
EXPORT_SYMBOL_GPL
    4    WARNING: "torture_onoff_cleanup" [kernel/torture] is the static EX=
PORT_SYMBOL_GPL
    4    WARNING: "omap_dma_filter_fn" [drivers/dma/ti/omap-dma] is the sta=
tic EXPORT_SYMBOL_GPL
    4    WARNING: "edma_filter_fn" [drivers/dma/ti/edma] is the static EXPO=
RT_SYMBOL
    3    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    3    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    3    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    3    drivers/infiniband/sw/siw/siw_mem.c:66:16: warning: unused variabl=
e 'p' [-Wunused-variable]
    3    arch/mips/oprofile/op_model_mipsxx.c:242:6: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    3    WARNING: "hypercall_page" [vmlinux] is the static EXPORT_SYMBOL_GP=
L
    3    WARNING: "cpu_arm922_set_pte_ext" [vmlinux] is the static EXPORT_S=
YMBOL
    3    WARNING: "cpu_arm922_dcache_clean_area" [vmlinux] is the static EX=
PORT_SYMBOL
    3    WARNING: "_mcount" [vmlinux] is the static EXPORT_SYMBOL
    2    sound/soc/ti/rx51.c:57:6: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
    2    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    2    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret=
' [-Wunused-variable]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/hsi/clients/ssi_protocol.c:467:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/hsi/clients/ssi_protocol.c:292:6: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x36: redundant UACCESS disable
    2    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    2    drivers/crypto/ux500/cryp/cryp.c:324:16: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    2    drivers/crypto/ux500/cryp/cryp.c:320:16: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    2    drivers/crypto/ux500/cryp/cryp.c:316:16: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    2    drivers/cpufreq/ti-cpufreq.c:79:20: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    WARNING: "v6_flush_user_cache_range" [vmlinux] is the static EXPOR=
T_SYMBOL
    2    WARNING: "v6_flush_user_cache_all" [vmlinux] is the static EXPORT_=
SYMBOL
    2    WARNING: "v6_flush_kern_dcache_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    2    WARNING: "v6_flush_kern_cache_all" [vmlinux] is the static EXPORT_=
SYMBOL
    2    WARNING: "cpu_v6_set_pte_ext" [vmlinux] is the static EXPORT_SYMBO=
L
    2    WARNING: "cpu_v6_dcache_clean_area" [vmlinux] is the static EXPORT=
_SYMBOL
    2    WARNING: "__raw_writesw" [vmlinux] is the static EXPORT_SYMBOL
    2    WARNING: "__raw_readsw" [vmlinux] is the static EXPORT_SYMBOL
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    {standard input}:131: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/ti/n810.c:48:10: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
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
    1    drivers/scsi/lpfc/lpfc_sli.c:11850:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4559:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
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
    1    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x1c: redundant UACCESS disable
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c=
:422:14: warning: implicit conversion from enumeration type 'enum amd_pp_cl=
ock_type' to different enumeration type 'enum smu_clk_type' [-Wenum-convers=
ion]
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c=
:337:8: warning: implicit conversion from enumeration type 'enum smu_clk_ty=
pe' to different enumeration type 'enum amd_pp_clock_type' [-Wenum-conversi=
on]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info=
' [-Wunused-variable]
    1    cc1: some warnings being treated as errors
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
    1    WARNING: unmet direct dependencies detected for MDIO_OCTEON
    1    WARNING: "__fentry__" [vmlinux] is the static EXPORT_SYMBOL
    1    /tmp/cc0Azu42.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc0Azu42.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1177:warning: override: UNWINDER_GUESS changes choice stat=
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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
acs5k_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 section=
 mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm922_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm922_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
acs5k_tiny_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 se=
ction mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm922_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm922_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 48 warnings, 0 section m=
ismatches

Errors:
    drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of fu=
nction 'writeq'; did you mean 'writel'? [-Werror=3Dimplicit-function-declar=
ation]

Warnings:
    WARNING: unmet direct dependencies detected for MDIO_OCTEON
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
    drivers/power/supply/ab8500_charger.c:738:6: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "imx_ssi_fiq_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_tx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_rx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "imx_ssi_fiq_end" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_start" [vmlinux] is the static EXPORT_SYMBOL
    /tmp/cc0Azu42.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc0Azu42.s:18191: Warning: using r15 results in unpredictable beha=
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
    drivers/hsi/clients/ssi_protocol.c:292:6: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:467:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    lib/rbtree_test.c:220:18: warning: unused variable 'rb' [-Wunused-varia=
ble]
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to integ=
er of different size [-Wpointer-to-int-cast]
    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    cc1: some warnings being treated as errors
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 58 warnings, 0 sect=
ion mismatches

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
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
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
    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:337:=
8: warning: implicit conversion from enumeration type 'enum smu_clk_type' t=
o different enumeration type 'enum amd_pp_clock_type' [-Wenum-conversion]
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:422:=
14: warning: implicit conversion from enumeration type 'enum amd_pp_clock_t=
ype' to different enumeration type 'enum smu_clk_type' [-Wenum-conversion]
    2 warnings generated.
    lib/rbtree_test.c:220:18: warning: unused variable 'rb' [-Wunused-varia=
ble]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/infiniband/sw/siw/siw_mem.c:66:16: warning: unused variable 'p'=
 [-Wunused-variable]
    1 warning generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/scsi/lpfc/lpfc_sli.c:11850:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4559:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "torture_onoff_cleanup" [kernel/torture] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [drivers/ata/libahci] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [drivers/dma/ti/omap-dma] is the static E=
XPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "torture_shuffle_cleanup" [kernel/torture] is the static EXPOR=
T_SYMBOL_GPL
    WARNING: "edma_filter_fn" [drivers/dma/ti/edma] is the static EXPORT_SY=
MBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0 secti=
on mismatches

Warnings:
    lib/rbtree_test.c:220:18: warning: unused variable 'rb' [-Wunused-varia=
ble]
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x1c: redundant UACCESS disable
    drivers/infiniband/sw/siw/siw_mem.c:66:16: warning: unused variable 'p'=
 [-Wunused-variable]
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "hypercall_page" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "torture_onoff_cleanup" [kernel/torture] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [drivers/ata/libahci] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [drivers/dma/ti/omap-dma] is the static E=
XPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "hypercall_page" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "torture_shuffle_cleanup" [kernel/torture] is the static EXPOR=
T_SYMBOL_GPL
    WARNING: "edma_filter_fn" [drivers/dma/ti/edma] is the static EXPORT_SY=
MBOL
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "torture_onoff_cleanup" [kernel/torture] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [drivers/ata/libahci] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [drivers/dma/ti/omap-dma] is the static E=
XPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "hypercall_page" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "torture_shuffle_cleanup" [kernel/torture] is the static EXPOR=
T_SYMBOL_GPL
    WARNING: "edma_filter_fn" [drivers/dma/ti/edma] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 166 warnings, 0 secti=
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
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    lib/rbtree_test.c:220:18: warning: unused variable 'rb' [-Wunused-varia=
ble]
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
    drivers/infiniband/sw/siw/siw_mem.c:66:16: warning: unused variable 'p'=
 [-Wunused-variable]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "torture_onoff_cleanup" [kernel/torture] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [drivers/ata/libahci] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [drivers/dma/ti/omap-dma] is the static E=
XPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "torture_shuffle_cleanup" [kernel/torture] is the static EXPOR=
T_SYMBOL_GPL
    WARNING: "edma_filter_fn" [drivers/dma/ti/edma] is the static EXPORT_SY=
MBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section =
mismatches

Warnings:
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
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 s=
ection mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section =
mismatches

Errors:
    gpiolib-devres.c:(.text+0x1e8): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 sect=
ion mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sec=
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
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0 sect=
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0 =
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 secti=
on mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build@6/linux/build/../driv=
ers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_no=
de'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sect=
ion mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build@10/linux/build/../dri=
vers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_n=
ode'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sect=
ion mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/pci/ops-bcm63xx.c:474:6: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
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
capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sec=
tion mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, =
0 section mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 sec=
tion mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

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
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xsc3_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xsc3_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_xsc3_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xsc3_dcache_clean_area" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "xsc3_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, =
0 section mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build/linux/build/../driver=
s/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_node=
'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, =
0 section mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build@8/linux/build/../driv=
ers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_no=
de'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xsc3_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xsc3_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_xsc3_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xsc3_dcache_clean_area" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "xsc3_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 section=
 mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 20 warnings, 0=
 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "ahci_em_messages" [drivers/ata/libahci] is the static EXPORT_=
SYMBOL_GPL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

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
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is the static=
 EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 10 warnings, 0 section m=
ismatches

Warnings:
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 151 warnings, 0 section =
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
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
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
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 section =
mismatches

Warnings:
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 151 warnings, 0 section mismatches

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
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, clang-8) =E2=80=94 PASS, 0 erro=
rs, 7 warnings, 0 section mismatches

Warnings:
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 151 warnings, 0 section mismatches

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
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, clang-8) =E2=80=94 PASS, 0 erro=
rs, 7 warnings, 0 section mismatches

Warnings:
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0=
 section mismatches

Warnings:
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "_mcount" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "_mcount" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "_mcount" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, clang-8) =E2=80=94 PASS, 0 errors, 7 warnings, =
0 section mismatches

Warnings:
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 153 warnings, =
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
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
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
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    WARNING: "kimage_vaddr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is the static EXPORT_SYMBOL=
_GPL

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section =
mismatches

Errors:
    /home/buildslave/workspace/kernel-build@2/linux/build/../drivers/gpio/g=
piolib-devres.c:156: undefined reference to `gpiod_get_from_of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section =
mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 5 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm920_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm920_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 s=
ection mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 section =
mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 =
section mismatches

Warnings:
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 se=
ction mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
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
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 section =
mismatches

Errors:
    gpiolib-devres.c:(.text+0x1e8): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 section=
 mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0 sec=
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0=
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 13 warnings, 0 secti=
on mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings,=
 0 section mismatches

Errors:
    gpiolib-devres.c:(.text+0x1ea): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    WARNING: "__fentry__" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 s=
ection mismatches

Warnings:
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "imx_ssi_fiq_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_tx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_rx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "imx_ssi_fiq_end" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_start" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "imx_ssi_fiq_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_tx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_rx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "imx_ssi_fiq_end" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_start" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 s=
ection mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/net/ethernet/smsc/smc911x.c:677:7: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "imx_ssi_fiq_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_tx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_rx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "imx_ssi_fiq_end" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_start" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "imx_ssi_fiq_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_tx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_rx_buffer" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "imx_ssi_fiq_end" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "imx_ssi_fiq_start" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
iop13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "xsc3_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xsc3_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_xsc3_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xsc3_dcache_clean_area" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "xsc3_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xsc3_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xsc3_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_xsc3_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xsc3_dcache_clean_area" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "xsc3_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
iop33x_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sectio=
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
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
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
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 se=
ction mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
ks8695_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bc): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm922_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm922_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 section =
mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sec=
tion mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x1b0): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 s=
ection mismatches

Errors:
    (.text+0x1b0): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 se=
ction mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 sectio=
n mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build@2/linux/build/../driv=
ers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_no=
de'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 secti=
on mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build/linux/build/../driver=
s/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_node=
'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 sect=
ion mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 sec=
tion mismatches

Errors:
    /home/buildslave/workspace/kernel-build/linux/build/../drivers/gpio/gpi=
olib-devres.c:156: undefined reference to `gpiod_get_from_of_node'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    {standard input}:131: Warning: macro instruction expanded into multiple=
 instructions
    {standard input}:134: Warning: macro instruction expanded into multiple=
 instructions
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, =
0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm920_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm920_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm920_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm920_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 19 warnings, 0 sectio=
n mismatches

Errors:
    (.text+0x1e8): undefined reference to `gpiod_get_from_of_node'

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
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 29 warnings, 0 se=
ction mismatches

Warnings:
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
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
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 29 warnings, 0 section mismatches

Warnings:
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
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
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 29 warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
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
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 29=
 warnings, 0 section mismatches

Warnings:
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
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
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warn=
ings, 0 section mismatches

Warnings:
    drivers/dma/imx-dma.c:542:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
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
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    drivers/gpu/drm/sti/sti_hdmi.c:851:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:853:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sti/sti_hdmi.c:855:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT_SYMB=
OL

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT_SYMB=
OL

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 sec=
tion mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/watchdog/wdt977.c:400:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0 sec=
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 24 warni=
ngs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
nsim_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0=
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0=
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
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 22 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "strcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcmp" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strchr" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__muldi3" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strlen" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "strcpy" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
nuc910_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x18c): undefined reference to `gpiod_get_from_=
of_node'

---------------------------------------------------------------------------=
-----
nuc950_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x18c): undefined reference to `gpiod_get_from_=
of_node'

---------------------------------------------------------------------------=
-----
nuc960_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x18c): undefined reference to `gpiod_get_from_=
of_node'

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 11 warnings, 0 sectio=
n mismatches

Errors:
    /home/buildslave/workspace/kernel-build/linux/build/../drivers/gpio/gpi=
olib-devres.c:156: undefined reference to `gpiod_get_from_of_node'

Warnings:
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
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 s=
ection mismatches

Warnings:
    drivers/cpufreq/ti-cpufreq.c:79:20: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL
    sound/soc/ti/rx51.c:57:6: warning: this statement may fall through [-Wi=
mplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:292:6: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/hsi/clients/ssi_protocol.c:467:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "omap_dma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "edma_filter_fn" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_feroceon_dcache_clean_area" [vmlinux] is the static EXPOR=
T_SYMBOL
    WARNING: "cpu_feroceon_set_pte_ext" [vmlinux] is the static EXPORT_SYMB=
OL

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 section=
 mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 se=
ction mismatches

Errors:
    /home/buildslave/workspace/kernel-build/linux/build/../drivers/gpio/gpi=
olib-devres.c:156: undefined reference to `gpiod_get_from_of_node'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xsc3_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xsc3_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_xsc3_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xsc3_dcache_clean_area" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "xsc3_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "xsc3_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section m=
ismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build@10/linux/build/../dri=
vers/gpio/gpiolib-devres.c:156: undefined reference to `gpiod_get_from_of_n=
ode'

Warnings:
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]
    drivers/video/fbdev/jz4740_fb.c:300:8: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sectio=
n mismatches

Errors:
    gpiolib-devres.c:(.text+0x1e8): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info' [-W=
unused-variable]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sec=
tion mismatches

Errors:
    gpiolib-devres.c:(.text+0x1d8): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0 section=
 mismatches

Warnings:
    arch/arm/mach-rpc/riscpc.c:48:13: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
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
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "__raw_readsw" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__raw_writesw" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "__raw_readsw" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "__raw_writesw" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "cpu_sa110_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_sa110_dcache_clean_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "memset" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "memcpy" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_v6_dcache_clean_area" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v6_flush_user_cache_all" [vmlinux] is the static EXPORT_SYMBO=
L
    WARNING: "v6_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYMBO=
L
    WARNING: "cpu_v6_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v6_flush_user_cache_range" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v6_flush_kern_dcache_area" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_v6_dcache_clean_area" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v6_flush_user_cache_all" [vmlinux] is the static EXPORT_SYMBO=
L
    WARNING: "v6_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYMBO=
L
    WARNING: "cpu_v6_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v6_flush_user_cache_range" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "v6_flush_kern_dcache_area" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, =
0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 sect=
ion mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 10 warnings, 0 secti=
on mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "
    WARNING: "v4wb_flush_kern_dcache_area" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_flush_user_cache_range" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "cpu_sa1100_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "v4wb_flush_user_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "v4wb_coherent_kern_range" [vmlinux] is the static EXPORT_SYMB=
OL
    WARNING: "v4wb_flush_kern_cache_all" [vmlinux] is the static EXPORT_SYM=
BOL

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 15 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 8 warnings, 0 section=
 mismatches

Errors:
    gpiolib-devres.c:(.text+0x208): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 s=
ection mismatches

Warnings:
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    WARNING: "cpu_arm920_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm920_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm920_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm920_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section m=
ismatches

Warnings:
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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1177:warning: override: UNWINDER_GUESS changes choice state

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
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 sect=
ion mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sectio=
n mismatches

Warnings:
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
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL

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
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 17 warnings, 0 s=
ection mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "cpu_arm926_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_arm926_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "arm926_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "arm926_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "arm926_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 section=
 mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sect=
ion mismatches

Errors:
    (.text+0x1d8): undefined reference to `gpiod_get_from_of_node'

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 13 warnings, 0 s=
ection mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x36: redundant UACCESS disable
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 5 warni=
ngs, 0 section mismatches

Errors:
    gpiolib-devres.c:(.text+0x1bf): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x36: redundant UACCESS disable
    WARNING: "phys_base" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "ahci_em_messages" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "ftrace_set_clr_event" [vmlinux] is the static EXPORT_SYMBOL_G=
PL
    WARNING: "empty_zero_page" [vmlinux] is the static EXPORT_SYMBOL

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 section =
mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 section =
mismatches

Errors:
    gpiolib-devres.c:(.text+0x1a4): undefined reference to `gpiod_get_from_=
of_node'

Warnings:
    WARNING: "return_address" [vmlinux] is the static EXPORT_SYMBOL_GPL
    WARNING: "xscale_flush_user_cache_range" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "cpu_xscale_set_pte_ext" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "cpu_xscale_dcache_clean_area" [vmlinux] is the static EXPORT_=
SYMBOL
    WARNING: "jiffies" [vmlinux] is the static EXPORT_SYMBOL
    WARNING: "xscale_flush_kern_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_user_cache_all" [vmlinux] is the static EXPORT_S=
YMBOL
    WARNING: "xscale_flush_kern_dcache_area" [vmlinux] is the static EXPORT=
_SYMBOL
    WARNING: "xscale_coherent_kern_range" [vmlinux] is the static EXPORT_SY=
MBOL

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5d400456.1c69fb81.74c54.3d8b%40mx.google.com.
