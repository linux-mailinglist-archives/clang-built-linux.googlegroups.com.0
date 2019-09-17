Return-Path: <clang-built-linux+bncBDT6TV45WMPRBKFIQHWAKGQEBZKHA3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1210AB4608
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 05:34:01 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j2sf779112wre.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:34:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568691240; cv=pass;
        d=google.com; s=arc-20160816;
        b=VyaPh1StdRT1TEGL5SVSV1Z7Ly5vuAgILJ5PUBVI/9OzmzPzffi0LzKi3tYHkQCB6n
         efUGvJLp2SXXtFvRt7L7FcJdOVHG/AINapCWkwZBGWzJGRorJAiah6W4DlTJ3mKVoD2O
         Vejnw7cFtMgJSiE1kuCVMjjRHCnEOTs6gO6338/rem4GcodHgqxu+mQ13Xkx8KBymGqv
         BIJv5eqqpVpRGumbpNEI+2K0QCIK7jQlO76GSzxsYMHDd2IJqwMs/RoLlfGpqOeIXLXd
         KDY0jGnKWiqJfMNFltzZVP+qEz0p68d/0zViRc6/e3Zdc76GkZ3B/TvYWyeKETDjRb+p
         9wdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=r9VsAqU26X/NK2j4bc1LZWfCmDsnQHDB1P1tD4C2wo0=;
        b=sBK6QR6q7ELCAt3sE1798pJ1ufi0S7GqzcpcenPNmfAnMEDT1bSq+Zabxr6rDkYsGm
         NJoJzQnc0GTPLK2+oB0jlWXr4GelU5gAagP5pLXxbG3XJP8bpHeQ7CSgMBgJaKTK7B3E
         aFBxTv7YlA7xkvng/9WNCOsU/e8wz0T6PvZNTipccxW+DL+xVlPlZCn0h6ovC5VBF3Wt
         GR+sRj3hrNUAUAR3mGx1l8VYTLKb6D5WZRkW6rAoaklP8qY40WwL8wjH8lWO/e0qTcRs
         r3+tRdYCXcetBmlL3UWEB9Vmi9aZpewjrpZuWacDDz8rDTNg4bi2dkJf4VS/hIECFkCQ
         S+WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=jFM7kdls;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9VsAqU26X/NK2j4bc1LZWfCmDsnQHDB1P1tD4C2wo0=;
        b=HtQlaBcf4zf4RZRVMjl7zLCEqq3j9PU8ZKSgV5irSSzS79cVCy8ADGRzi3wJGlw3kw
         SPzTksrDJvR+ciKI8Mc32DNO/YDcHnaW6JlZD2XXqZizHuDoOJTgi4FeXjT3Xd8zRTod
         3OKBI9yCr27oZdCOnfjL8AGbVko7Q/nAJoVsZfWRT3XNqTPpFJQju701f51ZEqdcehpo
         5ruBy1fXVALbA3suuTw4gSAM80SU73Vr6kCr9PWpe8g0bvfBmLB35QJ7kjWc2+xYoPww
         6gsa6G5KWRXM8HlGmfo/81xYxn6NCPbNPscaGMGi+nV3uGUYknrLuICT1xuGmNQdmdRo
         Ns7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9VsAqU26X/NK2j4bc1LZWfCmDsnQHDB1P1tD4C2wo0=;
        b=oa/RyR2Y4j1raj7kFIWOhJjKzev3y+dkMcxiMhu4h/b9fnyptracJFZUePV2e39QIb
         msVtSrDmA1UKJZx8gJ5+kGcXgWIG13MFY4Fod5L5t5ZjUChOdFcSvb7h/WxW3gt8po7j
         YJHIVwMteyOPnLUXNJcZbsTpdO29GuYvwVneUU0SYhzdiGjTmc3jrrRfKfAAKUK8/C9H
         VDoC/vhFLfbVZlyN9OSpTedeqREev614yLC3GELvg3zKdwZ1pCRoauViP5XY238qB9hv
         MBNsIYwta1SYp4k+CDJEG1i7rgdDGjKYAdGYIQnZelnsc5CsnSXpT19eDMEb9zcPFWDi
         83Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxWHdtsGot+C71ICX62iJ4Vho6xGkcv+7ZXIznomSrHBk98SS2
	SYxlg8R2lNURI6m6eq1zX6w=
X-Google-Smtp-Source: APXvYqxDw4y7oyPkPOSmlfHorUQJYk8MsUXyHKzzeIhXjOG3Mv5BBaVpupSZ8pLKcoX29EoKAJeNSw==
X-Received: by 2002:adf:e48f:: with SMTP id i15mr1197981wrm.26.1568691240345;
        Mon, 16 Sep 2019 20:34:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:eb03:: with SMTP id j3ls365969wmh.0.gmail; Mon, 16 Sep
 2019 20:33:59 -0700 (PDT)
X-Received: by 2002:a1c:9615:: with SMTP id y21mr1572052wmd.5.1568691239759;
        Mon, 16 Sep 2019 20:33:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568691239; cv=none;
        d=google.com; s=arc-20160816;
        b=0lNhyClbh4l2z10XvNslQacdsu7UZVnTVfBeVLPE3C8VtQ2aAuvMo2nBh+TtZ9uAjU
         npRT/dkKzea9RRo+e7spjdTLxx0UDoAkv+uV5da4MuPuy23i2F+Xael1K0T6FM0rhj0r
         ZI3UR4IuNPBgHaTSd1iEVh+ytg6FiR4aIasiwo0iH9WcBWka3B0m3sSKd8exFGLYhPBK
         Ki6mK465Yajq+M9RCwr/nNdlviuZGpOjfQpgG4aWpaWkR63USHihLiiuDBeXjWo6Tbj8
         6kxjzC6L5vNcpTM1rXk8CB9eoUAAFFNDyya4V+2IliMjbMLzz8exq5151g+j+oa0xM4g
         pXSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=HAxJOLLChM2qIby9q8mTC/dmUU7XNpH8lYsFFy9Qfus=;
        b=i5lhxnZBuAuJn7+mo7yVvF6fBi/mIZUh8h4KKJ4ucGbvbIwkFze81Tmq/3vREbf8VZ
         NgJIbO/WOqGQ7k9CQWQq3XE88IVOP5NsFTD+nMbVGi+Zoaoxr2RGbGbtHfJXz5DGe/hg
         YXxgfcxYtZbRdkzCFi0F/14Lu2CRygWb0szveX0FN9CvHhpVv9ffr1Ls9fObwHR6s0Rz
         IIAt46VEfB8w8C0V1DZZ/FGDk8mkoDNgbrgm+E3tK3QMyG1MF0OPH9SOOhLxWYXTRpQF
         Y0gThoeasynXABRb1KKOH3oavENAnbiildQdwut4lXGKu3qHrPR+zguQI+HlkBeIM95b
         s7qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=jFM7kdls;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id 5si178747wmf.1.2019.09.16.20.33.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 20:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id v17so1294377wml.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 20:33:59 -0700 (PDT)
X-Received: by 2002:a7b:c404:: with SMTP id k4mr1670902wmi.150.1568691237426;
        Mon, 16 Sep 2019 20:33:57 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id m16sm873024wml.11.2019.09.16.20.33.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 20:33:56 -0700 (PDT)
Message-ID: <5d805424.1c69fb81.88394.3a0d@mx.google.com>
Date: Mon, 16 Sep 2019 20:33:56 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20190916
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
Subject: next/master build: 218 builds: 6 failed, 212 passed, 11 errors,
 640 warnings (next-20190916)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=jFM7kdls;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 218 builds: 6 failed, 212 passed, 11 errors, 640 warning=
s (next-20190916)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190916/

Tree: next
Branch: master
Git Describe: next-20190916
Git Commit: f84e1c16f08d7d1d6955f8f1c2e6cc0587d6d14c
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-8) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    allmodconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL
    msp71xx_defconfig: (gcc-8) FAIL

x86_64:
    allmodconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 2 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 2 warnings
    nsim_hs_defconfig (gcc-8): 2 warnings
    nsim_hs_defconfig (gcc-8): 31 warnings
    nsim_hs_smp_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-8): 1 error, 9 warnings
    allmodconfig (gcc-8): 1 error
    defconfig (gcc-8): 4 warnings
    defconfig (clang-8): 4 warnings
    defconfig (gcc-8): 4 warnings
    defconfig (gcc-8): 4 warnings
    defconfig (gcc-8): 31 warnings

arm:
    allmodconfig (gcc-8): 1 error
    am200epdkit_defconfig (gcc-8): 2 warnings
    assabet_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 4 warnings
    cm_x2xx_defconfig (gcc-8): 2 warnings
    cm_x300_defconfig (gcc-8): 2 warnings
    cns3420vb_defconfig (gcc-8): 2 warnings
    colibri_pxa270_defconfig (gcc-8): 2 warnings
    colibri_pxa300_defconfig (gcc-8): 2 warnings
    collie_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 3 warnings
    dove_defconfig (gcc-8): 2 warnings
    em_x270_defconfig (gcc-8): 2 warnings
    ep93xx_defconfig (gcc-8): 2 warnings
    eseries_pxa_defconfig (gcc-8): 2 warnings
    exynos_defconfig (gcc-8): 2 warnings
    ezx_defconfig (gcc-8): 3 warnings
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 2 warnings
    imote2_defconfig (gcc-8): 3 warnings
    imx_v4_v5_defconfig (gcc-8): 2 warnings
    imx_v6_v7_defconfig (gcc-8): 4 warnings
    integrator_defconfig (gcc-8): 2 warnings
    ixp4xx_defconfig (gcc-8): 2 warnings
    keystone_defconfig (gcc-8): 2 warnings
    lpc32xx_defconfig (gcc-8): 2 warnings
    magician_defconfig (gcc-8): 2 warnings
    milbeaut_m10v_defconfig (gcc-8): 2 warnings
    mini2440_defconfig (gcc-8): 1 error, 3 warnings
    mmp2_defconfig (gcc-8): 2 warnings
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 30 warnings
    mv78xx0_defconfig (gcc-8): 2 warnings
    mvebu_v5_defconfig (gcc-8): 2 warnings
    mvebu_v7_defconfig (gcc-8): 2 warnings
    mxs_defconfig (gcc-8): 2 warnings
    neponset_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 4 warnings
    omap1_defconfig (gcc-8): 2 warnings
    omap2plus_defconfig (gcc-8): 3 warnings
    orion5x_defconfig (gcc-8): 2 warnings
    oxnas_v6_defconfig (gcc-8): 2 warnings
    palmz72_defconfig (gcc-8): 2 warnings
    pcm027_defconfig (gcc-8): 2 warnings
    prima2_defconfig (gcc-8): 2 warnings
    pxa168_defconfig (gcc-8): 2 warnings
    pxa3xx_defconfig (gcc-8): 2 warnings
    pxa910_defconfig (gcc-8): 2 warnings
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 4 warnings
    realview_defconfig (gcc-8): 2 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 2 warnings
    shannon_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 4 warnings
    sunxi_defconfig (gcc-8): 2 warnings
    tango4_defconfig (gcc-8): 3 warnings
    tegra_defconfig (gcc-8): 2 warnings
    trizeps4_defconfig (gcc-8): 2 warnings
    u300_defconfig (gcc-8): 4 warnings
    u8500_defconfig (gcc-8): 2 warnings
    versatile_defconfig (gcc-8): 2 warnings
    vexpress_defconfig (gcc-8): 2 warnings
    viper_defconfig (gcc-8): 2 warnings
    xcep_defconfig (gcc-8): 2 warnings
    zeus_defconfig (gcc-8): 2 warnings

i386:
    i386_defconfig (gcc-8): 30 warnings

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 31 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 2 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 2 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 1 warning
    bigsur_defconfig (gcc-8): 8 warnings
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 2 errors, 4 warnings
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 2 warnings
    db1xxx_defconfig (gcc-8): 2 warnings
    decstation_64_defconfig (gcc-8): 8 warnings
    decstation_defconfig (gcc-8): 4 warnings
    decstation_r4k_defconfig (gcc-8): 4 warnings
    e55_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 9 warnings
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 2 warnings
    ip22_defconfig (gcc-8): 4 warnings
    ip27_defconfig (gcc-8): 8 warnings
    ip28_defconfig (gcc-8): 6 warnings
    ip32_defconfig (gcc-8): 9 warnings
    jazz_defconfig (gcc-8): 5 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 6 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 8 warnings
    malta_defconfig (gcc-8): 4 warnings
    malta_kvm_defconfig (gcc-8): 4 warnings
    malta_kvm_guest_defconfig (gcc-8): 4 warnings
    malta_qemu_32r6_defconfig (gcc-8): 3 warnings
    maltaaprp_defconfig (gcc-8): 2 warnings
    maltasmvp_defconfig (gcc-8): 2 warnings
    maltasmvp_eva_defconfig (gcc-8): 2 warnings
    maltaup_defconfig (gcc-8): 2 warnings
    maltaup_xpa_defconfig (gcc-8): 4 warnings
    markeins_defconfig (gcc-8): 2 warnings
    mips_paravirt_defconfig (gcc-8): 6 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 4 errors, 2 warnings
    mtx1_defconfig (gcc-8): 4 warnings
    nlm_xlp_defconfig (gcc-8): 9 warnings
    nlm_xlr_defconfig (gcc-8): 6 warnings
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 4 warnings
    pistachio_defconfig (gcc-8): 4 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 2 warnings
    rb532_defconfig (gcc-8): 2 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 5 warnings
    rt305x_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 6 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 2 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 2 warnings

riscv:
    defconfig (gcc-8): 29 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 1 error, 2 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 29 warnings

Errors summary:

    3    collect2: error: ld returned 1 exit status
    1    clang: error: linker command failed with exit code 1 (use -v to se=
e invocation)
    1    arch/mips/pmcs-msp71xx/msp_prom.c:65:20: error: 'prom_mem_size' de=
fined but not used [-Werror=3Dunused-variable]
    1    arch/mips/pmcs-msp71xx/msp_prom.c:64:34: error: 'MAX_PROM_MEM' und=
eclared here (not in a function); did you mean 'DEV_PROP_MAX'?
    1    arch/mips/pmcs-msp71xx/msp_prom.c:64:20: error: 'prom_mem_base' de=
fined but not used [-Werror=3Dunused-variable]
    1    arch/mips/pmcs-msp71xx/msp_prom.c:380:16: error: unused variable '=
addr' [-Werror=3Dunused-variable]
    1    arch/mips/include/asm/octeon/cvmx-ipd.h:331:36: error: 'CVMX_PIP_S=
FT_RST' undeclared (first use in this function); did you mean 'CVMX_CIU_SOF=
T_RST'?
    1    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: error: storage siz=
e of 'pip_sft_rst' isn't known
    1    "error: actual length %d less than expected %ld\n",

Warnings summary:

    192  <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    128  WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    48   WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMB=
OL_GPL
    21   WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GP=
L
    10   WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYM=
BOL_GPL
    6    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a sta=
tic EXPORT_SYMBOL
    5    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    5    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_=
period' defined but not used [-Wunused-function]
    5    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid=
 for REMOTEPROC
    5    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' =
invalid for REMOTEPROC
    3    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' =
[-Wunused-variable]
    3    1 warning generated.
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    mm/shmem.c:2736:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3128:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1640:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    drivers/usb/gadget/udc/lpc32xx_udc.c:1255:11: warning: cast from p=
ointer to integer of different size [-Wpointer-to-int-cast]
    1    drivers/usb/gadget/udc/lpc32xx_udc.c:1154:11: warning: cast from p=
ointer to integer of different size [-Wpointer-to-int-cast]
    1    drivers/net/wireless/zydas/zd1211rw/zd_def.h:18:25: warning: forma=
t '%ld' expects argument of type 'long int', but argument 6 has type 'size_=
t' {aka 'unsigned int'} [-Wformat=3D]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    cc1: all warnings being treated as errors
    1    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: warning: unused va=
riable 'pip_sft_rst' [-Wunused-variable]
    1    arch/arm/configs/omap2plus_defconfig:484:warning: symbol value 'm'=
 invalid for REMOTEPROC
    1    arch/arm/configs/davinci_all_defconfig:231:warning: symbol value '=
m' invalid for REMOTEPROC
    1    2 warnings generated.
    1    .config:1179:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./.tmp.config.rCuyAUUg8L:4841:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.rCuyAUUg8L:4825:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.rCuyAUUg8L:4824:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.rCuyAUUg8L:4820:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.rCuyAUUg8L:4800:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.rCuyAUUg8L:4794:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.rCuyAUUg8L:4785:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.rCuyAUUg8L:4783:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.rCuyAUUg8L:4782:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.rCuyAUUg8L:4781:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.rCuyAUUg8L:4779:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.rCuyAUUg8L:4778:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.rCuyAUUg8L:4775:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.rCuyAUUg8L:4768:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.rCuyAUUg8L:4758:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.rCuyAUUg8L:4747:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.rCuyAUUg8L:4639:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.rCuyAUUg8L:4635:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.rCuyAUUg8L:4610:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.rCuyAUUg8L:4589:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.rCuyAUUg8L:4531:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.rCuyAUUg8L:4530:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.rCuyAUUg8L:4526:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.rCuyAUUg8L:4525:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.rCuyAUUg8L:4523:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.rCuyAUUg8L:4522:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.rCuyAUUg8L:4519:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.bCCUBa6Fom:4902:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.bCCUBa6Fom:4886:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.bCCUBa6Fom:4885:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.bCCUBa6Fom:4881:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.bCCUBa6Fom:4861:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.bCCUBa6Fom:4855:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.bCCUBa6Fom:4846:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.bCCUBa6Fom:4844:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.bCCUBa6Fom:4843:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.bCCUBa6Fom:4842:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.bCCUBa6Fom:4840:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.bCCUBa6Fom:4839:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.bCCUBa6Fom:4836:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.bCCUBa6Fom:4829:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.bCCUBa6Fom:4819:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.bCCUBa6Fom:4808:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.bCCUBa6Fom:4700:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.bCCUBa6Fom:4696:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.bCCUBa6Fom:4671:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.bCCUBa6Fom:4650:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.bCCUBa6Fom:4592:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.bCCUBa6Fom:4591:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.bCCUBa6Fom:4587:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.bCCUBa6Fom:4586:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.bCCUBa6Fom:4584:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.bCCUBa6Fom:4583:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.bCCUBa6Fom:4580:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.Uh2X3LfyyT:7917:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.Uh2X3LfyyT:7901:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.Uh2X3LfyyT:7900:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.Uh2X3LfyyT:7896:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.Uh2X3LfyyT:7876:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.Uh2X3LfyyT:7870:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.Uh2X3LfyyT:7861:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.Uh2X3LfyyT:7859:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.Uh2X3LfyyT:7858:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.Uh2X3LfyyT:7857:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.Uh2X3LfyyT:7855:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.Uh2X3LfyyT:7854:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.Uh2X3LfyyT:7851:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.Uh2X3LfyyT:7844:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.Uh2X3LfyyT:7834:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.Uh2X3LfyyT:7823:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.Uh2X3LfyyT:7715:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.Uh2X3LfyyT:7711:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.Uh2X3LfyyT:7686:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.Uh2X3LfyyT:7665:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.Uh2X3LfyyT:7607:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.Uh2X3LfyyT:7606:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.Uh2X3LfyyT:7602:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.Uh2X3LfyyT:7601:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.Uh2X3LfyyT:7599:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.Uh2X3LfyyT:7598:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.Uh2X3LfyyT:7595:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.IIViRYt2NN:3990:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IIViRYt2NN:3974:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.IIViRYt2NN:3973:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.IIViRYt2NN:3969:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.IIViRYt2NN:3949:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.IIViRYt2NN:3943:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.IIViRYt2NN:3934:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.IIViRYt2NN:3932:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.IIViRYt2NN:3931:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.IIViRYt2NN:3930:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.IIViRYt2NN:3928:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.IIViRYt2NN:3927:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.IIViRYt2NN:3924:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.IIViRYt2NN:3917:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.IIViRYt2NN:3907:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.IIViRYt2NN:3896:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IIViRYt2NN:3788:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.IIViRYt2NN:3784:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IIViRYt2NN:3759:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.IIViRYt2NN:3738:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.IIViRYt2NN:3680:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.IIViRYt2NN:3679:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.IIViRYt2NN:3675:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.IIViRYt2NN:3674:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.IIViRYt2NN:3672:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.IIViRYt2NN:3671:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.IIViRYt2NN:3668:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.7gZcv6uHVJ:8488:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.7gZcv6uHVJ:8472:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.7gZcv6uHVJ:8471:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.7gZcv6uHVJ:8467:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.7gZcv6uHVJ:8447:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.7gZcv6uHVJ:8441:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.7gZcv6uHVJ:8432:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.7gZcv6uHVJ:8430:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.7gZcv6uHVJ:8429:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.7gZcv6uHVJ:8428:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.7gZcv6uHVJ:8426:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.7gZcv6uHVJ:8425:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.7gZcv6uHVJ:8422:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.7gZcv6uHVJ:8415:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.7gZcv6uHVJ:8405:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.7gZcv6uHVJ:8394:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.7gZcv6uHVJ:8286:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.7gZcv6uHVJ:8282:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.7gZcv6uHVJ:8257:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.7gZcv6uHVJ:8236:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.7gZcv6uHVJ:8178:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.7gZcv6uHVJ:8177:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.7gZcv6uHVJ:8173:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.7gZcv6uHVJ:8172:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.7gZcv6uHVJ:8170:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.7gZcv6uHVJ:8169:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.7gZcv6uHVJ:8166:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.3AZ3pf5k41:1754:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.3AZ3pf5k41:1738:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.3AZ3pf5k41:1737:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.3AZ3pf5k41:1733:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.3AZ3pf5k41:1713:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.3AZ3pf5k41:1707:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.3AZ3pf5k41:1698:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.3AZ3pf5k41:1696:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.3AZ3pf5k41:1695:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.3AZ3pf5k41:1694:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.3AZ3pf5k41:1692:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.3AZ3pf5k41:1691:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.3AZ3pf5k41:1688:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.3AZ3pf5k41:1681:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.3AZ3pf5k41:1671:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.3AZ3pf5k41:1660:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.3AZ3pf5k41:1552:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.3AZ3pf5k41:1548:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.3AZ3pf5k41:1523:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.3AZ3pf5k41:1502:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.3AZ3pf5k41:1444:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.3AZ3pf5k41:1443:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.3AZ3pf5k41:1439:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.3AZ3pf5k41:1438:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.3AZ3pf5k41:1436:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.3AZ3pf5k41:1435:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.3AZ3pf5k41:1432:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.0GE7Q7Obue:3371:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.0GE7Q7Obue:3355:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.0GE7Q7Obue:3354:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.0GE7Q7Obue:3350:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.0GE7Q7Obue:3330:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.0GE7Q7Obue:3324:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.0GE7Q7Obue:3315:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.0GE7Q7Obue:3313:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.0GE7Q7Obue:3312:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.0GE7Q7Obue:3311:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.0GE7Q7Obue:3309:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.0GE7Q7Obue:3308:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.0GE7Q7Obue:3305:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.0GE7Q7Obue:3298:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.0GE7Q7Obue:3288:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.0GE7Q7Obue:3277:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.0GE7Q7Obue:3169:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.0GE7Q7Obue:3165:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.0GE7Q7Obue:3140:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.0GE7Q7Obue:3119:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.0GE7Q7Obue:3061:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.0GE7Q7Obue:3060:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.0GE7Q7Obue:3056:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.0GE7Q7Obue:3055:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.0GE7Q7Obue:3053:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.0GE7Q7Obue:3052:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.0GE7Q7Obue:3049:warning: override: reassigning to sy=
mbol BPF_SYSCALL

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 31 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.IIViRYt2NN:3668:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.IIViRYt2NN:3671:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.IIViRYt2NN:3672:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.IIViRYt2NN:3674:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.IIViRYt2NN:3675:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.IIViRYt2NN:3679:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.IIViRYt2NN:3680:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.IIViRYt2NN:3738:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.IIViRYt2NN:3759:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.IIViRYt2NN:3784:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.IIViRYt2NN:3788:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.IIViRYt2NN:3896:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.IIViRYt2NN:3907:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.IIViRYt2NN:3917:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.IIViRYt2NN:3924:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.IIViRYt2NN:3927:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.IIViRYt2NN:3928:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.IIViRYt2NN:3930:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.IIViRYt2NN:3931:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.IIViRYt2NN:3932:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.IIViRYt2NN:3934:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.IIViRYt2NN:3943:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.IIViRYt2NN:3949:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.IIViRYt2NN:3969:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.IIViRYt2NN:3973:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.IIViRYt2NN:3974:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.IIViRYt2NN:3990:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 9 warnings, 0 sectio=
n mismatches

Errors:
    clang: error: linker command failed with exit code 1 (use -v to see inv=
ocation)

Warnings:
    mm/shmem.c:2736:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1640:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3128:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section =
mismatches

Errors:
    collect2: error: ld returned 1 exit status

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    collect2: error: ld returned 1 exit status

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 section=
 mismatches

Errors:
    collect2: error: ld returned 1 exit status

Warnings:
    drivers/usb/gadget/udc/lpc32xx_udc.c:1154:11: warning: cast from pointe=
r to integer of different size [-Wpointer-to-int-cast]
    drivers/usb/gadget/udc/lpc32xx_udc.c:1255:11: warning: cast from pointe=
r to integer of different size [-Wpointer-to-int-cast]

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
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_perio=
d' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

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
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 4 warnings,=
 0 section mismatches

Errors:
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
    arch/mips/include/asm/octeon/cvmx-ipd.h:330:27: warning: unused variabl=
e 'pip_sft_rst' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_perio=
d' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    arch/arm/configs/davinci_all_defconfig:231:warning: symbol value 'm' in=
valid for REMOTEPROC
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static E=
XPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static E=
XPORT_SYMBOL

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static E=
XPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static E=
XPORT_SYMBOL

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static E=
XPORT_SYMBOL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static E=
XPORT_SYMBOL

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section mi=
smatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section =
mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 4 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 4 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 29 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.0GE7Q7Obue:3049:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.0GE7Q7Obue:3052:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.0GE7Q7Obue:3053:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.0GE7Q7Obue:3055:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.0GE7Q7Obue:3056:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.0GE7Q7Obue:3060:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.0GE7Q7Obue:3061:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.0GE7Q7Obue:3119:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.0GE7Q7Obue:3140:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.0GE7Q7Obue:3165:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.0GE7Q7Obue:3169:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.0GE7Q7Obue:3277:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.0GE7Q7Obue:3288:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.0GE7Q7Obue:3298:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.0GE7Q7Obue:3305:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.0GE7Q7Obue:3308:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.0GE7Q7Obue:3309:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.0GE7Q7Obue:3311:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.0GE7Q7Obue:3312:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.0GE7Q7Obue:3313:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.0GE7Q7Obue:3315:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.0GE7Q7Obue:3324:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.0GE7Q7Obue:3330:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.0GE7Q7Obue:3350:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.0GE7Q7Obue:3354:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.0GE7Q7Obue:3355:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.0GE7Q7Obue:3371:warning: override: reassigning to symbol =
USER_NS
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0=
 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    ./.tmp.config.Uh2X3LfyyT:7595:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.Uh2X3LfyyT:7598:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.Uh2X3LfyyT:7599:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.Uh2X3LfyyT:7601:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.Uh2X3LfyyT:7602:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.Uh2X3LfyyT:7606:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.Uh2X3LfyyT:7607:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.Uh2X3LfyyT:7665:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.Uh2X3LfyyT:7686:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.Uh2X3LfyyT:7711:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.Uh2X3LfyyT:7715:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.Uh2X3LfyyT:7823:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.Uh2X3LfyyT:7834:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.Uh2X3LfyyT:7844:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.Uh2X3LfyyT:7851:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.Uh2X3LfyyT:7854:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.Uh2X3LfyyT:7855:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.Uh2X3LfyyT:7857:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.Uh2X3LfyyT:7858:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.Uh2X3LfyyT:7859:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.Uh2X3LfyyT:7861:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.Uh2X3LfyyT:7870:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.Uh2X3LfyyT:7876:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.Uh2X3LfyyT:7896:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.Uh2X3LfyyT:7900:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.Uh2X3LfyyT:7901:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.Uh2X3LfyyT:7917:warning: override: reassigning to symbol =
USER_NS
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_perio=
d' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 30 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.rCuyAUUg8L:4519:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.rCuyAUUg8L:4522:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.rCuyAUUg8L:4523:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.rCuyAUUg8L:4525:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.rCuyAUUg8L:4526:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.rCuyAUUg8L:4530:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.rCuyAUUg8L:4531:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.rCuyAUUg8L:4589:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.rCuyAUUg8L:4610:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.rCuyAUUg8L:4635:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.rCuyAUUg8L:4639:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.rCuyAUUg8L:4747:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.rCuyAUUg8L:4758:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.rCuyAUUg8L:4768:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.rCuyAUUg8L:4775:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.rCuyAUUg8L:4778:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.rCuyAUUg8L:4779:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.rCuyAUUg8L:4781:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.rCuyAUUg8L:4782:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.rCuyAUUg8L:4783:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.rCuyAUUg8L:4785:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.rCuyAUUg8L:4794:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.rCuyAUUg8L:4800:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.rCuyAUUg8L:4820:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.rCuyAUUg8L:4824:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.rCuyAUUg8L:4825:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.rCuyAUUg8L:4841:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

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
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

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
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' [-Wun=
used-variable]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' [-Wun=
used-variable]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
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
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    {standard input}:134: Warning: macro instruction expanded into multiple=
 instructions
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 1 error, 3 warnings, 0 sect=
ion mismatches

Errors:
    "error: actual length %d less than expected %ld\n",

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    drivers/net/wireless/zydas/zd1211rw/zd_def.h:18:25: warning: format '%l=
d' expects argument of type 'long int', but argument 6 has type 'size_t' {a=
ka 'unsigned int'} [-Wformat=3D]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 2 warnings, 0 sec=
tion mismatches

Errors:
    arch/mips/pmcs-msp71xx/msp_prom.c:64:34: error: 'MAX_PROM_MEM' undeclar=
ed here (not in a function); did you mean 'DEV_PROP_MAX'?
    arch/mips/pmcs-msp71xx/msp_prom.c:380:16: error: unused variable 'addr'=
 [-Werror=3Dunused-variable]
    arch/mips/pmcs-msp71xx/msp_prom.c:65:20: error: 'prom_mem_size' defined=
 but not used [-Werror=3Dunused-variable]
    arch/mips/pmcs-msp71xx/msp_prom.c:64:20: error: 'prom_mem_base' defined=
 but not used [-Werror=3Dunused-variable]

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 3 warnings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 3 warnings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 =
warnings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 30 warn=
ings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    ./.tmp.config.7gZcv6uHVJ:8166:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.7gZcv6uHVJ:8169:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.7gZcv6uHVJ:8170:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.7gZcv6uHVJ:8172:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.7gZcv6uHVJ:8173:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.7gZcv6uHVJ:8177:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.7gZcv6uHVJ:8178:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.7gZcv6uHVJ:8236:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.7gZcv6uHVJ:8257:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.7gZcv6uHVJ:8282:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.7gZcv6uHVJ:8286:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.7gZcv6uHVJ:8394:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.7gZcv6uHVJ:8405:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.7gZcv6uHVJ:8415:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.7gZcv6uHVJ:8422:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.7gZcv6uHVJ:8425:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.7gZcv6uHVJ:8426:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.7gZcv6uHVJ:8428:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.7gZcv6uHVJ:8429:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.7gZcv6uHVJ:8430:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.7gZcv6uHVJ:8432:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.7gZcv6uHVJ:8441:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.7gZcv6uHVJ:8447:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.7gZcv6uHVJ:8467:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.7gZcv6uHVJ:8471:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.7gZcv6uHVJ:8472:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.7gZcv6uHVJ:8488:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_perio=
d' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 31 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.3AZ3pf5k41:1432:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.3AZ3pf5k41:1435:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.3AZ3pf5k41:1436:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.3AZ3pf5k41:1438:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.3AZ3pf5k41:1439:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.3AZ3pf5k41:1443:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.3AZ3pf5k41:1444:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.3AZ3pf5k41:1502:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.3AZ3pf5k41:1523:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.3AZ3pf5k41:1548:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.3AZ3pf5k41:1552:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.3AZ3pf5k41:1660:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.3AZ3pf5k41:1671:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.3AZ3pf5k41:1681:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.3AZ3pf5k41:1688:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.3AZ3pf5k41:1691:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.3AZ3pf5k41:1692:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.3AZ3pf5k41:1694:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.3AZ3pf5k41:1695:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.3AZ3pf5k41:1696:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.3AZ3pf5k41:1698:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.3AZ3pf5k41:1707:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.3AZ3pf5k41:1713:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.3AZ3pf5k41:1733:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.3AZ3pf5k41:1737:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.3AZ3pf5k41:1738:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.3AZ3pf5k41:1754:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    arch/arm/configs/omap2plus_defconfig:484:warning: symbol value 'm' inva=
lid for REMOTEPROC
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' [-Wun=
used-variable]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, =
0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_perio=
d' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
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
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

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
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1179:warning: override: UNWINDER_GUESS changes choice state

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
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
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
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 29 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.bCCUBa6Fom:4580:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.bCCUBa6Fom:4583:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.bCCUBa6Fom:4584:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.bCCUBa6Fom:4586:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.bCCUBa6Fom:4587:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.bCCUBa6Fom:4591:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.bCCUBa6Fom:4592:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.bCCUBa6Fom:4650:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.bCCUBa6Fom:4671:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.bCCUBa6Fom:4696:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.bCCUBa6Fom:4700:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.bCCUBa6Fom:4808:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.bCCUBa6Fom:4819:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.bCCUBa6Fom:4829:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.bCCUBa6Fom:4836:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.bCCUBa6Fom:4839:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.bCCUBa6Fom:4840:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.bCCUBa6Fom:4842:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.bCCUBa6Fom:4843:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.bCCUBa6Fom:4844:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.bCCUBa6Fom:4846:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.bCCUBa6Fom:4855:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.bCCUBa6Fom:4861:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.bCCUBa6Fom:4881:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.bCCUBa6Fom:4885:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.bCCUBa6Fom:4886:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.bCCUBa6Fom:4902:warning: override: reassigning to symbol =
USER_NS
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
clang-built-linux/5d805424.1c69fb81.88394.3a0d%40mx.google.com.
