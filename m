Return-Path: <clang-built-linux+bncBDT6TV45WMPRBAUYR7WAKGQEJY5T47I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EC7B80F9
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 20:42:11 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id n3sf2236452wmf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 11:42:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568918530; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJ3morvu1G8NF7Ycde6ettgaXbyGJTJePIcFb9AVP2C6jKaOzHV/pjo7sMOF0Ofg85
         lkco5Ecrgq8Mu2qGFiuDoI8tzNHw9KqXb28+OMax3v1ty0TJSe+4BCo5HvT7FFsDlxdG
         oiXS62+xqhLc/3o3NR2WZc1P0QlR8p8SO+CGRi35zNLETJp1l/9pC7VBeIc5F9UBqe1q
         YuZ9cD57+fVippqQHJtfRGWAmpYCUWubWmd2Tk90aHGjnrm/fPwKW1JdFU0nEboxQcF8
         cCLmU6UAL9OIOZ10W37gL+25o+Wdc0OWrThhF2rntTI6B1FtYp3Q7UIpwYru5+1Jp1Yw
         09bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=Z9CQvD/5hnJqq4NVMjQUaCqJmSpb7Yj97s83+UaX61I=;
        b=Erw05SB6oPPYHBSCeQvaLdjkWcypJCCTp3PQCMvOjPZtfdq2iwcH6qe4KvSh3AGEhF
         KsXjMaYR7uSGB//A9xR36hrKRnGAHiF2LXndgfLQfgBylAsy3sH0A7V5eY3HCU7buX6C
         xBM0lfRZbCFTN1/FWCa2Sp++pwdVH55ZsA62OcYaVgML+zJSxWWqgJKijvaDrqiKJfSv
         k2eG6nDHGdu3rp5EcOJEPM7NUOLN2UjRPC1FQ8TCL6HHDmPCDomQ2IeUDmZqDfOIlEaS
         pYX0qHIyt8aRR7CpxPqLZoaS+h2408R3eSlV0xnJ0I1mUsfcUsVIYKyRSsUfD/+5hITt
         kSpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=qac+pZPS;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9CQvD/5hnJqq4NVMjQUaCqJmSpb7Yj97s83+UaX61I=;
        b=BZzaCcfIQCxiwAirws0UxW/ayKjlgfKgoTCQy1l2i0wBRxjd+2fs3yKOnuzQJW1qfI
         +mjD5CIEYz8Vti4gBIr6N3Dc+qDWrTkfAObHFqzUkfNaeVdedF30T/mmfY5eMIn/FPLu
         gypG1vlfLK3ibQhIaCwdfv83UO5IwsGYuv4TB9yfjodSb/DV824TMf6qGDfdJrmuZWEZ
         TM3mLnFFG04flANMLLWemsa3qsivkogLub604CgWDjLGsq1pSpJ+Ed2nO5wWOaWL+RZw
         hML/su+AzmB4LhogJh5gOlKdgqtcECgZpiim+GYUv3P8vFGYklXn00PcEqbU3QbQXTBR
         eFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9CQvD/5hnJqq4NVMjQUaCqJmSpb7Yj97s83+UaX61I=;
        b=q7ptbPK0QAM8q2xYzKFyQ+0X+yX39puzwIDM6P7IWLWG3GFnkKbQiuY5RXLbLQplTK
         P2qbN4fY91bpWAeIO2Fd8AgM8gftHAKwu8cTHdmNxvP5eewmm4CfL0wLc5982XfFOJd4
         sXvY+FZlIbbQrl0mM51TQlo/yCGfFNSGnnJxIndjzoyQ1ihQ6cvj+XLFoirnh84P+E+N
         GHkJYsgDgOEGT2f4tuwA4BiKq587bA7+v4OUOrQcd8uKyEalqUk3z9j5ZEK1ygGM4Xvg
         MttS3LHm1uWQ8YsviTiEcO9fZvwXf13usGS8uX5xBmBKeXb+xI7qwjVazHIvcYxPE48P
         CyBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxt04Nj/9l14kG/ftdPHas/jS8wHhkkhJoM9ct/Q6fT2BMUmFz
	cwSHKfI7U+J5h+a94MqdxF8=
X-Google-Smtp-Source: APXvYqxJTJcKBJtSFGxYxsr50j0E6Yh7Py2lGp6PpyPGLymYSWkTquYCUSWSeQ6b1xmWFJtc8Ssf1g==
X-Received: by 2002:a1c:7409:: with SMTP id p9mr3950848wmc.162.1568918530625;
        Thu, 19 Sep 2019 11:42:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1ca:: with SMTP id r10ls1134797wra.6.gmail; Thu, 19 Sep
 2019 11:42:10 -0700 (PDT)
X-Received: by 2002:adf:f812:: with SMTP id s18mr3929888wrp.32.1568918530044;
        Thu, 19 Sep 2019 11:42:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568918530; cv=none;
        d=google.com; s=arc-20160816;
        b=RnYZCul0IXKkZ3vgFOGeiVI6K4reTa3Z0ra0IKO+hiLkoKb9YmYH4DGi90H3xX5nce
         M60t1Egcb/QyZfg6P8cw4KljHRa3wASjg/RarMbt39aQ37jyprQw2MsaLtTCfzbYetRC
         JvgNwfoaIBr+/A2+KVi7d8S899JOxM1szRBjLfCrucl7rQdXrQW1Of/4hk1j/XAz3B5v
         o/gAAVURgiKN6CNpaNSII4aUhE08KSSXtdEMlVcFN+v64Ja7iw/ViAnyyMipoD50E2Ez
         0qxkjQ+JvCDXyOj9zzV5cTJbJttZy4WYqfzWvRS4c5JvXMLMc3hndz73ljhDEzCS7SOu
         VDOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=yD+afyhVgVrOR1g3+86goSGAr6IcShZzDCfJkMTMYPQ=;
        b=iW8vB5GQiDtprdDEbncpPU/9SywrfGN8NdChpQZjFYrc/6llOjek5+Hyg1WtlvX83/
         /FoRITyhLTFtv2pND9t8MMpk3ELYwSYKble57ucY01aLwQcw2nHCAxWAjEQM6ycejQgg
         zpCxkE0c5IypCPEFnKANWgPwpvCUkQzlUzq8tb3g6qKiy0Awj2OQraNMOqO0yDRbEBZg
         6VWj+x/6orJ1uhCEwUp95nLyt+Yk65IxIkUG3C+SueYm15ttuTaSI5OmzPs+/OVw1Qmf
         NfHtRItmYgdRsA8F0CSFGm9K1thzQ6hxwh9DLkSP2XdocpB0nJSM0zQqg18/TgZ4aLkH
         lM6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=qac+pZPS;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id 5si715477wmf.1.2019.09.19.11.42.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 11:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id i18so4149275wru.11
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 11:42:09 -0700 (PDT)
X-Received: by 2002:adf:a50d:: with SMTP id i13mr2541690wrb.152.1568918527727;
        Thu, 19 Sep 2019 11:42:07 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id l1sm9200887wrb.1.2019.09.19.11.42.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 11:42:07 -0700 (PDT)
Message-ID: <5d83cbff.1c69fb81.bf544.a87e@mx.google.com>
Date: Thu, 19 Sep 2019 11:42:07 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20190919
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
Subject: next/master build: 218 builds: 6 failed, 212 passed, 11 errors,
 652 warnings (next-20190919)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=qac+pZPS;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 218 builds: 6 failed, 212 passed, 11 errors, 652 warning=
s (next-20190919)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190919/

Tree: next
Branch: master
Git Describe: next-20190919
Git Commit: eb2f12732f67eea9914f1c37c1f10d27127063c6
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
    nsim_hs_defconfig (gcc-8): 30 warnings
    nsim_hs_smp_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-8): 1 error, 13 warnings
    allmodconfig (gcc-8): 1 error, 1 warning
    defconfig (clang-8): 6 warnings
    defconfig (gcc-8): 5 warnings
    defconfig (gcc-8): 5 warnings
    defconfig (gcc-8): 5 warnings
    defconfig (gcc-8): 32 warnings

arm:
    allmodconfig (gcc-8): 1 error, 1 warning
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
    mini2440_defconfig (gcc-8): 1 error, 4 warnings
    mmp2_defconfig (gcc-8): 2 warnings
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 29 warnings
    mv78xx0_defconfig (gcc-8): 2 warnings
    mvebu_v5_defconfig (gcc-8): 2 warnings
    mvebu_v7_defconfig (gcc-8): 2 warnings
    mxs_defconfig (gcc-8): 3 warnings
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
    i386_defconfig (gcc-8): 29 warnings

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 30 warnings
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
    lemote2f_defconfig (gcc-8): 7 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 9 warnings
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
    nlm_xlp_defconfig (gcc-8): 10 warnings
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
    allmodconfig (gcc-8): 1 error, 1 warning
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
    1    ./.tmp.config.qIrdRMUrzh:4841:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.qIrdRMUrzh:4825:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.qIrdRMUrzh:4824:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.qIrdRMUrzh:4820:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.qIrdRMUrzh:4800:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.qIrdRMUrzh:4794:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.qIrdRMUrzh:4785:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.qIrdRMUrzh:4783:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.qIrdRMUrzh:4782:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.qIrdRMUrzh:4781:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.qIrdRMUrzh:4779:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.qIrdRMUrzh:4778:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.qIrdRMUrzh:4775:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.qIrdRMUrzh:4768:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.qIrdRMUrzh:4758:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.qIrdRMUrzh:4747:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.qIrdRMUrzh:4639:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.qIrdRMUrzh:4635:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.qIrdRMUrzh:4610:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.qIrdRMUrzh:4589:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.qIrdRMUrzh:4531:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.qIrdRMUrzh:4530:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.qIrdRMUrzh:4526:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.qIrdRMUrzh:4525:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.qIrdRMUrzh:4523:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.qIrdRMUrzh:4522:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.qIrdRMUrzh:4519:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.nagpAz6aXg:3990:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.nagpAz6aXg:3974:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.nagpAz6aXg:3973:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.nagpAz6aXg:3969:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.nagpAz6aXg:3949:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.nagpAz6aXg:3943:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.nagpAz6aXg:3934:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.nagpAz6aXg:3932:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.nagpAz6aXg:3931:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.nagpAz6aXg:3930:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.nagpAz6aXg:3928:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.nagpAz6aXg:3927:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.nagpAz6aXg:3924:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.nagpAz6aXg:3917:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.nagpAz6aXg:3907:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.nagpAz6aXg:3896:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.nagpAz6aXg:3788:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.nagpAz6aXg:3784:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.nagpAz6aXg:3759:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.nagpAz6aXg:3738:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.nagpAz6aXg:3680:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.nagpAz6aXg:3679:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.nagpAz6aXg:3675:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.nagpAz6aXg:3674:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.nagpAz6aXg:3672:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.nagpAz6aXg:3671:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.nagpAz6aXg:3668:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.fSo4LyAf79:1754:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.fSo4LyAf79:1738:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.fSo4LyAf79:1737:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.fSo4LyAf79:1733:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.fSo4LyAf79:1713:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.fSo4LyAf79:1707:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.fSo4LyAf79:1698:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.fSo4LyAf79:1696:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.fSo4LyAf79:1695:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.fSo4LyAf79:1694:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.fSo4LyAf79:1692:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.fSo4LyAf79:1691:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.fSo4LyAf79:1688:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.fSo4LyAf79:1681:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.fSo4LyAf79:1671:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.fSo4LyAf79:1660:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.fSo4LyAf79:1552:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.fSo4LyAf79:1548:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.fSo4LyAf79:1523:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.fSo4LyAf79:1502:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.fSo4LyAf79:1444:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.fSo4LyAf79:1443:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.fSo4LyAf79:1439:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.fSo4LyAf79:1438:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.fSo4LyAf79:1436:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.fSo4LyAf79:1435:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.fSo4LyAf79:1432:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.TkESKNu8eA:4902:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.TkESKNu8eA:4886:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.TkESKNu8eA:4885:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.TkESKNu8eA:4881:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.TkESKNu8eA:4861:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.TkESKNu8eA:4855:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.TkESKNu8eA:4846:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.TkESKNu8eA:4844:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.TkESKNu8eA:4843:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.TkESKNu8eA:4842:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.TkESKNu8eA:4840:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.TkESKNu8eA:4839:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.TkESKNu8eA:4836:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.TkESKNu8eA:4829:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.TkESKNu8eA:4819:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.TkESKNu8eA:4808:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.TkESKNu8eA:4700:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.TkESKNu8eA:4696:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.TkESKNu8eA:4671:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.TkESKNu8eA:4650:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.TkESKNu8eA:4592:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.TkESKNu8eA:4591:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.TkESKNu8eA:4587:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.TkESKNu8eA:4586:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.TkESKNu8eA:4584:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.TkESKNu8eA:4583:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.TkESKNu8eA:4580:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.DlniInaELq:3371:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.DlniInaELq:3355:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.DlniInaELq:3354:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.DlniInaELq:3350:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.DlniInaELq:3330:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.DlniInaELq:3324:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.DlniInaELq:3315:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.DlniInaELq:3313:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.DlniInaELq:3312:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.DlniInaELq:3311:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.DlniInaELq:3309:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.DlniInaELq:3308:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.DlniInaELq:3305:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.DlniInaELq:3298:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.DlniInaELq:3288:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.DlniInaELq:3277:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.DlniInaELq:3169:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.DlniInaELq:3165:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.DlniInaELq:3140:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.DlniInaELq:3119:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.DlniInaELq:3061:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.DlniInaELq:3060:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.DlniInaELq:3056:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.DlniInaELq:3055:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.DlniInaELq:3053:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.DlniInaELq:3052:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.DlniInaELq:3049:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.C9sn0PEUtz:7929:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.C9sn0PEUtz:7913:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.C9sn0PEUtz:7912:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.C9sn0PEUtz:7908:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.C9sn0PEUtz:7888:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.C9sn0PEUtz:7882:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.C9sn0PEUtz:7873:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.C9sn0PEUtz:7871:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.C9sn0PEUtz:7870:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.C9sn0PEUtz:7869:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.C9sn0PEUtz:7867:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.C9sn0PEUtz:7866:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.C9sn0PEUtz:7863:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.C9sn0PEUtz:7856:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.C9sn0PEUtz:7846:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.C9sn0PEUtz:7835:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.C9sn0PEUtz:7727:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.C9sn0PEUtz:7723:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.C9sn0PEUtz:7698:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.C9sn0PEUtz:7677:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.C9sn0PEUtz:7619:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.C9sn0PEUtz:7618:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.C9sn0PEUtz:7614:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.C9sn0PEUtz:7613:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.C9sn0PEUtz:7611:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.C9sn0PEUtz:7610:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.C9sn0PEUtz:7607:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5VcFOnm4EL:8489:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5VcFOnm4EL:8473:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5VcFOnm4EL:8472:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.5VcFOnm4EL:8468:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.5VcFOnm4EL:8448:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.5VcFOnm4EL:8442:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.5VcFOnm4EL:8433:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.5VcFOnm4EL:8431:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5VcFOnm4EL:8430:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.5VcFOnm4EL:8429:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.5VcFOnm4EL:8427:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.5VcFOnm4EL:8426:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.5VcFOnm4EL:8423:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5VcFOnm4EL:8416:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5VcFOnm4EL:8406:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.5VcFOnm4EL:8395:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5VcFOnm4EL:8287:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.5VcFOnm4EL:8283:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5VcFOnm4EL:8258:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.5VcFOnm4EL:8237:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5VcFOnm4EL:8179:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.5VcFOnm4EL:8178:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.5VcFOnm4EL:8174:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.5VcFOnm4EL:8173:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.5VcFOnm4EL:8171:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.5VcFOnm4EL:8170:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.5VcFOnm4EL:8167:warning: override: reassigning to sy=
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
    ./.tmp.config.nagpAz6aXg:3668:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.nagpAz6aXg:3671:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.nagpAz6aXg:3672:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.nagpAz6aXg:3674:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.nagpAz6aXg:3675:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.nagpAz6aXg:3679:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.nagpAz6aXg:3680:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.nagpAz6aXg:3738:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.nagpAz6aXg:3759:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.nagpAz6aXg:3784:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.nagpAz6aXg:3788:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.nagpAz6aXg:3896:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.nagpAz6aXg:3907:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.nagpAz6aXg:3917:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.nagpAz6aXg:3924:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.nagpAz6aXg:3927:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.nagpAz6aXg:3928:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.nagpAz6aXg:3930:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.nagpAz6aXg:3931:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.nagpAz6aXg:3932:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.nagpAz6aXg:3934:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.nagpAz6aXg:3943:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.nagpAz6aXg:3949:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.nagpAz6aXg:3969:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.nagpAz6aXg:3973:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.nagpAz6aXg:3974:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.nagpAz6aXg:3990:warning: override: reassigning to symbol =
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
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 section =
mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:11: warning: enumeration value 'T10_PI_TYPE0_PROTECTI=
ON' not handled in switch [-Wswitch]
    1 warning generated.
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section mi=
smatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 5 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_G=
PL

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 5 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
    ./.tmp.config.DlniInaELq:3049:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.DlniInaELq:3052:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.DlniInaELq:3053:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.DlniInaELq:3055:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.DlniInaELq:3056:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.DlniInaELq:3060:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.DlniInaELq:3061:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.DlniInaELq:3119:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.DlniInaELq:3140:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.DlniInaELq:3165:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.DlniInaELq:3169:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.DlniInaELq:3277:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.DlniInaELq:3288:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.DlniInaELq:3298:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.DlniInaELq:3305:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.DlniInaELq:3308:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.DlniInaELq:3309:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.DlniInaELq:3311:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.DlniInaELq:3312:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.DlniInaELq:3313:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.DlniInaELq:3315:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.DlniInaELq:3324:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.DlniInaELq:3330:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.DlniInaELq:3350:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.DlniInaELq:3354:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.DlniInaELq:3355:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.DlniInaELq:3371:warning: override: reassigning to symbol =
USER_NS
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L
    WARNING: "fuse_put_request" [fs/fuse/fuse] is a static EXPORT_SYMBOL_GP=
L

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 32 warnings, 0=
 section mismatches

Warnings:
    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for =
REMOTEPROC
    ./.tmp.config.C9sn0PEUtz:7607:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.C9sn0PEUtz:7610:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.C9sn0PEUtz:7611:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.C9sn0PEUtz:7613:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.C9sn0PEUtz:7614:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.C9sn0PEUtz:7618:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.C9sn0PEUtz:7619:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.C9sn0PEUtz:7677:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.C9sn0PEUtz:7698:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.C9sn0PEUtz:7723:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.C9sn0PEUtz:7727:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.C9sn0PEUtz:7835:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.C9sn0PEUtz:7846:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.C9sn0PEUtz:7856:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.C9sn0PEUtz:7863:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.C9sn0PEUtz:7866:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.C9sn0PEUtz:7867:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.C9sn0PEUtz:7869:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.C9sn0PEUtz:7870:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.C9sn0PEUtz:7871:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.C9sn0PEUtz:7873:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.C9sn0PEUtz:7882:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.C9sn0PEUtz:7888:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.C9sn0PEUtz:7908:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.C9sn0PEUtz:7912:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.C9sn0PEUtz:7913:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.C9sn0PEUtz:7929:warning: override: reassigning to symbol =
USER_NS
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 29 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.qIrdRMUrzh:4519:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.qIrdRMUrzh:4522:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.qIrdRMUrzh:4523:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.qIrdRMUrzh:4525:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.qIrdRMUrzh:4526:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.qIrdRMUrzh:4530:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.qIrdRMUrzh:4531:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.qIrdRMUrzh:4589:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.qIrdRMUrzh:4610:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.qIrdRMUrzh:4635:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.qIrdRMUrzh:4639:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.qIrdRMUrzh:4747:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.qIrdRMUrzh:4758:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.qIrdRMUrzh:4768:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.qIrdRMUrzh:4775:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.qIrdRMUrzh:4778:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.qIrdRMUrzh:4779:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.qIrdRMUrzh:4781:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.qIrdRMUrzh:4782:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.qIrdRMUrzh:4783:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.qIrdRMUrzh:4785:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.qIrdRMUrzh:4794:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.qIrdRMUrzh:4800:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.qIrdRMUrzh:4820:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.qIrdRMUrzh:4824:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.qIrdRMUrzh:4825:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.qIrdRMUrzh:4841:warning: override: reassigning to symbol =
USER_NS
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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 s=
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 29 warn=
ings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    ./.tmp.config.5VcFOnm4EL:8167:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5VcFOnm4EL:8170:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.5VcFOnm4EL:8171:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.5VcFOnm4EL:8173:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.5VcFOnm4EL:8174:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.5VcFOnm4EL:8178:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.5VcFOnm4EL:8179:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.5VcFOnm4EL:8237:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5VcFOnm4EL:8258:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.5VcFOnm4EL:8283:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5VcFOnm4EL:8287:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.5VcFOnm4EL:8395:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5VcFOnm4EL:8406:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.5VcFOnm4EL:8416:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5VcFOnm4EL:8423:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5VcFOnm4EL:8426:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.5VcFOnm4EL:8427:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.5VcFOnm4EL:8429:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.5VcFOnm4EL:8430:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.5VcFOnm4EL:8431:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5VcFOnm4EL:8433:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.5VcFOnm4EL:8442:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.5VcFOnm4EL:8448:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.5VcFOnm4EL:8468:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.5VcFOnm4EL:8472:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.5VcFOnm4EL:8473:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5VcFOnm4EL:8489:warning: override: reassigning to symbol =
USER_NS
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
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    WARNING: "fuse_put_request" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 10 warnings, 0 se=
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
    block/t10-pi.c:62:3: warning: enumeration value 'T10_PI_TYPE0_PROTECTIO=
N' not handled in switch [-Wswitch]
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
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 30 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.fSo4LyAf79:1432:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.fSo4LyAf79:1435:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.fSo4LyAf79:1436:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.fSo4LyAf79:1438:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.fSo4LyAf79:1439:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.fSo4LyAf79:1443:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.fSo4LyAf79:1444:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.fSo4LyAf79:1502:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.fSo4LyAf79:1523:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.fSo4LyAf79:1548:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.fSo4LyAf79:1552:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.fSo4LyAf79:1660:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.fSo4LyAf79:1671:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.fSo4LyAf79:1681:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.fSo4LyAf79:1688:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.fSo4LyAf79:1691:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.fSo4LyAf79:1692:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.fSo4LyAf79:1694:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.fSo4LyAf79:1695:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.fSo4LyAf79:1696:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.fSo4LyAf79:1698:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.fSo4LyAf79:1707:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.fSo4LyAf79:1713:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.fSo4LyAf79:1733:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.fSo4LyAf79:1737:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.fSo4LyAf79:1738:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.fSo4LyAf79:1754:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1179:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
    ./.tmp.config.TkESKNu8eA:4580:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.TkESKNu8eA:4583:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.TkESKNu8eA:4584:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.TkESKNu8eA:4586:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.TkESKNu8eA:4587:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.TkESKNu8eA:4591:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.TkESKNu8eA:4592:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.TkESKNu8eA:4650:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.TkESKNu8eA:4671:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.TkESKNu8eA:4696:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.TkESKNu8eA:4700:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.TkESKNu8eA:4808:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.TkESKNu8eA:4819:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.TkESKNu8eA:4829:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.TkESKNu8eA:4836:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.TkESKNu8eA:4839:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.TkESKNu8eA:4840:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.TkESKNu8eA:4842:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.TkESKNu8eA:4843:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.TkESKNu8eA:4844:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.TkESKNu8eA:4846:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.TkESKNu8eA:4855:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.TkESKNu8eA:4861:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.TkESKNu8eA:4881:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.TkESKNu8eA:4885:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.TkESKNu8eA:4886:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.TkESKNu8eA:4902:warning: override: reassigning to symbol =
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
clang-built-linux/5d83cbff.1c69fb81.bf544.a87e%40mx.google.com.
