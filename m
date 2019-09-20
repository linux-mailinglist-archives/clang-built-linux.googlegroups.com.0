Return-Path: <clang-built-linux+bncBDT6TV45WMPRB36ESTWAKGQEIZHHSZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42334B9785
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 21:03:12 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id t13sf4792753edr.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 12:03:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569006192; cv=pass;
        d=google.com; s=arc-20160816;
        b=YW6VFrh6wtxG/Yg67nxBH1X08I68k0jeEEuS/BZ75rqM40W9z/TjY75+l7er6Vn75Y
         NIng/xC6Cfd1FcB6tUrf5Wt7YVw7lBsN8QVv8FtCaQSct8kRce4MnJt5421slWvhro8M
         kv+ESRxIePocmaOu3QOKpauhkJiqluw7ANuyjbjBDGC1W0ryBQUtt0kfwW8Bejbngf2t
         rQC11/1e7AsT3qycBAIP3w64tSNHyAN8Y8WrrDI3/vxVZaXxpa+mXlA/L4K6Bg33/yN3
         nA/z/E4FnPV/MBzURyT9qKF1q+UESlAEQMDZGMlzfVR43VEhCrjCXIR6KBhdVLgAOSHU
         xmzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=bsFh3S5Xa7gXJSP7EeRE1qDjUDkKZ2vLWPQMIN3Xe00=;
        b=rBcpZrzpwFSLwVJt5AW820+on9ncmIucFL5AZMUIM5d0j9+hxQoisz6/U59/VEENcZ
         cZ+lQTIG7KOrodHr7mcRH4yJUE7yM6g4SmaoDg5Mkl9ASDVklmSHUrPU8n54m8eRrIK4
         mCeBwrVkAGG8dqeETcEkaiXSrIbi8RK3VZ+oJA0BsvM4zmtnHZ80K3unP5X32lZ2gVG3
         6ufpBzSDXCQoDXMjZzithC649mcJ6eS1xjBbH3pDdUwtSAA8RrB8+GpPN3HzHt6IvqN2
         FIAT7kgBrtvA+M7JyXSeGBk0JV4HUiwnnsv7Wq5yJ1rGoeuN65ehifj1GfhzbdsVjOPP
         Pb0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=nMPguOb5;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bsFh3S5Xa7gXJSP7EeRE1qDjUDkKZ2vLWPQMIN3Xe00=;
        b=iRJvouRSkMD3ihqGXTMVL2bEudySnR+tUUVw4BvmH+8JLEu1E04wiE8N/IOr37P5uV
         b5+ybQk/PI+j6uZaujfgOTl3MJnRZcRtuRlMyckjN6seupTDSR5B+uU0jbOewS7yQoc1
         4a6QJM1GAgWdufd15Uyl5PelTZH5Rk/Z5ayUNM2/Hd7kuDdBG+sunApDlhgqaUXocGWj
         7tpq3wKFRX5iqpak045W6u9f3ZNxAZ7DbxnOcSNedEFtPo48ptyTXcyj8scxayLdP8Py
         UcdJj5Vc6sJxlDni+gQRvnN8xrmmnjy4rYUwmO3QjJ5k2hoNAzqmi+WHBHgU6mtIxXru
         VjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bsFh3S5Xa7gXJSP7EeRE1qDjUDkKZ2vLWPQMIN3Xe00=;
        b=RsmlkzxvgmEUsoTCkRifVIfhCw8EvaSsUuX5ThL8bNO97rP1wrghOw8Ts9y4kYNZIf
         btO3/eJDwzk1+1yC+wgZH3LQzr12GajLeqDBI8V4xMOnihlpmQrnVQaBvjInSz61dtWr
         kROUWw6XWNi9a2TiA1kkO7qfB00IVbOhEM7uHrIVbbbPpAtPI5bA113g+gRXbTZKv3qN
         dmne1/zTa21ve9y9PIKLr2u9uf41E1uIh587FgDfiXaZltfEnYcLsAi0Wb71edYH4UOX
         +oedVWmdY167bM2G2M9yXFcOPnjpwNSfhTaCnwapOje0Kb9FCEhYPa37NGrTfB91prkX
         +4fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXFAWJiHSuGO5HdUge6xpE9Whu5/j/WAgqSUBwEMcURLVwxba1F
	OM8TFw+MD+kFZlST2lRlvW4=
X-Google-Smtp-Source: APXvYqz71fwecRwrlkQPxgzJqCmnT6uV3dlk383vtdKk95CjoZyX0Kbub+vsZqgll/b2tcJDoV/CDg==
X-Received: by 2002:a50:99da:: with SMTP id n26mr23494632edb.293.1569006191755;
        Fri, 20 Sep 2019 12:03:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7ac5:: with SMTP id k5ls1733861ejo.14.gmail; Fri, 20
 Sep 2019 12:03:11 -0700 (PDT)
X-Received: by 2002:a17:906:4a5a:: with SMTP id a26mr20684956ejv.154.1569006191167;
        Fri, 20 Sep 2019 12:03:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569006191; cv=none;
        d=google.com; s=arc-20160816;
        b=bFK0+9GbpzzC+uF4F2VgSriPOY9K1XLlhj2C/cBcfc8TBQ6KF90HisJstaHtPzCfuT
         SHnDBZ3i6lTimURYAfbBnEVOBt03aDCGGD3sDXSm9oxbI01wrsG0I9spf4bYop1guUCe
         g5Ev6WnfRe6RcY/T/pPCKz95ZAp6QA0H0tWUT1ZITwaYDed6ZsWF+PdYVWi7U21ZUoz4
         nVoq4baZjU/H+wkcQKoGU9obpU1TkG5Sw7Fx+h59XzpBsBPLAfZV5htwVU8U0lPZnC3/
         JP7P1R2VVXirQXOqq47MYUFebnhgUKgJz6zUbeAO2L4LxI4VN9XGHrBJA3lLOE6Jsk7d
         ktxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=2GfQMvLkcrTu5Pdh7HVQJYjOWQpXd/xwkvvLDE6C8v4=;
        b=zexgUkVTiDVVphwux/kBvhyxoBXkzpZfgin3HE1Jy+qcgxOlsvIhQ6ciSgk2LjWTpJ
         JXCTVzlwgYSjo/C/q5xXhICDSyWCp2ORWfo81jj1qM7kUoNAUoDf4P0SUPv7po70Qsdu
         kAqgQ5GDi+LXQcAnn48t77VB2IDr0OqEO8cs4eKXCnOan3++pPC4ix7276ntCMYPlOOF
         lJdp3N3+OhWzR7znlAf4a7oVB6Vk3Nu6/1gyXuAK+R1K4ej/SS2LiIeuynK2R+p+FG5p
         o6N1oFxolfwDjifcmN0Ey664FcYZavF+NKDnePViPcXmCxdnEoq+MAYgZAIFLwM4O9SW
         EA6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=nMPguOb5;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id d27si150875ejt.1.2019.09.20.12.03.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2019 12:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id m18so3272445wmc.1
        for <clang-built-linux@googlegroups.com>; Fri, 20 Sep 2019 12:03:11 -0700 (PDT)
X-Received: by 2002:a1c:4b10:: with SMTP id y16mr4334599wma.54.1569006188682;
        Fri, 20 Sep 2019 12:03:08 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id e17sm1901776wma.15.2019.09.20.12.03.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Sep 2019 12:03:07 -0700 (PDT)
Message-ID: <5d85226b.1c69fb81.2ca64.962c@mx.google.com>
Date: Fri, 20 Sep 2019 12:03:07 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20190920
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
Subject: next/master build: 218 builds: 6 failed, 212 passed, 11 errors,
 583 warnings (next-20190920)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=nMPguOb5;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 218 builds: 6 failed, 212 passed, 11 errors, 583 warning=
s (next-20190920)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190920/

Tree: next
Branch: master
Git Describe: next-20190920
Git Commit: b5b3bd898ba99fb0fb6aed3b23ec6353a1724d6f
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
    nsim_hs_defconfig (gcc-8): 29 warnings
    nsim_hs_smp_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-8): 1 error, 13 warnings
    allmodconfig (gcc-8): 1 error, 1 warning
    defconfig (gcc-8): 4 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 4 warnings
    defconfig (gcc-8): 4 warnings
    defconfig (gcc-8): 31 warnings

arm:
    allmodconfig (gcc-8): 1 error, 1 warning
    am200epdkit_defconfig (gcc-8): 2 warnings
    assabet_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 2 warnings
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
    ezx_defconfig (gcc-8): 2 warnings
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 2 warnings
    imote2_defconfig (gcc-8): 2 warnings
    imx_v4_v5_defconfig (gcc-8): 2 warnings
    imx_v6_v7_defconfig (gcc-8): 2 warnings
    integrator_defconfig (gcc-8): 2 warnings
    ixp4xx_defconfig (gcc-8): 2 warnings
    keystone_defconfig (gcc-8): 2 warnings
    lpc32xx_defconfig (gcc-8): 2 warnings
    magician_defconfig (gcc-8): 2 warnings
    milbeaut_m10v_defconfig (gcc-8): 2 warnings
    mini2440_defconfig (gcc-8): 1 error, 4 warnings
    mmp2_defconfig (gcc-8): 2 warnings
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 28 warnings
    mv78xx0_defconfig (gcc-8): 2 warnings
    mvebu_v5_defconfig (gcc-8): 2 warnings
    mvebu_v7_defconfig (gcc-8): 2 warnings
    mxs_defconfig (gcc-8): 3 warnings
    neponset_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 2 warnings
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
    qcom_defconfig (gcc-8): 2 warnings
    realview_defconfig (gcc-8): 2 warnings
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 2 warnings
    shannon_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 2 warnings
    sunxi_defconfig (gcc-8): 2 warnings
    tango4_defconfig (gcc-8): 2 warnings
    tegra_defconfig (gcc-8): 2 warnings
    trizeps4_defconfig (gcc-8): 2 warnings
    u300_defconfig (gcc-8): 2 warnings
    u8500_defconfig (gcc-8): 2 warnings
    versatile_defconfig (gcc-8): 2 warnings
    vexpress_defconfig (gcc-8): 2 warnings
    viper_defconfig (gcc-8): 2 warnings
    xcep_defconfig (gcc-8): 2 warnings
    zeus_defconfig (gcc-8): 2 warnings

i386:
    i386_defconfig (gcc-8): 27 warnings

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 30 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 2 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 2 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 1 warning
    bigsur_defconfig (gcc-8): 6 warnings
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
    fuloong2e_defconfig (gcc-8): 6 warnings
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 2 warnings
    ip22_defconfig (gcc-8): 2 warnings
    ip27_defconfig (gcc-8): 6 warnings
    ip28_defconfig (gcc-8): 6 warnings
    ip32_defconfig (gcc-8): 7 warnings
    jazz_defconfig (gcc-8): 3 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 7 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 7 warnings
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
    mips_paravirt_defconfig (gcc-8): 6 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 4 errors, 2 warnings
    mtx1_defconfig (gcc-8): 2 warnings
    nlm_xlp_defconfig (gcc-8): 7 warnings
    nlm_xlr_defconfig (gcc-8): 3 warnings
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 2 warnings
    pistachio_defconfig (gcc-8): 2 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 2 warnings
    rb532_defconfig (gcc-8): 2 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 4 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 2 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 2 warnings

riscv:
    defconfig (gcc-8): 27 warnings
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 1 error, 1 warning
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 27 warnings

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
    13   block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROT=
ECTION' not handled in switch [-Wswitch]
    10   WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYM=
BOL_GPL
    6    WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a sta=
tic EXPORT_SYMBOL
    6    1 warning generated.
    5    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_=
period' defined but not used [-Wunused-function]
    5    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid=
 for REMOTEPROC
    5    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' =
invalid for REMOTEPROC
    3    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' =
[-Wunused-variable]
    2    block/t10-pi.c:62:11: warning: enumeration value 'T10_PI_TYPE0_PRO=
TECTION' not handled in switch [-Wswitch]
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
    1    drivers/net/wireless/zydas/zd1211rw/zd_def.h:18:25: warning: forma=
t '%ld' expects argument of type 'long int', but argument 6 has type 'size_=
t' {aka 'unsigned int'} [-Wformat=3D]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
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
    1    ./.tmp.config.yZc1qryTGt:3990:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.yZc1qryTGt:3974:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.yZc1qryTGt:3973:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.yZc1qryTGt:3969:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.yZc1qryTGt:3949:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.yZc1qryTGt:3943:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.yZc1qryTGt:3934:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.yZc1qryTGt:3932:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.yZc1qryTGt:3931:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.yZc1qryTGt:3930:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.yZc1qryTGt:3928:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.yZc1qryTGt:3927:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.yZc1qryTGt:3924:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.yZc1qryTGt:3917:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.yZc1qryTGt:3907:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.yZc1qryTGt:3896:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.yZc1qryTGt:3788:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.yZc1qryTGt:3784:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.yZc1qryTGt:3759:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.yZc1qryTGt:3738:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.yZc1qryTGt:3680:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.yZc1qryTGt:3679:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.yZc1qryTGt:3675:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.yZc1qryTGt:3674:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.yZc1qryTGt:3672:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.yZc1qryTGt:3671:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.yZc1qryTGt:3668:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.ukveoQj9sD:1754:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.ukveoQj9sD:1738:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.ukveoQj9sD:1737:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.ukveoQj9sD:1733:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.ukveoQj9sD:1713:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.ukveoQj9sD:1707:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.ukveoQj9sD:1698:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.ukveoQj9sD:1696:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.ukveoQj9sD:1695:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.ukveoQj9sD:1694:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.ukveoQj9sD:1692:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.ukveoQj9sD:1691:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.ukveoQj9sD:1688:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.ukveoQj9sD:1681:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.ukveoQj9sD:1671:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.ukveoQj9sD:1660:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.ukveoQj9sD:1552:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.ukveoQj9sD:1548:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.ukveoQj9sD:1523:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.ukveoQj9sD:1502:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.ukveoQj9sD:1444:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.ukveoQj9sD:1443:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.ukveoQj9sD:1439:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.ukveoQj9sD:1438:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.ukveoQj9sD:1436:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.ukveoQj9sD:1435:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.ukveoQj9sD:1432:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.laepkqyIy7:8489:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.laepkqyIy7:8473:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.laepkqyIy7:8472:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.laepkqyIy7:8468:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.laepkqyIy7:8448:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.laepkqyIy7:8442:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.laepkqyIy7:8433:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.laepkqyIy7:8431:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.laepkqyIy7:8430:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.laepkqyIy7:8429:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.laepkqyIy7:8427:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.laepkqyIy7:8426:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.laepkqyIy7:8423:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.laepkqyIy7:8416:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.laepkqyIy7:8406:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.laepkqyIy7:8395:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.laepkqyIy7:8287:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.laepkqyIy7:8283:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.laepkqyIy7:8258:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.laepkqyIy7:8237:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.laepkqyIy7:8179:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.laepkqyIy7:8178:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.laepkqyIy7:8174:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.laepkqyIy7:8173:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.laepkqyIy7:8171:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.laepkqyIy7:8170:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.laepkqyIy7:8167:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.YvC8rNniTP:3381:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.YvC8rNniTP:3365:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.YvC8rNniTP:3364:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.YvC8rNniTP:3360:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.YvC8rNniTP:3340:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.YvC8rNniTP:3334:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.YvC8rNniTP:3325:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.YvC8rNniTP:3323:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.YvC8rNniTP:3322:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.YvC8rNniTP:3321:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.YvC8rNniTP:3319:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.YvC8rNniTP:3318:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.YvC8rNniTP:3315:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.YvC8rNniTP:3308:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.YvC8rNniTP:3298:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.YvC8rNniTP:3287:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.YvC8rNniTP:3179:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.YvC8rNniTP:3175:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.YvC8rNniTP:3150:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.YvC8rNniTP:3129:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.YvC8rNniTP:3071:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.YvC8rNniTP:3070:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.YvC8rNniTP:3066:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.YvC8rNniTP:3065:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.YvC8rNniTP:3063:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.YvC8rNniTP:3062:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.YvC8rNniTP:3059:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.JUo6e2u6ps:4902:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.JUo6e2u6ps:4886:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.JUo6e2u6ps:4885:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.JUo6e2u6ps:4881:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.JUo6e2u6ps:4861:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.JUo6e2u6ps:4855:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.JUo6e2u6ps:4846:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.JUo6e2u6ps:4844:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.JUo6e2u6ps:4843:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.JUo6e2u6ps:4842:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.JUo6e2u6ps:4840:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.JUo6e2u6ps:4839:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.JUo6e2u6ps:4836:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.JUo6e2u6ps:4829:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.JUo6e2u6ps:4819:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.JUo6e2u6ps:4808:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.JUo6e2u6ps:4700:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.JUo6e2u6ps:4696:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.JUo6e2u6ps:4671:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.JUo6e2u6ps:4650:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.JUo6e2u6ps:4592:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.JUo6e2u6ps:4591:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.JUo6e2u6ps:4587:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.JUo6e2u6ps:4586:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.JUo6e2u6ps:4584:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.JUo6e2u6ps:4583:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.JUo6e2u6ps:4580:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.EVohmfkygS:7929:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.EVohmfkygS:7913:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.EVohmfkygS:7912:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.EVohmfkygS:7908:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.EVohmfkygS:7888:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.EVohmfkygS:7882:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.EVohmfkygS:7873:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.EVohmfkygS:7871:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.EVohmfkygS:7870:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.EVohmfkygS:7869:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.EVohmfkygS:7867:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.EVohmfkygS:7866:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.EVohmfkygS:7863:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.EVohmfkygS:7856:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.EVohmfkygS:7846:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.EVohmfkygS:7835:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.EVohmfkygS:7727:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.EVohmfkygS:7723:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.EVohmfkygS:7698:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.EVohmfkygS:7677:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.EVohmfkygS:7619:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.EVohmfkygS:7618:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.EVohmfkygS:7614:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.EVohmfkygS:7613:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.EVohmfkygS:7611:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.EVohmfkygS:7610:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.EVohmfkygS:7607:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.1apvxfLOnS:4841:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.1apvxfLOnS:4825:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.1apvxfLOnS:4824:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.1apvxfLOnS:4820:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.1apvxfLOnS:4800:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.1apvxfLOnS:4794:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.1apvxfLOnS:4785:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.1apvxfLOnS:4783:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.1apvxfLOnS:4782:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.1apvxfLOnS:4781:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.1apvxfLOnS:4779:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.1apvxfLOnS:4778:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.1apvxfLOnS:4775:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.1apvxfLOnS:4768:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.1apvxfLOnS:4758:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.1apvxfLOnS:4747:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.1apvxfLOnS:4639:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.1apvxfLOnS:4635:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.1apvxfLOnS:4610:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.1apvxfLOnS:4589:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.1apvxfLOnS:4531:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.1apvxfLOnS:4530:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.1apvxfLOnS:4526:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.1apvxfLOnS:4525:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.1apvxfLOnS:4523:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.1apvxfLOnS:4522:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.1apvxfLOnS:4519:warning: override: reassigning to sy=
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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 30 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.yZc1qryTGt:3668:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.yZc1qryTGt:3671:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.yZc1qryTGt:3672:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.yZc1qryTGt:3674:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.yZc1qryTGt:3675:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.yZc1qryTGt:3679:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.yZc1qryTGt:3680:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.yZc1qryTGt:3738:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.yZc1qryTGt:3759:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.yZc1qryTGt:3784:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.yZc1qryTGt:3788:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.yZc1qryTGt:3896:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.yZc1qryTGt:3907:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.yZc1qryTGt:3917:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.yZc1qryTGt:3924:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.yZc1qryTGt:3927:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.yZc1qryTGt:3928:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.yZc1qryTGt:3930:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.yZc1qryTGt:3931:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.yZc1qryTGt:3932:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.yZc1qryTGt:3934:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.yZc1qryTGt:3943:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.yZc1qryTGt:3949:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.yZc1qryTGt:3969:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.yZc1qryTGt:3973:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.yZc1qryTGt:3974:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.yZc1qryTGt:3990:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 13 warnings, 0 secti=
on mismatches

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
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
    1 warning generated.
    block/t10-pi.c:62:11: warning: enumeration value 'T10_PI_TYPE0_PROTECTI=
ON' not handled in switch [-Wswitch]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mis=
matches

Errors:
    collect2: error: ld returned 1 exit status

Warnings:
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    collect2: error: ld returned 1 exit status

Warnings:
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    collect2: error: ld returned 1 exit status

Warnings:
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]

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
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section =
mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:11: warning: enumeration value 'T10_PI_TYPE0_PROTECTI=
ON' not handled in switch [-Wswitch]
    1 warning generated.
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 4 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 4 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.YvC8rNniTP:3059:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.YvC8rNniTP:3062:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.YvC8rNniTP:3063:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.YvC8rNniTP:3065:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.YvC8rNniTP:3066:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.YvC8rNniTP:3070:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.YvC8rNniTP:3071:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.YvC8rNniTP:3129:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.YvC8rNniTP:3150:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.YvC8rNniTP:3175:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.YvC8rNniTP:3179:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.YvC8rNniTP:3287:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.YvC8rNniTP:3298:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.YvC8rNniTP:3308:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.YvC8rNniTP:3315:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.YvC8rNniTP:3318:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.YvC8rNniTP:3319:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.YvC8rNniTP:3321:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.YvC8rNniTP:3322:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.YvC8rNniTP:3323:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.YvC8rNniTP:3325:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.YvC8rNniTP:3334:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.YvC8rNniTP:3340:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.YvC8rNniTP:3360:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.YvC8rNniTP:3364:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.YvC8rNniTP:3365:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.YvC8rNniTP:3381:warning: override: reassigning to symbol =
USER_NS

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0=
 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    ./.tmp.config.EVohmfkygS:7607:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.EVohmfkygS:7610:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.EVohmfkygS:7611:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.EVohmfkygS:7613:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.EVohmfkygS:7614:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.EVohmfkygS:7618:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.EVohmfkygS:7619:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.EVohmfkygS:7677:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.EVohmfkygS:7698:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.EVohmfkygS:7723:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.EVohmfkygS:7727:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.EVohmfkygS:7835:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.EVohmfkygS:7846:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.EVohmfkygS:7856:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.EVohmfkygS:7863:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.EVohmfkygS:7866:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.EVohmfkygS:7867:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.EVohmfkygS:7869:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.EVohmfkygS:7870:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.EVohmfkygS:7871:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.EVohmfkygS:7873:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.EVohmfkygS:7882:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.EVohmfkygS:7888:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.EVohmfkygS:7908:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.EVohmfkygS:7912:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.EVohmfkygS:7913:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.EVohmfkygS:7929:warning: override: reassigning to symbol =
USER_NS
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
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
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 27 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.1apvxfLOnS:4519:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.1apvxfLOnS:4522:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.1apvxfLOnS:4523:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.1apvxfLOnS:4525:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.1apvxfLOnS:4526:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.1apvxfLOnS:4530:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.1apvxfLOnS:4531:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.1apvxfLOnS:4589:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.1apvxfLOnS:4610:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.1apvxfLOnS:4635:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.1apvxfLOnS:4639:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.1apvxfLOnS:4747:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.1apvxfLOnS:4758:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.1apvxfLOnS:4768:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.1apvxfLOnS:4775:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.1apvxfLOnS:4778:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.1apvxfLOnS:4779:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.1apvxfLOnS:4781:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.1apvxfLOnS:4782:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.1apvxfLOnS:4783:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.1apvxfLOnS:4785:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.1apvxfLOnS:4794:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.1apvxfLOnS:4800:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.1apvxfLOnS:4820:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.1apvxfLOnS:4824:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.1apvxfLOnS:4825:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.1apvxfLOnS:4841:warning: override: reassigning to symbol =
USER_NS

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sectio=
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
    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' [-Wun=
used-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' [-Wun=
used-variable]
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
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 1 error, 4 warnings, 0 sect=
ion mismatches

Errors:
    "error: actual length %d less than expected %ld\n",

Warnings:
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 28 warn=
ings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    ./.tmp.config.laepkqyIy7:8167:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.laepkqyIy7:8170:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.laepkqyIy7:8171:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.laepkqyIy7:8173:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.laepkqyIy7:8174:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.laepkqyIy7:8178:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.laepkqyIy7:8179:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.laepkqyIy7:8237:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.laepkqyIy7:8258:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.laepkqyIy7:8283:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.laepkqyIy7:8287:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.laepkqyIy7:8395:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.laepkqyIy7:8406:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.laepkqyIy7:8416:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.laepkqyIy7:8423:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.laepkqyIy7:8426:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.laepkqyIy7:8427:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.laepkqyIy7:8429:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.laepkqyIy7:8430:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.laepkqyIy7:8431:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.laepkqyIy7:8433:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.laepkqyIy7:8442:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.laepkqyIy7:8448:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.laepkqyIy7:8468:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.laepkqyIy7:8472:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.laepkqyIy7:8473:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.laepkqyIy7:8489:warning: override: reassigning to symbol =
USER_NS

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
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section =
mismatches

Warnings:
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 29 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.ukveoQj9sD:1432:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.ukveoQj9sD:1435:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.ukveoQj9sD:1436:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.ukveoQj9sD:1438:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.ukveoQj9sD:1439:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.ukveoQj9sD:1443:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.ukveoQj9sD:1444:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.ukveoQj9sD:1502:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.ukveoQj9sD:1523:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.ukveoQj9sD:1548:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.ukveoQj9sD:1552:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.ukveoQj9sD:1660:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.ukveoQj9sD:1671:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.ukveoQj9sD:1681:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.ukveoQj9sD:1688:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.ukveoQj9sD:1691:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.ukveoQj9sD:1692:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.ukveoQj9sD:1694:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.ukveoQj9sD:1695:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.ukveoQj9sD:1696:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.ukveoQj9sD:1698:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.ukveoQj9sD:1707:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.ukveoQj9sD:1713:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.ukveoQj9sD:1733:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.ukveoQj9sD:1737:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.ukveoQj9sD:1738:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.ukveoQj9sD:1754:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/fw/arc/memory.c:163:16: warning: unused variable 'addr' [-Wun=
used-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 27 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.JUo6e2u6ps:4580:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.JUo6e2u6ps:4583:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.JUo6e2u6ps:4584:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.JUo6e2u6ps:4586:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.JUo6e2u6ps:4587:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.JUo6e2u6ps:4591:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.JUo6e2u6ps:4592:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.JUo6e2u6ps:4650:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.JUo6e2u6ps:4671:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.JUo6e2u6ps:4696:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.JUo6e2u6ps:4700:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.JUo6e2u6ps:4808:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.JUo6e2u6ps:4819:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.JUo6e2u6ps:4829:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.JUo6e2u6ps:4836:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.JUo6e2u6ps:4839:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.JUo6e2u6ps:4840:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.JUo6e2u6ps:4842:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.JUo6e2u6ps:4843:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.JUo6e2u6ps:4844:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.JUo6e2u6ps:4846:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.JUo6e2u6ps:4855:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.JUo6e2u6ps:4861:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.JUo6e2u6ps:4881:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.JUo6e2u6ps:4885:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.JUo6e2u6ps:4886:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.JUo6e2u6ps:4902:warning: override: reassigning to symbol =
USER_NS

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
clang-built-linux/5d85226b.1c69fb81.2ca64.962c%40mx.google.com.
