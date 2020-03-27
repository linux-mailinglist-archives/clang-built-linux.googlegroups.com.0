Return-Path: <clang-built-linux+bncBDT6TV45WMPRBRPK67ZQKGQEWEBL3BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id D3388195764
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 13:44:54 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id j88sf8765518ilg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 05:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585313093; cv=pass;
        d=google.com; s=arc-20160816;
        b=UxuxqNXv0afFClhaCz6i9JIq51c2LBE2ttXQRd2VH021pl3U7A41e9SyvbtTUAUm2j
         JCXeFSabLtRkuFvDS4SGCIXBVuxULqF09bT7u8atfyu10Ax3JWgNAVoYs1bX9lV0ozxB
         ya29Svd9t92L+34aKJMDHI3wp6G4nkueyZzczFHcMgQxOiBiY+94iwfBNbpcMicvW/Ul
         8nFXsluS+weDpP107IAEKABA0xjzDbIM9iEGq73t9n3o3XFQljNfrTyq0sgI1da/+4Gm
         O/sVps++ypbqZb4ETL39Cu8eTjetFL39XNDU+uAlyRpwUkkncJ6zUd5+OrEEJ/4CCQsW
         Bo0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=Uqa/YS6fPkmZjNT+9XRyzBPbUM9mz/aBYAEYBR66hHk=;
        b=kJI7N26xt/x4W6akMl5QG3/ClqkctovjWyeOWNLqKwLGZc+sUrws/pYm4eiWO5xhMq
         yZEjnrlpoJawup9gpbKnCu5+nIy2qz4p+gz7TzDtKrJ9gUhHxw/RMTCdR9UWidX1eECR
         UkbhaDc9dnFDmxfptZLn5Dn50vtnuqVGD+FlxghQzAhD5tsOjtVSFbcZaxWvb4fSTXdg
         lIkGS4RH7L7cGcYKyMNMqddGfjWOj8qRMzfWHohFOo+ahbsNAvf1TSHmBpobHzVhQDe3
         ZRUG+zau7xQ5SXBnFjKfTVa54l4QCP5A/2SNbaQE2p1VUKCsUVO+YLZD0wgaFV+CHBA6
         FY+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=WqL89udz;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uqa/YS6fPkmZjNT+9XRyzBPbUM9mz/aBYAEYBR66hHk=;
        b=WHdTBYICKD9IVNctWK3HjHrYOxzn7RVqV5/nLc/Ln9DG8TqIvFIHv6uzh/nb77jmZN
         nbusE5oIJtDYDZCyiu1E8YAeAC9c7ul/w8x2ac9QSaH2LYrp8dp7GuooMKlhJYaGOMyY
         e3wieN2rX4MghfcqxrjXAxksyR6xlvmGFAsPV6fNfOEC95+ik3Kh7KOhLEzMc8x8S353
         kLGwSTIeXuTbyScnonXTbj1Kgt1n5X16Sn1DYnbQuhJo3TMe4ugFKjFl9Tm07svFMF3x
         w8r/oAZbant7PMK2UdgDcy4Tm36mna9sg31Nag3M2/73NJZtEGs9JyZ3Yo1zcOAgPtDb
         h9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uqa/YS6fPkmZjNT+9XRyzBPbUM9mz/aBYAEYBR66hHk=;
        b=psWOGsmgJVouGp2kBuSVLvKWAlIBvSnxcANjHDYvoSWg8eTSrjZONVm5E4VJ08F5wl
         z2d1ySbU3sCVihMAwDszBWX5my2H+kidhJg4cwEPieJpTGyL2vHjXfkenK7+Oc7xD0Em
         AwQdRHeF4l+d3spIRg86UQS8r9AWlUBFqm4hfgqFMCaKw9RF0bJk/7gccuJHCp0fE+jB
         zJMnMxpC+sGa2omZOpqoRmlwk2Zp2IB6ms9KPGFd4uAM/P8Gx4lJ6K8Pj24JNWR0DVQr
         8uujTkwJmsqJsQNQL3cnuIC2WwJvYhVMDXs+FqMgF087kpXjF9VUWcWmiX2OLYalhPzp
         Q3pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0c4UWeekApbL7DZsoOW6pjpffqqTIji+nLFUhne93cZBr5RhHZ
	bYodgAOp2V6hcz4rKyWRUqQ=
X-Google-Smtp-Source: ADFU+vtKOQoxui/VT0wqDI5lSaEqmpFQUagoudn8jY1U0eP3uF43mcln3iH0tVLK4iCqtAGlD/I++g==
X-Received: by 2002:a05:6e02:f43:: with SMTP id y3mr14435927ilj.112.1585313093607;
        Fri, 27 Mar 2020 05:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d391:: with SMTP id o17ls1350255ilo.10.gmail; Fri, 27
 Mar 2020 05:44:53 -0700 (PDT)
X-Received: by 2002:a92:d490:: with SMTP id p16mr13963185ilg.300.1585313093208;
        Fri, 27 Mar 2020 05:44:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585313093; cv=none;
        d=google.com; s=arc-20160816;
        b=NKkxZbRUeTm7IV2cjHuwbzY7ei8+egPLnIdG+8L7MDwsgm2VswSXDvIS+vBjZT5DI8
         hTDB4GQqW1OBT4GMslCPm7BBnPhT1DSA6Wwv7QJ9XkDr3oSh9Z4C53CQ4S00IfAyr2gU
         bTSgpxIHPlkVaFgy+Xdl5v8lUEi9BJPfUMTGl9ZsLMHbrXQkuXUej0DCGn6mYx5DCS4T
         mP/C4odVMDzAZYyeHMPKezJI1wN4hWz59HJiABrYRq+9vCsger+J7gXORt2ec7yV4Y5+
         yIKuoa8gPUECG90FkfOyxP1foWhJ+zflfALUvAEj2G/hL7rfbRS0Gbk+k1T9DOzhr7+w
         elfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=tknk/aeFPPGseyHj0/8JvKYKQtZ/6r+p9Q/LKWlKMEo=;
        b=Zi9PGKysznwxKj7wzGe6k99Pze5bKwjYqY0xkKe0nQgN+AolI8DGAka8d1nBhS6Csu
         S4mu/ECmMCQnSBsVnxsib9Hu69qaxawOHhMSpB/tdUl9Bsu8zvlQt6e5KLyfS1NtFvoA
         wKOiyFxsR2+hINJe4sslKiJmB8LzkiXAeIP8/q+aaKjWdvZWo3Co2wpAG+CLihZ/wBdP
         cGrgsiiSxJKW7SeTzl7/leEDRhfsbSepVPsoAtNZN79trd/33mIRHrJhdPjUradwNus4
         N4s0S6AY0WLollXGLYQMfbZDRr9qtXS6hJN+HVr2a6zA7YdOa8Xvsa1z0KTsNfklyPDR
         0/vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=WqL89udz;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s201si334218ilc.0.2020.03.27.05.44.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 05:44:53 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id c12so573793plz.2
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 05:44:53 -0700 (PDT)
X-Received: by 2002:a17:90b:1985:: with SMTP id mv5mr5834535pjb.69.1585313091747;
        Fri, 27 Mar 2020 05:44:51 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id o20sm3709866pjr.35.2020.03.27.05.44.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 05:44:50 -0700 (PDT)
Message-ID: <5e7df542.1c69fb81.56067.e395@mx.google.com>
Date: Fri, 27 Mar 2020 05:44:50 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200327
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
X-Kernelci-Tree: next
Subject: next/master build: 227 builds: 14 failed, 213 passed, 21 errors,
 606 warnings (next-20200327)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=WqL89udz;       spf=neutral (google.com: 2607:f8b0:4864:20::643 is
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

next/master build: 227 builds: 14 failed, 213 passed, 21 errors, 606 warnin=
gs (next-20200327)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200327/

Tree: next
Branch: master
Git Describe: next-20200327
Git Commit: 975f7a88c64dfdfde014530730ba7a6f3141f773
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    allmodconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL
    mmp2_defconfig: (gcc-8) FAIL
    omap2plus_defconfig: (gcc-8) FAIL
    pxa168_defconfig: (gcc-8) FAIL
    pxa910_defconfig: (gcc-8) FAIL
    qcom_defconfig: (gcc-8) FAIL
    vf610m4_defconfig: (gcc-8) FAIL

mips:
    mtx1_defconfig: (gcc-8) FAIL

riscv:
    allnoconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

x86_64:
    defconfig: (clang-9) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (gcc-8): 2 errors
    allmodconfig (clang-9): 2 errors
    defconfig (gcc-8): 29 warnings
    defconfig (clang-9): 29 warnings
    defconfig (gcc-8): 29 warnings
    defconfig (gcc-8): 29 warnings
    defconfig (gcc-8): 29 warnings

arm:
    allmodconfig (gcc-8): 1 error, 17 warnings
    allmodconfig (clang-9): 1 error, 17 warnings
    aspeed_g4_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (clang-9): 4 warnings
    bcm2835_defconfig (gcc-8): 14 warnings
    cm_x300_defconfig (gcc-8): 2 warnings
    em_x270_defconfig (gcc-8): 2 warnings
    eseries_pxa_defconfig (gcc-8): 2 warnings
    mmp2_defconfig (gcc-8): 1 error
    multi_v5_defconfig (clang-9): 4 warnings
    multi_v5_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 36 warnings
    multi_v7_defconfig (clang-9): 38 warnings
    multi_v7_defconfig (gcc-8): 36 warnings
    multi_v7_defconfig (gcc-8): 36 warnings
    multi_v7_defconfig (gcc-8): 36 warnings
    multi_v7_defconfig (gcc-8): 37 warnings
    omap2plus_defconfig (gcc-8): 1 error
    pxa168_defconfig (gcc-8): 1 error
    pxa910_defconfig (gcc-8): 1 error
    pxa_defconfig (gcc-8): 6 warnings
    qcom_defconfig (gcc-8): 1 error
    u8500_defconfig (gcc-8): 18 warnings
    vf610m4_defconfig (gcc-8): 4 errors, 5 warnings

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
    rv32_defconfig (gcc-8): 6 warnings
    tinyconfig (gcc-8): 1 error

x86_64:
    allmodconfig (clang-9): 4 warnings
    defconfig (clang-9): 2 errors
    tinyconfig (gcc-8): 1 warning

Errors summary:

    2    drivers/remoteproc/omap_remoteproc.c:174:2: error: too many argume=
nts to function =E2=80=98timer->timer_ops->set_load=E2=80=99
    2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98sp=
in_lock=E2=80=99?
    2    ERROR: modpost: "mtk_mmsys_ddp_disconnect" [drivers/gpu/drm/mediat=
ek/mediatek-drm.ko] undefined!
    2    ERROR: modpost: "mtk_mmsys_ddp_connect" [drivers/gpu/drm/mediatek/=
mediatek-drm.ko] undefined!
    2    /mnt/resource/workspace/workspace/kernel-build@7/linux/build/../dr=
ivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
    1    drivers/remoteproc/omap_remoteproc.c:174:44: error: too many argum=
ents to function call, expected 2, have 3
    1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argume=
nt list invoking macro "BUG_ON"
    1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=
=98;=E2=80=99 at end of input
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=
=E2=80=99 undeclared (first use in this function)
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declarat=
ion or statement at end of input
    1    clang: error: assembler command failed with exit code 1 (use -v to=
 see invocation)
    1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_=
core.ko] undefined!
    1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] u=
ndefined!
    1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!
    1    /tmp/cpudeadline-de66c1.s:76: Error: `%ecx' not allowed with `orb'
    1    /home/buildslave/workspace/workspace/kernel-build@7/linux/build/..=
/drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'

Warnings summary:

    125  <stdin>:1520:2: warning: #warning syscall process_madvise not impl=
emented [-Wcpp]
    98   arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_fo=
rmat): /soc/firmware:dma-ranges: empty "dma-ranges" property but its #addre=
ss-cells (2) differs from /soc (1)
    80   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
    25   scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warning=
 (dma_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" property=
 but its #address-cells (2) differs from /soc (1)
    15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    14   arch/arm/boot/dts/ste-href-stuib.dtsi:205.6-16: Warning (reg_forma=
t): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length =
(4 bytes) (#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    14   arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid=
_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on defa=
ult #size-cells value
    14   arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid=
_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on defa=
ult #address-cells value
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
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    7    arch/arm/boot/dts/ste-ux500-samsung-skomer.dts:377.6-16: Warning (=
reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invali=
d length (4 bytes) (#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    7    arch/arm/boot/dts/ste-ux500-samsung-skomer.dts:374.11-387.7: Warni=
ng (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relyin=
g on default #size-cells value
    7    arch/arm/boot/dts/ste-ux500-samsung-skomer.dts:374.11-387.7: Warni=
ng (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relyin=
g on default #address-cells value
    7    arch/arm/boot/dts/ste-ux500-samsung-skomer.dtb: Warning (spi_bus_r=
eg): Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-ux500-samsung-skomer.dtb: Warning (pci_devic=
e_bus_num): Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-ux500-samsung-skomer.dtb: Warning (i2c_bus_r=
eg): Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-hrefv60plus-stuib.dtb: Warning (spi_bus_reg)=
: Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-hrefv60plus-stuib.dtb: Warning (pci_device_b=
us_num): Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-hrefv60plus-stuib.dtb: Warning (i2c_bus_reg)=
: Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-hrefprev60-stuib.dtb: Warning (spi_bus_reg):=
 Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-hrefprev60-stuib.dtb: Warning (pci_device_bu=
s_num): Failed prerequisite 'reg_format'
    7    arch/arm/boot/dts/ste-hrefprev60-stuib.dtb: Warning (i2c_bus_reg):=
 Failed prerequisite 'reg_format'
    6    1 warning generated.
    5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    #warning This code requires at least version 4.6 of GCC
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size=
 of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame si=
ze of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-th=
an=3D]
    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=E2=
=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but ar=
gument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5648 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6:=
 warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame s=
ize of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
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
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1fa: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
f8: call to memset() with UACCESS enabled
    1    arch/mips/configs/ci20_defconfig:178:warning: override: reassignin=
g to symbol LEDS_TRIGGER_ONESHOT
    1    2 warnings generated.
    1    /tmp/test-arm-3e6297.s:18788: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-3e6297.s:18713: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/ccFUnozp.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccFUnozp.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1164:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ...mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call =
to __stack_chk_fail() with UACCESS enabled
    1    ........arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_=
rt_frame()+0x1ef: call to memset() with UACCESS enabled

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()
    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mismat=
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
clang-built-linux/5e7df542.1c69fb81.56067.e395%40mx.google.com.
