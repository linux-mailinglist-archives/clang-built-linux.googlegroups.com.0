Return-Path: <clang-built-linux+bncBDT6TV45WMPRBVE3RPWAKGQE4DGSF5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D32B701F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 02:37:40 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id z1sf437109wrw.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 17:37:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568853460; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGp144ISKUVDxfAUNe+VfmF3DmLX7xrhfx3HYfViuBZ8F/Qmn8R2PpkFi4N23KHn3M
         bwzFYDi8DiJVDTY6pVp3LkNHIjHtrmU75fKBLQVQMkJIr94Xol58hpBLQQXYM4Jc/ue6
         5Whb+GG2c372CKNg/dEUMlJfT/lueIATAxacvnbaj+FIqmnVk+KRNfJhblJGL2cC6Xsm
         VVcpn5TJ5VDZNvWyNU8swolByYAPbGeBeZkhKBMKPFTvx9vT9lDXMt7B+I7WyvRC5Rdr
         T6qKnufTYfhjZno6wUP3vVk5iHhW7y1vtqsFgh6dQZAmoiRE1iOVI764X17AfM3WL8bC
         rvzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=J3+v9oHQHn2PHg2mfeS6Ju/P3JVjYdSgeT6BjDKlFds=;
        b=hp3yLVCDK+RHCF9fMCBslxVmxhDBSx+nKcr3AowYreB1N7xA4FrWa7JgCzc1LkW8d9
         W9FGazOXh94No4e1+xuzXXh0g+biJ0r8nZ50+OKRRnjvuTZSEIdoFjIEGOZlSM0mKYh1
         dnQq+FQFeUvTOnYBegpi0zMEbld8IlIr5vlSODfkqUe2YitlrUXkAqtDpV3+kMyk6Rwp
         xc/iv7kY+ulMu5/fKiLkJfKgcT5utxf9jjL/9NWB1NWX2U85Gf5bTqaPW39KmtmoV/v1
         P3xwcPebuNMQ0D32SAVKuw2qKwfamo42odFz3TtwWCqBhyURdROwl091bLlih2NXKE9a
         42+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=uk+labE6;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J3+v9oHQHn2PHg2mfeS6Ju/P3JVjYdSgeT6BjDKlFds=;
        b=YD6GjeuJfhIkIJFRFjcVk/CkrX2L5MZ6XWnOlNTW5lFCtNJcUy0TcgGeM3MH3IRNGX
         A8z5thZXmWhyeY7zqaG0b0izfEmc3vAlS3dcko4K8/saIdVi3ORhTb3RYDSoj1OGttpb
         3IdD60Et5KE1Czx0I/iqw7ZP5pLD+trxdTKskCfMg/ImhJ3BFPG+ZvZuBErktIQoW9YJ
         6XiZGwZmAvciQHsss8eDTKu4tR7xC4EI8E6nOtI/12ItSKMqyXfg/TzooDN7kO7UoMoo
         J5YuASqx7fOGTPzu3h7yh84LB2JqYfbjNLAcun3KIavuhXdip57GDJV2pS21RHRXEhJm
         Zx5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J3+v9oHQHn2PHg2mfeS6Ju/P3JVjYdSgeT6BjDKlFds=;
        b=W1NMQ2J9+TeFhn6yWLisGOr51Pvjj9Abvp6GcbIWWCTmPlVtmIlpiZrkiYMC4aaoTE
         tYW4eEfTE8U3G++RZ2yqJs+Wq8naMEFE/0szzrVUmcNbWy3hni73cOE47Q+T+aG+eFLF
         OLUdGkYjNlDEGCvu+KEHFFXVvxKPwWGd+eBZ1tNk51xL2vz++MvUAyij2+EDn3SxyfX2
         94uaGfnafBL0plEN8jz+vCVz7Qo2AE40pGHH5Ubx5U/tH1JgB+ToqQ+XJgca6w/O/d+n
         Bo24jflWci6oPKM9yuoNnYmjycXhf9xxoubXxpd4IP2ERV6XCX/GkjSyFmIr8uD6nqJX
         4lrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwKw2gaAMqVMdO5XJQ8XgVFYLmJ0jKyKJ0D43Z/6cxS1l+E6Fo
	rSQALB+3kiBaHS1UkC7N74M=
X-Google-Smtp-Source: APXvYqzRR1NtM2DHNIX53ngHoo8zE3gRrYzN1oxasAuxgwT8/6OND/txraPx+aFOxGmPdRPArupevQ==
X-Received: by 2002:adf:e94f:: with SMTP id m15mr4682560wrn.225.1568853460250;
        Wed, 18 Sep 2019 17:37:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c42:: with SMTP id n2ls310870wrt.8.gmail; Wed, 18 Sep
 2019 17:37:39 -0700 (PDT)
X-Received: by 2002:adf:f709:: with SMTP id r9mr5280270wrp.228.1568853459686;
        Wed, 18 Sep 2019 17:37:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568853459; cv=none;
        d=google.com; s=arc-20160816;
        b=ztxnIHO9CgTld7+vRN8lif7E5gkhja549XzQnHyrZF/4t9eMsbw3jsH3kNRKShxrnl
         HwRABRy/0h/oK2y37G4Ze3TO4vdmlNVnrovF0dFyV/hfNcz7Ky/VpZmatjBh0dzfU5YS
         L0fx7cuaohFUYpZoJUqJY51iql0NtPNkW+6jr7rAi2h3VqLfwAd6/SG93/xLqknantL5
         4rkDRLJgrs2HX5g7EtnIVRuPCj9ZG2r/nVbwRacd1JU+z09pKrakbMp522kCd26YWe1s
         f8ppc9RJUHsOAnf3yiioBsnQZplW9A6SjA3GRGQaOhhzbmQi16lCcW45wazrOsBFYBgb
         RPLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=A46Boop3zEqebkcx1zowCVfjvIuBX8dItsco19IZZ24=;
        b=Q+aI8NyMEOYRY0bBiXzNW7srt4oEjDi4938AjfJwyXY/CDQqLD/hgwmIXtjF5aK0sh
         5shh3uqYrvuKaZjEfMX8oq1k8FxeH5+rTPZsyGnjTZKPypwVI9YFuN/VRyI3WWW4oVSg
         7iHGe9oog6uGA3EXsG9BLmtdcQkBFbcNDsA2KILp0hHT71fOVW5jT8QxTqpCEYaYobj6
         Uy9BYkdKYFrfjuRhqL8RzQ+ao0SQEO96C1I8RpfsY9CArtccInVUq6RvhXG2rxYA9KTt
         AoFGuM4ONQSet00YPw1tZCtNEaYG7JV0aO9sVNzOIXaj4gwUSb1SWOc9b8/2va85LJAX
         9mbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=uk+labE6;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id q137si223180wme.3.2019.09.18.17.37.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 17:37:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Received: by mail-wm1-x32e.google.com with SMTP id v17so1899872wml.4
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 17:37:39 -0700 (PDT)
X-Received: by 2002:a7b:c306:: with SMTP id k6mr447387wmj.127.1568853457421;
        Wed, 18 Sep 2019 17:37:37 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id v7sm7855779wru.87.2019.09.18.17.37.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 17:37:36 -0700 (PDT)
Message-ID: <5d82cdd0.1c69fb81.2021f.459c@mx.google.com>
Date: Wed, 18 Sep 2019 17:37:36 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20190918
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
Subject: next/master build: 218 builds: 6 failed, 212 passed, 11 errors,
 655 warnings (next-20190918)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=uk+labE6;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 218 builds: 6 failed, 212 passed, 11 errors, 655 warning=
s (next-20190918)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190918/

Tree: next
Branch: master
Git Describe: next-20190918
Git Commit: 288b9117de5cc1b7fb80f54b7c17deed6f018641
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
    allmodconfig (clang-8): 1 error, 11 warnings
    allmodconfig (gcc-8): 1 error, 1 warning
    defconfig (gcc-8): 5 warnings
    defconfig (clang-8): 6 warnings
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
    multi_v7_defconfig (gcc-8): 30 warnings
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
    nlm_xlr_defconfig (gcc-8): 7 warnings
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
    5    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    5    drivers/video/fbdev/sa1100fb.c:975:21: warning: 'sa1100fb_min_dma_=
period' defined but not used [-Wunused-function]
    5    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid=
 for REMOTEPROC
    5    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' =
invalid for REMOTEPROC
    5    1 warning generated.
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
    1    ./.tmp.config.mN3VwvIwY4:8489:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.mN3VwvIwY4:8473:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.mN3VwvIwY4:8472:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.mN3VwvIwY4:8468:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.mN3VwvIwY4:8448:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.mN3VwvIwY4:8442:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.mN3VwvIwY4:8433:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.mN3VwvIwY4:8431:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.mN3VwvIwY4:8430:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.mN3VwvIwY4:8429:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.mN3VwvIwY4:8427:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.mN3VwvIwY4:8426:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.mN3VwvIwY4:8423:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.mN3VwvIwY4:8416:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.mN3VwvIwY4:8406:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.mN3VwvIwY4:8395:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.mN3VwvIwY4:8287:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.mN3VwvIwY4:8283:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.mN3VwvIwY4:8258:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.mN3VwvIwY4:8237:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.mN3VwvIwY4:8179:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.mN3VwvIwY4:8178:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.mN3VwvIwY4:8174:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.mN3VwvIwY4:8173:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.mN3VwvIwY4:8171:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.mN3VwvIwY4:8170:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.mN3VwvIwY4:8167:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.lqDltEqurZ:3371:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.lqDltEqurZ:3355:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.lqDltEqurZ:3354:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.lqDltEqurZ:3350:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.lqDltEqurZ:3330:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.lqDltEqurZ:3324:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.lqDltEqurZ:3315:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.lqDltEqurZ:3313:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.lqDltEqurZ:3312:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.lqDltEqurZ:3311:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.lqDltEqurZ:3309:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.lqDltEqurZ:3308:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.lqDltEqurZ:3305:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.lqDltEqurZ:3298:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.lqDltEqurZ:3288:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.lqDltEqurZ:3277:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.lqDltEqurZ:3169:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.lqDltEqurZ:3165:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.lqDltEqurZ:3140:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.lqDltEqurZ:3119:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.lqDltEqurZ:3061:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.lqDltEqurZ:3060:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.lqDltEqurZ:3056:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.lqDltEqurZ:3055:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.lqDltEqurZ:3053:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.lqDltEqurZ:3052:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.lqDltEqurZ:3049:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.azLzyNwkK0:3990:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.azLzyNwkK0:3974:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.azLzyNwkK0:3973:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.azLzyNwkK0:3969:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.azLzyNwkK0:3949:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.azLzyNwkK0:3943:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.azLzyNwkK0:3934:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.azLzyNwkK0:3932:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.azLzyNwkK0:3931:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.azLzyNwkK0:3930:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.azLzyNwkK0:3928:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.azLzyNwkK0:3927:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.azLzyNwkK0:3924:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.azLzyNwkK0:3917:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.azLzyNwkK0:3907:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.azLzyNwkK0:3896:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.azLzyNwkK0:3788:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.azLzyNwkK0:3784:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.azLzyNwkK0:3759:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.azLzyNwkK0:3738:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.azLzyNwkK0:3680:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.azLzyNwkK0:3679:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.azLzyNwkK0:3675:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.azLzyNwkK0:3674:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.azLzyNwkK0:3672:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.azLzyNwkK0:3671:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.azLzyNwkK0:3668:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.W7eaYZeH6z:4902:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.W7eaYZeH6z:4886:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.W7eaYZeH6z:4885:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.W7eaYZeH6z:4881:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.W7eaYZeH6z:4861:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.W7eaYZeH6z:4855:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.W7eaYZeH6z:4846:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.W7eaYZeH6z:4844:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.W7eaYZeH6z:4843:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.W7eaYZeH6z:4842:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.W7eaYZeH6z:4840:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.W7eaYZeH6z:4839:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.W7eaYZeH6z:4836:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.W7eaYZeH6z:4829:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.W7eaYZeH6z:4819:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.W7eaYZeH6z:4808:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.W7eaYZeH6z:4700:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.W7eaYZeH6z:4696:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.W7eaYZeH6z:4671:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.W7eaYZeH6z:4650:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.W7eaYZeH6z:4592:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.W7eaYZeH6z:4591:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.W7eaYZeH6z:4587:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.W7eaYZeH6z:4586:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.W7eaYZeH6z:4584:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.W7eaYZeH6z:4583:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.W7eaYZeH6z:4580:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.PVwidmtZDg:4841:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.PVwidmtZDg:4825:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.PVwidmtZDg:4824:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.PVwidmtZDg:4820:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.PVwidmtZDg:4800:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.PVwidmtZDg:4794:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.PVwidmtZDg:4785:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.PVwidmtZDg:4783:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.PVwidmtZDg:4782:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.PVwidmtZDg:4781:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.PVwidmtZDg:4779:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.PVwidmtZDg:4778:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.PVwidmtZDg:4775:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.PVwidmtZDg:4768:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.PVwidmtZDg:4758:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.PVwidmtZDg:4747:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.PVwidmtZDg:4639:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.PVwidmtZDg:4635:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.PVwidmtZDg:4610:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.PVwidmtZDg:4589:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.PVwidmtZDg:4531:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.PVwidmtZDg:4530:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.PVwidmtZDg:4526:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.PVwidmtZDg:4525:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.PVwidmtZDg:4523:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.PVwidmtZDg:4522:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.PVwidmtZDg:4519:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.KROBATWe0S:1754:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.KROBATWe0S:1738:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.KROBATWe0S:1737:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.KROBATWe0S:1733:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.KROBATWe0S:1713:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.KROBATWe0S:1707:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.KROBATWe0S:1698:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.KROBATWe0S:1696:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.KROBATWe0S:1695:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.KROBATWe0S:1694:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.KROBATWe0S:1692:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.KROBATWe0S:1691:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.KROBATWe0S:1688:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.KROBATWe0S:1681:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.KROBATWe0S:1671:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.KROBATWe0S:1660:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.KROBATWe0S:1552:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.KROBATWe0S:1548:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.KROBATWe0S:1523:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.KROBATWe0S:1502:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.KROBATWe0S:1444:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.KROBATWe0S:1443:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.KROBATWe0S:1439:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.KROBATWe0S:1438:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.KROBATWe0S:1436:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.KROBATWe0S:1435:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.KROBATWe0S:1432:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.HbiL8P1Eek:7928:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.HbiL8P1Eek:7912:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.HbiL8P1Eek:7911:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.HbiL8P1Eek:7907:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.HbiL8P1Eek:7887:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.HbiL8P1Eek:7881:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.HbiL8P1Eek:7872:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.HbiL8P1Eek:7870:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.HbiL8P1Eek:7869:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.HbiL8P1Eek:7868:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.HbiL8P1Eek:7866:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.HbiL8P1Eek:7865:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.HbiL8P1Eek:7862:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.HbiL8P1Eek:7855:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.HbiL8P1Eek:7845:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.HbiL8P1Eek:7834:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.HbiL8P1Eek:7726:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.HbiL8P1Eek:7722:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.HbiL8P1Eek:7697:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.HbiL8P1Eek:7676:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.HbiL8P1Eek:7618:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.HbiL8P1Eek:7617:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.HbiL8P1Eek:7613:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.HbiL8P1Eek:7612:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.HbiL8P1Eek:7610:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.HbiL8P1Eek:7609:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.HbiL8P1Eek:7606:warning: override: reassigning to sy=
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
    ./.tmp.config.azLzyNwkK0:3668:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.azLzyNwkK0:3671:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.azLzyNwkK0:3672:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.azLzyNwkK0:3674:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.azLzyNwkK0:3675:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.azLzyNwkK0:3679:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.azLzyNwkK0:3680:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.azLzyNwkK0:3738:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.azLzyNwkK0:3759:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.azLzyNwkK0:3784:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.azLzyNwkK0:3788:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.azLzyNwkK0:3896:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.azLzyNwkK0:3907:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.azLzyNwkK0:3917:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.azLzyNwkK0:3924:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.azLzyNwkK0:3927:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.azLzyNwkK0:3928:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.azLzyNwkK0:3930:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.azLzyNwkK0:3931:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.azLzyNwkK0:3932:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.azLzyNwkK0:3934:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.azLzyNwkK0:3943:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.azLzyNwkK0:3949:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.azLzyNwkK0:3969:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.azLzyNwkK0:3973:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.azLzyNwkK0:3974:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.azLzyNwkK0:3990:warning: override: reassigning to symbol =
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
allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 11 warnings, 0 secti=
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
    block/t10-pi.c:62:11: warning: enumeration value 'T10_PI_TYPE0_PROTECTI=
ON' not handled in switch [-Wswitch]
    1 warning generated.

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
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mis=
matches

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
    ./.tmp.config.lqDltEqurZ:3049:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.lqDltEqurZ:3052:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.lqDltEqurZ:3053:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.lqDltEqurZ:3055:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.lqDltEqurZ:3056:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.lqDltEqurZ:3060:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.lqDltEqurZ:3061:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.lqDltEqurZ:3119:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.lqDltEqurZ:3140:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.lqDltEqurZ:3165:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.lqDltEqurZ:3169:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.lqDltEqurZ:3277:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.lqDltEqurZ:3288:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.lqDltEqurZ:3298:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.lqDltEqurZ:3305:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.lqDltEqurZ:3308:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.lqDltEqurZ:3309:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.lqDltEqurZ:3311:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.lqDltEqurZ:3312:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.lqDltEqurZ:3313:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.lqDltEqurZ:3315:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.lqDltEqurZ:3324:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.lqDltEqurZ:3330:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.lqDltEqurZ:3350:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.lqDltEqurZ:3354:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.lqDltEqurZ:3355:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.lqDltEqurZ:3371:warning: override: reassigning to symbol =
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
    ./.tmp.config.HbiL8P1Eek:7606:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.HbiL8P1Eek:7609:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.HbiL8P1Eek:7610:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.HbiL8P1Eek:7612:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.HbiL8P1Eek:7613:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.HbiL8P1Eek:7617:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.HbiL8P1Eek:7618:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.HbiL8P1Eek:7676:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.HbiL8P1Eek:7697:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.HbiL8P1Eek:7722:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.HbiL8P1Eek:7726:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.HbiL8P1Eek:7834:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.HbiL8P1Eek:7845:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.HbiL8P1Eek:7855:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.HbiL8P1Eek:7862:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.HbiL8P1Eek:7865:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.HbiL8P1Eek:7866:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.HbiL8P1Eek:7868:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.HbiL8P1Eek:7869:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.HbiL8P1Eek:7870:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.HbiL8P1Eek:7872:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.HbiL8P1Eek:7881:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.HbiL8P1Eek:7887:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.HbiL8P1Eek:7907:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.HbiL8P1Eek:7911:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.HbiL8P1Eek:7912:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.HbiL8P1Eek:7928:warning: override: reassigning to symbol =
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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 30 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.PVwidmtZDg:4519:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.PVwidmtZDg:4522:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.PVwidmtZDg:4523:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.PVwidmtZDg:4525:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.PVwidmtZDg:4526:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.PVwidmtZDg:4530:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.PVwidmtZDg:4531:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.PVwidmtZDg:4589:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.PVwidmtZDg:4610:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.PVwidmtZDg:4635:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.PVwidmtZDg:4639:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.PVwidmtZDg:4747:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.PVwidmtZDg:4758:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.PVwidmtZDg:4768:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.PVwidmtZDg:4775:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.PVwidmtZDg:4778:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.PVwidmtZDg:4779:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.PVwidmtZDg:4781:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.PVwidmtZDg:4782:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.PVwidmtZDg:4783:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.PVwidmtZDg:4785:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.PVwidmtZDg:4794:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.PVwidmtZDg:4800:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.PVwidmtZDg:4820:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.PVwidmtZDg:4824:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.PVwidmtZDg:4825:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.PVwidmtZDg:4841:warning: override: reassigning to symbol =
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 30 warn=
ings, 0 section mismatches

Warnings:
    arch/arm/configs/multi_v7_defconfig:936:warning: symbol value 'm' inval=
id for REMOTEPROC
    ./.tmp.config.mN3VwvIwY4:8167:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.mN3VwvIwY4:8170:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.mN3VwvIwY4:8171:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.mN3VwvIwY4:8173:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.mN3VwvIwY4:8174:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.mN3VwvIwY4:8178:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.mN3VwvIwY4:8179:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.mN3VwvIwY4:8237:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.mN3VwvIwY4:8258:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.mN3VwvIwY4:8283:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.mN3VwvIwY4:8287:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.mN3VwvIwY4:8395:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.mN3VwvIwY4:8406:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.mN3VwvIwY4:8416:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.mN3VwvIwY4:8423:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.mN3VwvIwY4:8426:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.mN3VwvIwY4:8427:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.mN3VwvIwY4:8429:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.mN3VwvIwY4:8430:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.mN3VwvIwY4:8431:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.mN3VwvIwY4:8433:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.mN3VwvIwY4:8442:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.mN3VwvIwY4:8448:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.mN3VwvIwY4:8468:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.mN3VwvIwY4:8472:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.mN3VwvIwY4:8473:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.mN3VwvIwY4:8489:warning: override: reassigning to symbol =
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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
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
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 31 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.KROBATWe0S:1432:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.KROBATWe0S:1435:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.KROBATWe0S:1436:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.KROBATWe0S:1438:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.KROBATWe0S:1439:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.KROBATWe0S:1443:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.KROBATWe0S:1444:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.KROBATWe0S:1502:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.KROBATWe0S:1523:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.KROBATWe0S:1548:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.KROBATWe0S:1552:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.KROBATWe0S:1660:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.KROBATWe0S:1671:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.KROBATWe0S:1681:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.KROBATWe0S:1688:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.KROBATWe0S:1691:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.KROBATWe0S:1692:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.KROBATWe0S:1694:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.KROBATWe0S:1695:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.KROBATWe0S:1696:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.KROBATWe0S:1698:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.KROBATWe0S:1707:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.KROBATWe0S:1713:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.KROBATWe0S:1733:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.KROBATWe0S:1737:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.KROBATWe0S:1738:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.KROBATWe0S:1754:warning: override: reassigning to symbol =
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
    ./.tmp.config.W7eaYZeH6z:4580:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.W7eaYZeH6z:4583:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.W7eaYZeH6z:4584:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.W7eaYZeH6z:4586:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.W7eaYZeH6z:4587:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.W7eaYZeH6z:4591:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.W7eaYZeH6z:4592:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.W7eaYZeH6z:4650:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.W7eaYZeH6z:4671:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.W7eaYZeH6z:4696:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.W7eaYZeH6z:4700:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.W7eaYZeH6z:4808:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.W7eaYZeH6z:4819:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.W7eaYZeH6z:4829:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.W7eaYZeH6z:4836:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.W7eaYZeH6z:4839:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.W7eaYZeH6z:4840:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.W7eaYZeH6z:4842:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.W7eaYZeH6z:4843:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.W7eaYZeH6z:4844:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.W7eaYZeH6z:4846:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.W7eaYZeH6z:4855:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.W7eaYZeH6z:4861:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.W7eaYZeH6z:4881:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.W7eaYZeH6z:4885:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.W7eaYZeH6z:4886:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.W7eaYZeH6z:4902:warning: override: reassigning to symbol =
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
clang-built-linux/5d82cdd0.1c69fb81.2021f.459c%40mx.google.com.
