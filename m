Return-Path: <clang-built-linux+bncBDT6TV45WMPRBMOT2PZQKGQE25ETJ6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7E718D37F
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 17:05:06 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id h66sf5045361yba.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 09:05:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584720306; cv=pass;
        d=google.com; s=arc-20160816;
        b=eD6h7H7TftW0+ZSyYCjdaSRa4bC+Z/XmrAdPi3BIQcgSGamQwR7OdivyDQ3vE2KICT
         1ve5SYU2idgRW+9pqk830rTvXy/UjvWMDEG94yPcaSTV01CAaz5t5TK+6huDn5daELUN
         oo9R4VWkMYYwF/85nbF8us9Pf6HVjpUTip4ICdhp7WyqnK7sWp/YuT5XOkd382CUXgK+
         a9oMxgCKq2WTQW0xDfaqNOt6/lPIztie+BiWGLSA0tPfyU2G+M1zaDjp2iRzaEbuQQt5
         0Re27McoVLqt3F0ZkJoDMggYCJxfPQmXWajLTDDpe93fKLmtWFKNEmLEMRib7xd5Jiid
         ZJiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=BjiZxVu+YLxRuNJa4bu2/AkwGnWBZPPeg3cZ8Bbhf6A=;
        b=IyblE2Mbqcno1jceU0bnwyjantrZjGpQlebbTMcMi3UniWXHE6M85009GkPeXN4oRl
         hrnf459t1g7pWglPoA2M96vaMRyYth+ImXWLxWUSSvYtxKLIf9XzJEqQv/pjgbBhZvWK
         8XPeOzAU7ETm8D0ySTUTojQ8g28sP9Os6m9PvSNQ6vLGpgBwWw4+7HIwzfoCBBs9jZNc
         mFkTgPUDWIqQQ4l7z1WDTxtHvVbQgVz7JEuuOUZrfl0JovV7oYtygoMEcva2ZKO1bzRJ
         uMv1O+yDs1DEm0HJmqIrOzcBu4QhbQqLyGRtAhCE5TpTzCY+e0LxvA2eGRX0ckVAnQ+g
         ALbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=QTvhWspZ;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjiZxVu+YLxRuNJa4bu2/AkwGnWBZPPeg3cZ8Bbhf6A=;
        b=jAPbVJ9pvsSYfOY01gDwTYMO7Lf0Hgzr5YYdj/nihAdNcT8k2TUZI2iJs1ExvZt5Ug
         IktS/W1wR6vD0GN3/4J3njyKS0xOl3cMSLkk1UEj1EtxegdYgZdvffCRPD95c7RhcFTJ
         ryMSbh2+FPRx6hPub3pYhk05IHfnLyQHeFUqoMiuMNC9aEQeaq3INd034OavUrUfKO8x
         lANJqlbTvN9SguRoM6LF3eaWYwVJkT0SKE4DFy2nN/NaLX8AHuzizaGjKmFxMn221h8Y
         0Uip7DYL9Kw3UAbUVYWpLOlSg9StN7njSQIvGP/axZ/J9aF9R2UxB0YrKvQkqtc9kvtN
         0A7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjiZxVu+YLxRuNJa4bu2/AkwGnWBZPPeg3cZ8Bbhf6A=;
        b=ahpGeOYh7h4PgE69c5guuMaq6sBbz3o1BMm1dPPVe5waXSz2sL7MNlf0u3eIb79ukX
         BC4VrsEjcB7JcbM6Yc2YwET4ashmO8D63fZSXMBk+xSfnghkdGCtFQk5inX0YIDclQHs
         nWzuTLIzpzEsy6U69tdi85EoLh7RDKyRfulN27bfFahgp6VW3kZ3A4c26Be1BSxcmcZ8
         SiXN1XknOiIGRn2Az/sb26wOVTbdHZPZ/Uj5F4zItKhOLrPfN0IolZWxhwPEqdpWBfHF
         KfHAOa4RGX2UvdW8Z0ZaZAb3e8nqVSEx4oHmE6eL+jaZuE0eJPi+ipJEcuPjAdhzSrwp
         b7oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Hhy491mg+gI0/KlhDE1XtoIf2K7ZUibMCVluGG8Vg/pmnYEcq
	XL/tLA9rZY+96c6r+mGeGS0=
X-Google-Smtp-Source: ADFU+vv3i2PbmoA2FSglSiWJ+0KRbL7DJpD0HmnxlpWKOUtQPdJb+3jUhgzO42eHBR4JdqtEpIwh5Q==
X-Received: by 2002:a25:ba93:: with SMTP id s19mr14888456ybg.100.1584720305489;
        Fri, 20 Mar 2020 09:05:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa0c:: with SMTP id s12ls2181200ybi.6.gmail; Fri, 20 Mar
 2020 09:05:05 -0700 (PDT)
X-Received: by 2002:a25:e90f:: with SMTP id n15mr15279776ybd.16.1584720304899;
        Fri, 20 Mar 2020 09:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584720304; cv=none;
        d=google.com; s=arc-20160816;
        b=vXOhz8sGqw8j8NYur1HuH2ryifyzshxqLn1W++Er3+b//qimh4qTTTi59kff3OhuKe
         9OC+HDCG77tFq9syYzi0t4Y0yb+2MaQaFXoJJU68Z6dCQvSG+kKWbWkWS/SLj/gB3TaP
         3Q11jiPaipCP4+dPKrmBj3XZkngqbOwCYwgKD3atekGDL7qWMSI+DH+w5e94WNLFmyUV
         jqvACdvWriDnSYDE9Wdizja+jUW7HCxi8uuFmx0viZSNvFsOwJlsEwStG5y/OQAkqCIT
         wCpSEwSDC/y7WwRb+SeFEhoJQW35XMuvMSpr0culXv86gBRyO0wkrSoLxH4+xaDZWQ6n
         T8uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=MiAgO18Jl1GSwwHM+UgGh+A8WZ/6QSc67yYKQifN4X4=;
        b=Qokh9PGnHBOKBNw2vuMJHOIfXN2OWVhYDXqzKCBXqe0izbMnYY+wu8JstTRRzejTM7
         1kXlH9en86syzo3g9BF9zbUAIfMcGVR3j4NCwTqCEBKo3jB/fs06EVBrr2XCC4l3WzFz
         YavBW16Gc5IicqqmyN2Tu8YyFebpyGHEEKx3xCmQ1lCqOIhtXjtqk80uWteCql3JSPIl
         qCSoHyluH7S5d9khbW6KGkshJuT3d1s+BcPMa43wKCrxZVTCB20UQv+b6wcllB8dqnvz
         zfvMAIDsjclgTB2s+l/QMQ+7+RaF/Pbmvmw2FC7v6jVgqP8lWPwArRnajAWetZ3Fgev6
         wcZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=QTvhWspZ;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 207si272672ybe.5.2020.03.20.09.05.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 09:05:04 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t16so2665125plr.8
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 09:05:04 -0700 (PDT)
X-Received: by 2002:a17:90a:a890:: with SMTP id h16mr10654371pjq.55.1584720299126;
        Fri, 20 Mar 2020 09:04:59 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id w16sm5887669pfj.79.2020.03.20.09.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 09:04:57 -0700 (PDT)
Message-ID: <5e74e9a9.1c69fb81.66a80.46de@mx.google.com>
Date: Fri, 20 Mar 2020 09:04:57 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20200320
X-Kernelci-Report-Type: build
Subject: next/master build: 329 builds: 23 failed, 306 passed, 70 errors,
 836 warnings (next-20200320)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=QTvhWspZ;       spf=neutral (google.com: 2607:f8b0:4864:20::641 is
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

next/master build: 329 builds: 23 failed, 306 passed, 70 errors, 836 warnin=
gs (next-20200320)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200320/

Tree: next
Branch: master
Git Describe: next-20200320
Git Commit: d8f289c16fbb72e17b783175c1fb0942816264fd
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-9) FAIL
    defconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    allmodconfig: (clang-9) FAIL
    cm_x300_defconfig: (clang-9) FAIL
    em_x270_defconfig: (clang-9) FAIL
    eseries_pxa_defconfig: (clang-9) FAIL
    pxa_defconfig: (clang-9) FAIL
    qcom_defconfig: (clang-9) FAIL
    rpc_defconfig: (clang-9) FAIL
    vf610m4_defconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL
    cm_x300_defconfig: (gcc-8) FAIL
    em_x270_defconfig: (gcc-8) FAIL
    eseries_pxa_defconfig: (gcc-8) FAIL
    pxa_defconfig: (gcc-8) FAIL
    qcom_defconfig: (gcc-8) FAIL
    vf610m4_defconfig: (gcc-8) FAIL

mips:
    ip27_defconfig: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL

riscv:
    allnoconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

x86_64:
    x86_64_defconfig+kvm_guest: (clang-9) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (gcc-8): 4 errors
    allmodconfig (clang-9): 4 errors
    defconfig (clang-9): 4 errors
    defconfig (gcc-8): 36 warnings
    defconfig (gcc-8): 36 warnings
    defconfig (gcc-8): 36 warnings
    defconfig (gcc-8): 36 warnings

arm:
    allmodconfig (clang-9): 5 errors, 21 warnings
    allmodconfig (gcc-8): 5 errors, 19 warnings
    aspeed_g4_defconfig (gcc-8): 4 warnings
    aspeed_g4_defconfig (clang-9): 5 warnings
    aspeed_g5_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (clang-9): 4 warnings
    assabet_defconfig (clang-9): 1 warning
    badge4_defconfig (clang-9): 1 warning
    cerfcube_defconfig (clang-9): 1 warning
    cm_x2xx_defconfig (clang-9): 1 warning
    cm_x300_defconfig (gcc-8): 1 error, 2 warnings
    cm_x300_defconfig (clang-9): 1 error, 3 warnings
    colibri_pxa300_defconfig (clang-9): 1 warning
    collie_defconfig (clang-9): 1 warning
    ebsa110_defconfig (clang-9): 1 warning
    em_x270_defconfig (gcc-8): 1 error, 2 warnings
    em_x270_defconfig (clang-9): 1 error, 3 warnings
    ep93xx_defconfig (clang-9): 1 warning
    eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
    eseries_pxa_defconfig (clang-9): 5 errors, 3 warnings
    footbridge_defconfig (clang-9): 1 warning
    h5000_defconfig (clang-9): 1 warning
    hackkit_defconfig (clang-9): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    integrator_defconfig (clang-9): 1 warning
    iop32x_defconfig (clang-9): 1 warning
    ixp4xx_defconfig (clang-9): 1 warning
    jornada720_defconfig (clang-9): 1 warning
    lart_defconfig (clang-9): 1 warning
    lpd270_defconfig (clang-9): 1 warning
    lubbock_defconfig (clang-9): 1 warning
    mainstone_defconfig (clang-9): 1 warning
    milbeaut_m10v_defconfig (clang-9): 2 warnings
    mini2440_defconfig (clang-9): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (clang-9): 2 warnings
    multi_v5_defconfig (gcc-8): 4 warnings
    multi_v5_defconfig (clang-9): 4 warnings
    multi_v7_defconfig (clang-9): 53 warnings
    multi_v7_defconfig (gcc-8): 51 warnings
    multi_v7_defconfig (gcc-8): 51 warnings
    multi_v7_defconfig (gcc-8): 51 warnings
    multi_v7_defconfig (gcc-8): 51 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    mxs_defconfig (clang-9): 1 warning
    neponset_defconfig (clang-9): 1 warning
    netwinder_defconfig (clang-9): 1 warning
    omap1_defconfig (clang-9): 3 warnings
    oxnas_v6_defconfig (clang-9): 2 warnings
    pleb_defconfig (clang-9): 1 warning
    pxa255-idp_defconfig (clang-9): 1 warning
    pxa_defconfig (clang-9): 1 error, 6 warnings
    pxa_defconfig (gcc-8): 3 errors, 6 warnings
    qcom_defconfig (gcc-8): 1 error
    qcom_defconfig (clang-9): 1 error
    rpc_defconfig (clang-9): 5 errors
    s3c2410_defconfig (clang-9): 1 warning
    shannon_defconfig (clang-9): 1 warning
    spear3xx_defconfig (clang-9): 1 warning
    spear6xx_defconfig (clang-9): 1 warning
    sunxi_defconfig (gcc-8): 47 warnings
    sunxi_defconfig (clang-9): 47 warnings
    tct_hammer_defconfig (clang-9): 1 warning
    versatile_defconfig (clang-9): 1 warning
    vf610m4_defconfig (clang-9): 2 errors
    vf610m4_defconfig (gcc-8): 4 errors, 5 warnings
    viper_defconfig (clang-9): 1 warning
    xcep_defconfig (clang-9): 1 warning
    zeus_defconfig (clang-9): 1 warning

i386:

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 3 warnings
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
    ci20_defconfig (gcc-8): 1 warning
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
    ip27_defconfig (gcc-8): 4 errors, 3 warnings
    ip28_defconfig (gcc-8): 2 warnings
    ip32_defconfig (gcc-8): 2 warnings
    jazz_defconfig (gcc-8): 2 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 2 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 2 warnings
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
    mtx1_defconfig (gcc-8): 2 errors, 1 warning
    nlm_xlp_defconfig (gcc-8): 2 warnings
    nlm_xlr_defconfig (gcc-8): 2 warnings
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 2 warnings
    pistachio_defconfig (gcc-8): 2 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 2 warnings
    rb532_defconfig (gcc-8): 2 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 2 warnings
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
    allnoconfig (gcc-8): 1 error
    rv32_defconfig (gcc-8): 6 warnings
    tinyconfig (gcc-8): 1 error

x86_64:
    allmodconfig (clang-9): 4 warnings
    tinyconfig (gcc-8): 1 warning

Errors summary:

    5    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.=
ko] undefined!
    4    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=
=3D width of type [-Werror=3Dshift-count-overflow]
    4    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/d=
wc/pcie-tegra194.ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller=
/dwc/pcie-tegra194.ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie=
-tegra194.ko] undefined!
    3    clang: error: assembler command failed with exit code 1 (use -v to=
 see invocation)
    2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98sp=
in_lock=E2=80=99?
    2    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!
    2    ERROR: modpost: "__aeabi_uldivmod" [drivers/net/ethernet/mellanox/=
mlxsw/mlxsw_spectrum.ko] undefined!
    1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
    1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
    1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
    1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
    1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
    1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
    1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
    1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
    1    sound/soc/codecs/wm9712.c:84:35: error: variable has incomplete ty=
pe 'const struct regmap_config'
    1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98w=
m9712_regmap_config=E2=80=99 isn=E2=80=99t known
    1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_r=
egmap_config=E2=80=99 has initializer but incomplete type
    1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of fu=
nction =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-f=
unction-declaration]
    1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of fu=
nction 'regmap_ac97_default_volatile' [-Werror,-Wimplicit-function-declarat=
ion]
    1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of fu=
nction =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=
=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of fu=
nction 'snd_soc_component_exit_regmap' [-Werror,-Wimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of fu=
nction =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=
=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of fu=
nction 'snd_soc_component_init_regmap' [-Werror,-Wimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of f=
unction =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_in=
it_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of f=
unction 'regmap_init_ac97' [-Werror,-Wimplicit-function-declaration]
    1    drivers/usb/gadget/udc/pxa25x_udc.c:2328:11: error: invalid % esca=
pe in inline assembly string
    1    drivers/clocksource/timer-vf-pit.c:194:58: error: expected '}'
    1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argume=
nt list invoking macro "BUG_ON"
    1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=
=98;=E2=80=99 at end of input
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=
=E2=80=99 undeclared (first use in this function)
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: unterminated func=
tion-like macro invocation
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declarat=
ion or statement at end of input
    1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_=
core.ko] undefined!
    1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] u=
ndefined!
    1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.=
ko] undefined!
    1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.=
ko] undefined!
    1    /tmp/vgettimeofday-f294bd.s:948: Error: unknown pseudo-op: `.cfi_n=
egate_ra_state'
    1    /tmp/vgettimeofday-f294bd.s:580: Error: unknown pseudo-op: `.cfi_n=
egate_ra_state'
    1    /tmp/vgettimeofday-f294bd.s:25: Error: unknown pseudo-op: `.cfi_ne=
gate_ra_state'
    1    /tmp/main-772eb7.s:1469: Error: selected processor does not suppor=
t `strh r0,[r1]' in ARM mode
    1    /tmp/main-772eb7.s:1466: Error: selected processor does not suppor=
t `ldrh r0,[r0]' in ARM mode
    1    /tmp/elf-db0eaf.s:49: Error: selected processor does not support `=
ldrh r2,[r0,#18]' in ARM mode

Warnings summary:

    192  arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_f=
ormat): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has =
invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-c=
ells =3D=3D 2, #size-cells =3D=3D 1)
    160  arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format)=
: /soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invali=
d length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    123  <stdin>:1520:2: warning: #warning syscall process_madvise not impl=
emented [-Wcpp]
    64   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
    48   scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warnin=
g (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges=
" property has invalid length (12 bytes) (parent #address-cells =3D=3D 1, c=
hild #address-cells =3D=3D 2, #size-cells =3D=3D 1)
    24   arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_for=
mat): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has in=
valid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cel=
ls =3D=3D 2, #size-cells =3D=3D 1)
    16   WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    12   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    12   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    11   1 warning generated.
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    4    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    4    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_fo=
rmat): /:dma-ranges: Root node has a "dma-ranges" property
    4    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    4    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    2    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame s=
ize of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
    2    cc1: all warnings being treated as errors
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    #warning This code requires at least version 4.6 of GCC
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98=
struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from inte=
ger without a cast [-Wint-conversion]
    1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size=
 of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame si=
ze of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-th=
an=3D]
    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call to =
__stack_chk_fail() with UACCESS enabled
    1    include/linux/kernel.h:47:25: warning: excess elements in struct i=
nitializer
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=E2=
=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but ar=
gument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from poi=
nter to integer of different size [-Wpointer-to-int-cast]
    1    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame si=
ze of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' [-=
Wframe-larger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5648 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6:=
 warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame s=
ize of 1224 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
    1    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: st=
ack frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-la=
rger-than=3D]
    1    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit_ti=
mer_interrupt=E2=80=99 defined but not used [-Wunused-function]
    1    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit_cl=
ocksource_init=E2=80=99 defined but not used [-Wunused-function]
    1    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return state=
ment in function returning non-void [-Wreturn-type]
    1    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pit_c=
lockevent_init=E2=80=99 defined but not used [-Wunused-function]
    1    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98clock=
event_pit=E2=80=99 defined but not used [-Wunused-variable]
    1    drivers/bus/mhi/core/boot.c:55:15: warning: format =E2=80=98%lx=E2=
=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but ar=
gument 5 has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=
=99} [-Wformat=3D]
    1    cc1: some warnings being treated as errors
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1fa: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
f8: call to memset() with UACCESS enabled
    1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame=
()+0x1ef: call to memset() with UACCESS enabled
    1    arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used u=
ninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    1    arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq=
' to silence this warning
    1    2 warnings generated.
    1    /tmp/test-arm-eb04f2.s:18788: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-eb04f2.s:18713: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/futex-f81ffe.s:7458: Warning: source register same as write-b=
ack base
    1    /tmp/futex-ecb11f.s:7433: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e868eb.s:7434: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e7ddba.s:7476: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e5a9f2.s:7424: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e58406.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e56653.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-d83694.s:7476: Warning: source register same as write-b=
ack base
    1    /tmp/futex-be8933.s:7637: Warning: source register same as write-b=
ack base
    1    /tmp/futex-bd9ac6.s:23245: Warning: source register same as write-=
back base
    1    /tmp/futex-b35bd7.s:22782: Warning: source register same as write-=
back base
    1    /tmp/futex-b35338.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-984c26.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-93458a.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-8efbde.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-8b48ea.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-8add7a.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-8a9210.s:23137: Warning: source register same as write-=
back base
    1    /tmp/futex-8984bf.s:23546: Warning: source register same as write-=
back base
    1    /tmp/futex-891ed7.s:7446: Warning: source register same as write-b=
ack base
    1    /tmp/futex-82a82a.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-6e246f.s:7475: Warning: source register same as write-b=
ack base
    1    /tmp/futex-6d542f.s:22782: Warning: source register same as write-=
back base
    1    /tmp/futex-660053.s:23137: Warning: source register same as write-=
back base
    1    /tmp/futex-5cd3aa.s:7483: Warning: source register same as write-b=
ack base
    1    /tmp/futex-53beb1.s:7455: Warning: source register same as write-b=
ack base
    1    /tmp/futex-4b1555.s:7488: Warning: source register same as write-b=
ack base
    1    /tmp/futex-48307a.s:7499: Warning: source register same as write-b=
ack base
    1    /tmp/futex-458447.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-42e668.s:7476: Warning: source register same as write-b=
ack base
    1    /tmp/futex-3a273d.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-359439.s:7446: Warning: source register same as write-b=
ack base
    1    /tmp/futex-33aad0.s:23004: Warning: source register same as write-=
back base
    1    /tmp/futex-1f7a7b.s:23104: Warning: source register same as write-=
back base
    1    /tmp/futex-197f36.s:7446: Warning: source register same as write-b=
ack base
    1    /tmp/futex-13d5d8.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-0f6e0a.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-086647.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/ccHVOYUh.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccHVOYUh.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1162:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()
    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mismat=
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
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 section=
 mismatches

Errors:
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-9) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-9) =E2=80=94 FAIL, 5 errors, 21 warnings, 0 sectio=
n mismatches

Errors:
    ERROR: modpost: "__aeabi_uldivmod" [drivers/net/ethernet/mellanox/mlxsw=
/mlxsw_spectrum.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!

Warnings:
    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame size of=
 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-than=3D=
]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    /tmp/test-arm-eb04f2.s:18713: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-eb04f2.s:18788: Warning: using r15 results in unpredictab=
le behaviour
    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: stack f=
rame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-larger-=
than=3D]
    1 warning generated.
    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size of 1=
152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame size of=
 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' [-Wfram=
e-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6: warn=
ing: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5648 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 5 errors, 19 warnings, 0 section =
mismatches

Errors:
    ERROR: modpost: "__aeabi_uldivmod" [drivers/net/ethernet/mellanox/mlxsw=
/mlxsw_spectrum.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!

Warnings:
    /tmp/ccHVOYUh.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccHVOYUh.s:18191: Warning: using r15 results in unpredictable beha=
viour
    drivers/bus/mhi/core/boot.c:55:15: warning: format =E2=80=98%lx=E2=80=
=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but argum=
ent 5 has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99=
} [-Wformat=3D]
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=E2=80=99=
 expects argument of type =E2=80=98long unsigned int=E2=80=99, but argument=
 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
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
    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from pointer =
to integer of different size [-Wpointer-to-int-cast]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0x=
1ef: call to memset() with UACCESS enabled
    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call to __sta=
ck_chk_fail() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x1fa:=
 call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1f8: c=
all to memset() with UACCESS enabled

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section m=
ismatches

Errors:
    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98spin_loc=
k=E2=80=99?

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

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
aspeed_g4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-33aad0.s:23004: Warning: source register same as write-back =
base
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
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
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
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-086647.s:7504: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
badge4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-1f7a7b.s:23104: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
cerfcube_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    /tmp/futex-8add7a.s:7504: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-197f36.s:7446: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    /tmp/futex-be8933.s:7637: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
colibri_pxa270_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    /tmp/futex-bd9ac6.s:23245: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-53beb1.s:7455: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

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
    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mismatch in=
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
    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-9) =E2=80=94 FAIL, 4 errors, 0 warnings, 0 section =
mismatches

Errors:
    /tmp/vgettimeofday-f294bd.s:25: Error: unknown pseudo-op: `.cfi_negate_=
ra_state'
    /tmp/vgettimeofday-f294bd.s:580: Error: unknown pseudo-op: `.cfi_negate=
_ra_state'
    /tmp/vgettimeofday-f294bd.s:948: Error: unknown pseudo-op: `.cfi_negate=
_ra_state'
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 36 warnings, 0 section m=
ismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 36 warnings, 0 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 36 warnings, 0 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 36 warnings, 0=
 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-d83694.s:7476: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    /tmp/futex-359439.s:7446: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-e868eb.s:7434: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 12 warnings, =
0 section mismatches

Errors:
    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of functio=
n =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-functi=
on-declaration]
    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_regmap=
_config=E2=80=99 has initializer but incomplete type
    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of functi=
on =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_init_zo=
ne=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of functio=
n =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=98sn=
d_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of functio=
n =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=98sn=
d_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98wm9712=
_regmap_config=E2=80=99 isn=E2=80=99t known

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struct ini=
tializer
    include/linux/kernel.h:47:25: warning: excess elements in struct initia=
lizer
    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98struc=
t regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from integer w=
ithout a cast [-Wint-conversion]
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, clang-9) =E2=80=94 FAIL, 5 errors, 3 warnings, =
0 section mismatches

Errors:
    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of functio=
n 'regmap_ac97_default_volatile' [-Werror,-Wimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:84:35: error: variable has incomplete type 'c=
onst struct regmap_config'
    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of functi=
on 'regmap_init_ac97' [-Werror,-Wimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of functio=
n 'snd_soc_component_init_regmap' [-Werror,-Wimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of functio=
n 'snd_soc_component_exit_regmap' [-Werror,-Wimplicit-function-declaration]

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    /tmp/futex-e58406.s:7474: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    /tmp/futex-42e668.s:7476: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

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
gemini_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    /tmp/futex-891ed7.s:7446: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-ecb11f.s:7433: Warning: source register same as write-back b=
ase

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
imote2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
imx_v6_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-458447.s:7474: Warning: source register same as write-back b=
ase

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
ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 3 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    cc1: all warnings being treated as errors
    cc1: all warnings being treated as errors

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
ixp4xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-6e246f.s:7475: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
jornada720_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    /tmp/futex-82a82a.s:7504: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    /tmp/futex-8efbde.s:7504: Warning: source register same as write-back b=
ase

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-8b48ea.s:23064: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-93458a.s:23064: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    /tmp/futex-984c26.s:23064: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size o=
f 1224 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    /tmp/futex-660053.s:23137: Warning: source register same as write-back =
base

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
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
mps2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 section=
 mismatches

Errors:
    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_core.=
ko] undefined!
    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] undefi=
ned!

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-48307a.s:7499: Warning: source register same as write-back b=
ase
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

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
multi_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 53 warnings, 0 =
section mismatches

Warnings:
    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size o=
f 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 51 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
 errors, 51 warnings, 0 section mismatches

Warnings:
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
=94 PASS, 0 errors, 51 warnings, 0 section mismatches

Warnings:
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 51=
 warnings, 0 section mismatches

Warnings:
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52 warn=
ings, 0 section mismatches

Warnings:
    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes is =
larger than 1024 bytes [-Wframe-larger-than=3D]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    /tmp/futex-8984bf.s:23546: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    /tmp/futex-13d5d8.s:7504: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    /tmp/futex-e7ddba.s:7476: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used uninit=
ialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to =
silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size o=
f 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
pcm027_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    /tmp/futex-4b1555.s:7488: Warning: source register same as write-back b=
ase

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
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    /tmp/futex-e56653.s:23064: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 6 warnings, 0 section=
 mismatches

Errors:
    drivers/usb/gadget/udc/pxa25x_udc.c:2328:11: error: invalid % escape in=
 inline assembly string

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 6 warnings, 0 section =
mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] u=
ndefined!
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section =
mismatches

Errors:
    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!

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
realview_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, clang-9) =E2=80=94 FAIL, 5 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    /tmp/elf-db0eaf.s:49: Error: selected processor does not support `ldrh =
r2,[r0,#18]' in ARM mode
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)
    /tmp/main-772eb7.s:1466: Error: selected processor does not support `ld=
rh r0,[r0]' in ARM mode
    /tmp/main-772eb7.s:1469: Error: selected processor does not support `st=
rh r0,[r1]' in ARM mode
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-8a9210.s:23137: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
shannon_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-b35338.s:7504: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    /tmp/futex-6d542f.s:22782: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    /tmp/futex-b35bd7.s:22782: Warning: source register same as write-back =
base

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 47 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 47 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    /tmp/futex-5cd3aa.s:7483: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1162:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98spin_loc=
k=E2=80=99?

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
versatile_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    /tmp/futex-0f6e0a.s:7474: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 se=
ction mismatches

Errors:
    drivers/clocksource/timer-vf-pit.c:131:2: error: unterminated function-=
like macro invocation
    drivers/clocksource/timer-vf-pit.c:194:58: error: expected '}'

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 4 errors, 5 warnings, 0 sect=
ion mismatches

Errors:
    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argument li=
st invoking macro "BUG_ON"
    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=E2=80=
=99 undeclared (first use in this function)
    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=98;=E2=
=80=99 at end of input
    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declaration o=
r statement at end of input

Warnings:
    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return statement =
in function returning non-void [-Wreturn-type]
    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pit_clocke=
vent_init=E2=80=99 defined but not used [-Wunused-function]
    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98clockevent=
_pit=E2=80=99 defined but not used [-Wunused-variable]
    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit_timer_i=
nterrupt=E2=80=99 defined but not used [-Wunused-function]
    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit_clockso=
urce_init=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    /tmp/futex-f81ffe.s:7458: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

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
x86_64_defconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, clang-9) =E2=80=94 FAIL, 0 errors, 0 wa=
rnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    /tmp/futex-e5a9f2.s:7424: Warning: source register same as write-back b=
ase

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
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    /tmp/futex-3a273d.s:7474: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
clang-built-linux/5e74e9a9.1c69fb81.66a80.46de%40mx.google.com.
