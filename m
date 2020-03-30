Return-Path: <clang-built-linux+bncBDT6TV45WMPRBCGDRD2AKGQEOLOBQNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F6C198179
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:42:49 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id z16sf15508549qkg.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:42:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585586568; cv=pass;
        d=google.com; s=arc-20160816;
        b=F2ZR+wn30AubIuT+pe/rEX5XuMk4jplDwyQJhkhEaMVsehOOdDqa/mZIauVgQeOPJq
         2XMWUAHweeaTelZdVeYSX6CaJZxYb7lEvHHPNrRun2DKPHe7qNKG+7AWYJF2fhtMcE9L
         /EDVEkcCr93kLX8F1G204NzQDnV59bUWvmyE3TTTVf+i7rKUCfBYTTml2GTkPvjQc73z
         Geq8pQ39XEq5fnPWbFPXNSx/S4oWblRAgCQZdy4XuaUXtv6LaBInHUBYRa3ucex5P91T
         EWJy+I3O5noc9b2zmngfYzIK2NqiORw98MURQUD5hhtb7j2rvfKog5LVIAQiwreGnlhp
         MtUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=S/GE/VQqzhouv8aoDprOqftJxmro4ZByo1tVSPXMMO0=;
        b=d4b0eXZjpJ3V6dLuiRvcvhyFDUpftqIdq0zR6+HkKA7zhVaISSxYJJ9yT95m5qk+AE
         6xvil47SnTNbBLCuVa9rvRU+LI1kAaJjVIwc1f/BBw6hd2KYRqX2Cg5reJ/ZpTelm4zE
         +f5bGqNZ9AQLZ076M2mKd06TqiS4Vz+oaf2dH7bmHco7MjJ/XRwRX4tsFUshSDqTmxlh
         TWC+wa4dZJc7GyDTPq/1jyyIW6U4NXCN7vDfgXc9/nHWLGH6gb2BNBvKiQQTEsX9Vl7j
         kdZBkOnuO93rs5vi2872FT5heE2Wf/DhoTkaLbu7gNxFkdSg66XDYosd1SL7g4h0VDJw
         rRnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=vsV7+v2B;
       spf=neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/GE/VQqzhouv8aoDprOqftJxmro4ZByo1tVSPXMMO0=;
        b=Vnad/7GPzmT2MHqhnlLvBPIJtcBX2KcheVZ4LjgyveFr920mK8yudnaioioc/0uhpO
         pIP2jWORkEC8iMpepR1+5iYiInhOpUhL0O93gPLgAmv3lxCa2kI4o9wrmrzeGg9xHTLE
         c634LA3/6cD4vFt13rYKjC5NGCV4mLIL0WdrKn1h5j6/EDlFoF9wBdKmCC2Vdy6+c5P3
         lH0H6o/fIL0ms+fNe9vsRrNe+HMv18MtAE23hpFB8h2zMxyGIXO92kAmidT0/DGXgbYi
         Djr6GbeG8N5jleTatdXFPTBSGGjnh/mmnesL+dRvJ4s6mImpDJnxaHM12FZvGsDerZ4y
         R1Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/GE/VQqzhouv8aoDprOqftJxmro4ZByo1tVSPXMMO0=;
        b=ALqwszvDAojZhHUVr044A3no1pXm64aJa0yWg/m66q/JtuUDeUK6jEzDUQOWC8n3rM
         UMCGbrmAaC6fihc2NGiRG8/TTHg1ZWnykt5qev8/pB/LSofQ3VdPNGolBzch16yrK8lo
         +WsljTApUK8U2EVPvPGxKCIH2EDhdcgHwTNAWjwmrM7I9QEqWw6SDycGtbYzoHoGZGzZ
         Tt42r6+o22gid4Mks4A7d2UtZ9mcz43RAYfrBV774ERWsPfh8J0x2ftZytrXrAxAp1ec
         RTU74DgDWOdkwXxQi8ChJL2W5/DcYYHWCsr4J7mZlvYsAs5RujP4dzqud4DdVtQaRZhU
         Z1ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3r6aPJPoG7AtIx+cQjY4ftzgKFJMaLNjsO9rxw1cQFC+tGpZJP
	b3rhb382r9TM+8Wwhd77pb4=
X-Google-Smtp-Source: ADFU+vvdcC2Vk4cgi2aCFin5pyfOlSIVZs3r8x2ZulX4gHHYWCnC4oEiKN3K1XFXRJaDngprF6gCZg==
X-Received: by 2002:ad4:4964:: with SMTP id p4mr12693917qvy.220.1585586568477;
        Mon, 30 Mar 2020 09:42:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls7128430qtc.6.gmail; Mon, 30 Mar
 2020 09:42:48 -0700 (PDT)
X-Received: by 2002:ac8:550b:: with SMTP id j11mr857095qtq.157.1585586567971;
        Mon, 30 Mar 2020 09:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586567; cv=none;
        d=google.com; s=arc-20160816;
        b=fAKtKY5azum1ucSCcmAWB1C1FuSzNvGFQ+vYukrQVOLNtlJRYMhv/uadCbsfqUjn0T
         Liir/WtnhkayUQ19AqCwwle6JKYYUi8Cksu/PPLvB5s4Otn0SCJjGLh/cdVksp14k29T
         vi/j2vR+9ms6KTLnpBSMU1qBgw+PFL4exWr1mPQJtzOnwYe547YdaMwHNCuaEpLH8hlG
         tpALCFWnAVh7nifOoruu7qqI2x7foKMUX8kj3c+LJUN/P5cuWfhITvja2DhX0D3Ya+aX
         /W/ztiWyt54D65hOFWjs1sOou5nbALTt3A9lH9lJOjeyKGquAt/bD7bqhgpX1NhCw0n6
         lcmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=zjayQL/6BIKFHElZH3Au48Goo1i+Y6FOTu5RAsANCEk=;
        b=YcqiNaUzLufA4Ms69T6VN/TeRaFn89mZW4RJ6v/+eAcD1CoXi3PWnrtbnQpbgI3vqb
         wFcz9gkaiW6da5lEpLCj1TFD62GFfBcU9lmHsrD7vn2vYSVxvlD5Nnt6ockvXnjNU9Hg
         Y4z+OmJf/GoY7OxUrR+On+SSIhQxSCfUud18pM+d9sz5ryWmbnAJLe6qqqHuimjNbXYd
         qVoBEy/6kJneM7Yw6QU2dekJbqcLRkdPVY6KyhgF9ooJIosfNV0xiSFY2ly9XrXOwRTp
         hIKCXiLhBad62fo+EUvfXeao/FdNvuKdcxzu1//1Uh0OIdxltlKFlGbrhS3XsOr3PiQM
         tstQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=vsV7+v2B;
       spf=neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m6si1133383qtk.2.2020.03.30.09.42.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:42:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id f206so8840653pfa.10
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:42:47 -0700 (PDT)
X-Received: by 2002:a62:170f:: with SMTP id 15mr145516pfx.12.1585586565907;
        Mon, 30 Mar 2020 09:42:45 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id k14sm10637346pfg.15.2020.03.30.09.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 09:42:44 -0700 (PDT)
Message-ID: <5e822184.1c69fb81.545e1.0473@mx.google.com>
Date: Mon, 30 Mar 2020 09:42:44 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200330
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
X-Kernelci-Tree: next
Subject: next/master build: 227 builds: 12 failed, 215 passed, 14 errors,
 610 warnings (next-20200330)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=vsV7+v2B;       spf=neutral (google.com: 2607:f8b0:4864:20::442 is
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

next/master build: 227 builds: 12 failed, 215 passed, 14 errors, 610 warnin=
gs (next-20200330)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200330/

Tree: next
Branch: master
Git Describe: next-20200330
Git Commit: 27a8b6c16291760cfb7d955c58d8e34dc27ec9dc
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm:
    allmodconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL
    mmp2_defconfig: (gcc-8) FAIL
    pxa168_defconfig: (gcc-8) FAIL
    pxa910_defconfig: (gcc-8) FAIL
    qcom_defconfig: (gcc-8) FAIL

mips:
    32r2el_defconfig+kselftest: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL

riscv:
    allnoconfig: (gcc-8) FAIL
    defconfig+kselftest: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

x86_64:
    defconfig: (clang-9) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (gcc-8): 30 warnings
    allmodconfig (clang-9): 29 warnings
    defconfig (gcc-8): 29 warnings
    defconfig (clang-9): 29 warnings
    defconfig (gcc-8): 29 warnings
    defconfig (gcc-8): 29 warnings
    defconfig (gcc-8): 29 warnings

arm:
    allmodconfig (clang-9): 1 error, 2 warnings
    allmodconfig (gcc-8): 1 error, 1 warning
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 5 warnings
    aspeed_g5_defconfig (gcc-8): 5 warnings
    aspeed_g5_defconfig (clang-9): 4 warnings
    assabet_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 14 warnings
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 3 warnings
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 3 warnings
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 3 warnings
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hackkit_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 2 warnings
    jornada720_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 1 warning
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 error, 1 warning
    moxart_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 5 warnings
    multi_v5_defconfig (clang-9): 4 warnings
    multi_v7_defconfig (gcc-8): 19 warnings
    multi_v7_defconfig (clang-9): 20 warnings
    multi_v7_defconfig (gcc-8): 19 warnings
    multi_v7_defconfig (gcc-8): 19 warnings
    multi_v7_defconfig (gcc-8): 19 warnings
    multi_v7_defconfig (gcc-8): 20 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 error, 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 error, 1 warning
    pxa_defconfig (gcc-8): 7 warnings
    qcom_defconfig (gcc-8): 1 error, 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tango4_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 2 warnings
    i386_defconfig (gcc-8): 2 warnings

mips:
    32r2el_defconfig (gcc-8): 3 warnings
    32r2el_defconfig (gcc-8): 1 error, 2 warnings
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
    ci20_defconfig (gcc-8): 3 warnings
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
    ip27_defconfig (gcc-8): 2 warnings
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
    rm200_defconfig (gcc-8): 3 warnings
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
    defconfig (gcc-8): 1 error
    rv32_defconfig (gcc-8): 6 warnings
    tinyconfig (gcc-8): 1 error

x86_64:
    allmodconfig (gcc-8): 1 warning
    allmodconfig (clang-9): 4 warnings
    defconfig (clang-9): 2 errors
    tinyconfig (gcc-8): 1 warning

Errors summary:

    2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98sp=
in_lock=E2=80=99?
    1    riscv64-linux-gnu-ld: kernel/bpf/bpf_lsm.o:(.rodata+0x0): undefine=
d reference to `bpf_tracing_func_proto'
    1    mm/hmm.c:206:8: error: implicit declaration of function =E2=80=98p=
md_pfn=E2=80=99; did you mean =E2=80=98pte_pfn=E2=80=99? [-Werror=3Dimplici=
t-function-declaration]
    1    mm/hmm.c:206:8: error: implicit declaration of function 'pmd_pfn' =
[-Werror,-Wimplicit-function-declaration]
    1    mips-linux-gnu-ld: kernel/bpf/bpf_lsm.o:(.rodata+0x0): undefined r=
eference to `bpf_tracing_func_proto'
    1    clang: error: assembler command failed with exit code 1 (use -v to=
 see invocation)
    1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_=
core.ko] undefined!
    1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] u=
ndefined!
    1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!
    1    /tmp/cpudeadline-635fe5.s:76: Error: `%ecx' not allowed with `orb'
    1    /home/buildslave/workspace/workspace/kernel-build@7/linux/build/..=
/drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
    1    /home/buildslave/workspace/workspace/kernel-build@5/linux/build/..=
/drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
    1    /home/buildslave/workspace/kernel-build/linux/build/../drivers/clk=
/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'

Warnings summary:

    124  <stdin>:1520:2: warning: #warning syscall process_madvise not impl=
emented [-Wcpp]
    112  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
    102  kernel/futex.c:1676:17: warning: =E2=80=98oldval=E2=80=99 may be u=
sed uninitialized in this function [-Wmaybe-uninitialized]
    98   arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_fo=
rmat): /soc/firmware:dma-ranges: empty "dma-ranges" property but its #addre=
ss-cells (2) differs from /soc (1)
    35   scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning=
 (dma_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property=
 but its #address-cells (2) differs from /soc (1)
    21   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    21   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    7    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    7    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    4    cc1: warning: function may return address of local variable [-Wret=
urn-local-addr]
    3    include/net/ip_vs.h:233:4: warning: =E2=80=98outer_proto=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    1 warning generated.
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame si=
ze of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-th=
an=3D]
    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call to =
__stack_chk_fail() with UACCESS enabled
    1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame s=
ize of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    cc1: some warnings being treated as errors
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1c5: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
cb: call to memset() with UACCESS enabled
    1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame=
()+0x1fa: call to memset() with UACCESS enabled
    1    arch/mips/configs/ci20_defconfig:178:warning: override: reassignin=
g to symbol LEDS_TRIGGER_ONESHOT
    1    .config:1166:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3a54): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()
    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x36f4): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e822184.1c69fb81.545e1.0473%40mx.google.com.
